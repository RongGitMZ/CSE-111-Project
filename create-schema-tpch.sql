PRAGMA foreign_keys = ON; -- enables foreign key in sqlite

CREATE TABLE wlocation(
    w_wlocationkey decimal(2,0) NOT NULL,
    w_name char(25) NOT NULL,
    w_comment varchar(152),

    PRIMARY KEY (w_wlocationkey)
);

CREATE TABLE product(
    p_partkey decimal(10,0) NOT NULL,
    p_name varchar(55) NOT NULL,
    p_mfgr char(25) NOT NULL,
    p_brand char(10) NOT NULL,
    p_type varchar(25) NOT NULL,
    p_retailprice decimal(7,2) NOT NULL,
        CHECK (p_retailprice >= 0), --prevents negative prices
    p_comment varchar(23) NOT NULL,

    PRIMARY KEY (p_partkey)
);

CREATE TABLE supplier(
    s_suppkey decimal(8,0) NOT NULL,
    s_name char(25) NOT NULL,
    s_address varchar(40) NOT NULL,
    s_phone char(15) NOT NULL,
    s_acctbal decimal(7,2) NOT NULL,
    s_comment varchar(101) NOT NULL,

    PRIMARY KEY (s_suppkey)
);

CREATE TABLE membership(
    m_membershipkey decimal(2,0) NOT NULL,
    m_name varchar(25) NOT NULL UNIQUE, -- UNIQUE prevents duplicate membership names
    m_annualfee decimal(6,2) NOT NULL,
    m_description varchar(100),

    PRIMARY KEY (m_membershipkey)
);

CREATE TABLE customer(
    c_custkey decimal(9,0) NOT NULL,
    c_name varchar(25) NOT NULL,
    c_address varchar(40) NOT NULL,
    c_phone char(15) NOT NULL,
    c_membershipkey decimal(2,0) NOT NULL,
    c_acctbal decimal(7,2) NOT NULL,
    c_mktsegment char(10) NOT NULL,
    c_comment varchar(117) NOT NULL,

    PRIMARY KEY (c_custkey),

    FOREIGN KEY (c_membershipkey)
        REFERENCES membership(m_membershipkey)
        
        --prevent deleting a membership used by customers
        ON DELETE RESTRICT
        --update customer records if a membership ID changes
        ON UPDATE CASCADE
);

CREATE TABLE productsupply(
    ps_prodkey decimal(10,0) NOT NULL,
    ps_suppkey decimal(8,0) NOT NULL,
    ps_wlocationkey decimal(2,0) NOT NULL,
    ps_availqty decimal(5,0) NOT NULL DEFAULT 0,
        CHECK (ps_availqty >= 0), --prevents negative available quantities
    ps_resuppcost decimal(6,2) NOT NULL,
    ps_comment varchar(199) NOT NULL,

    PRIMARY KEY (
        ps_prodkey,
        ps_suppkey,
        ps_wlocationkey
    ),

    FOREIGN KEY (ps_prodkey)
        REFERENCES product(p_partkey)

        -- Remove supply records if the product is deleted.
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    FOREIGN KEY (ps_suppkey)
        REFERENCES supplier(s_suppkey)
        -- Remove supply records if the supplier is deleted.
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    FOREIGN KEY (ps_wlocationkey)
        REFERENCES wlocation(w_wlocationkey)

         -- Remove supply records if the warehouse is deleted.
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE sales(
    s_orderkey decimal(12,0) NOT NULL,
    s_custkey decimal(9,0) NOT NULL,
    s_wlocationkey decimal(2,0) NOT NULL,

    -- DEFAULT marks new orders as Pending (P).
    s_orderstatus char(1) NOT NULL DEFAULT 'P',

    s_totalprice decimal(8,2) NOT NULL,
    s_orderdate date NOT NULL,
    s_orderpriority char(15) NOT NULL,
    s_clerk char(15) NOT NULL,
    s_comment varchar(79) NOT NULL,

    PRIMARY KEY (s_orderkey),

    FOREIGN KEY (s_custkey)
        REFERENCES customer(c_custkey)
        -- Prevent deleting customers who have sales records.
        ON DELETE RESTRICT
        ON UPDATE CASCADE,

    FOREIGN KEY (s_wlocationkey)
        REFERENCES wlocation(w_wlocationkey)
         -- Prevent deleting warehouses with existing sales.
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

CREATE TABLE saleitems(
    si_orderkey decimal(12,0) NOT NULL,
    si_prodkey decimal(10,0) NOT NULL,

    -- CHECK requires at least one item per sale line.
    si_quantity decimal(5,0) NOT NULL
        CHECK (si_quantity > 0),

    si_unitprice decimal(7,2) NOT NULL,
    si_extendedprice decimal(8,2) NOT NULL,
    si_comment varchar(199),

    PRIMARY KEY (si_orderkey, si_prodkey),

    FOREIGN KEY (si_orderkey)
        REFERENCES sales(s_orderkey)

        -- Delete sale items if their order is deleted.
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    FOREIGN KEY (si_prodkey)
        REFERENCES product(p_partkey)

        -- Preserve sales history by preventing deletion
        -- of products that appear in existing sale items.
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);