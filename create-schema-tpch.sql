CREATE TABLE wlocation(
    w_wlocationkey decimal(2,0) NOT NULL,
    w_name char(25) NOT NULL,
    w_comment varchar(152)
);
CREATE TABLE product(
    p_partkey decimal(10,0) NOT NULL,
    p_name varchar(55) NOT NULL,
    p_mfgr char(25) NOT NULL,
    p_brand char(10) NOT NULL, /*may be removed*/
    p_type varchar(25) NOT NULL, /*may be removed*/
    p_retailprice decimal(7,2) NOT NULL, /*may be moved or removed*/
    p_comment varchar(23) NOT NULL
);
CREATE TABLE productsupply(
    ps_prodkey decimal(10,0) NOT NULL,
    ps_suppkey decimal(8,0) NOT NULL,
    ps_availqty decimal(5,0) NOT NULL,
    ps_resuppcost decimal(6,2) NOT NULL,
    ps_comment varchar(199) NOT NULL
);
CREATE TABLE customer(
    c_custkey decimal(9,0) NOT NULL,
    c_name varchar(25) NOT NULL,
    c_address varchar(40) NOT NULL,
    c_phone char(15) NOT NULL,
    c_membershipkey decimal(2,0) NOT NULL,
    c_acctbal decimal(7,2) NOT NULL,
    c_mktsegment char(10) NOT NULL,
    c_comment varchar(117) NOT NULL
);
CREATE TABLE sales(
    s_orderkey decimal(12,0) NOT NULL,
    s_custkey decimal(9,0) NOT NULL,
    s_orderstatus char(1) NOT NULL,
    s_totalprice decimal(8,2) NOT NULL,
    s_orderdate date NOT NULL,
    s_orderpriority char(15) NOT NULL,
    s_clerk char(15) NOT NULL,
    s_comment varchar(79) NOT NULL
);
CREATE TABLE saleitems(
    si_orderkey decimal(12,0) NOT NULL,
    si_prodkey decimal(10,0) NOT NULL,
    si_suppkey decimal(8,0) NOT NULL,
    si_quantity decimal(5,0) NOT NULL,
    si_extendedprice decimal(8,2) NOT NULL,
    si_comment varchar(199) NOT NULL
);
CREATE TABLE supplier(
    s_suppkey decimal(8,0) NOT NULL,
    s_name char(25) NOT NULL,
    s_address varchar(40) NOT NULL,
    s_phone char(15) NOT NULL,
    s_acctbal decimal(7,2) NOT NULL,
    s_comment varchar(101) NOT NULL
);

