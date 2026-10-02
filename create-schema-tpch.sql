CREATE TABLE wlocation(
    w_wlocationkey decimal(2,0) NOT NULL,
    w_name char(25) NOT NULL,
    w_comment varchar(152)
);
CREATE TABLE prodsupp(
    ps_prodkey decimal(10,0) NOT NULL,
    ps_suppkey decimal(8,0) NOT NULL,
    ps_availqty decimal(5,0) NOT NULL,
    ps_suppcost decimal(6,2) NOT NULL, /*up for change*/
    ps_comment varchar(199) NOT NULL
);
CREATE TABLE customer(
    c_custkey decimal(9,0) NOT NULL,
    c_name varchar(25) NOT NULL,
    c_address varchar(40) NOT NULL,
    c_phone char(15) NOT NULL,
    c_priemium char(1) NOT NULL,
    c_acctbal decimal(7,2) NOT NULL,
    c_mktsegment char(10) NOT NULL,
    c_comment varchar(117) NOT NULL
);
Create TABLE orders(
    o_orderkey decimal(12,0) NOT NULL,
    o_custkey decimal(9,0) NOT NULL,
    o_orderstatus char(1) NOT NULL,
    o_totalprice decimal(8,2) NOT NULL,
    o_orderdate date NOT NULL,
    o_orderpriority char(15) NOT NULL,
    o_clerk char(15) NOT NULL,
    o_shippriority decimal(1,0) NOT NULL,
    o_comment varchar(79) NOT NULL
);
CREATE TABLE lineitem(
    l_orderkey decimal(12,0) NOT NULL,
    l_partkey decimal(10,0) NOT NULL,
    l_suppkey decimal(8,0) NOT NULL,
    l_linenumber decimal(1,0) NOT NULL,
    l_quantity decimal(2,0) NOT NULL,
    l_extendedprice decimal(8,2) NOT NULL,
    l_discount decimal(3,2) NOT NULL,
    l_tax decimal(3,2) NOT NULL,
    l_returnflag char(1) NOT NULL,
    l_linestatus char(1) NOT NULL,
    l_shipdate date NOT NULL,
    l_commitdate date NOT NULL,
    l_receiptdate date NOT NULL,
    l_shipinstruct char(25) NOT NULL,
    l_shipmode char(10) NOT NULL,
    l_comment varchar(44) NOT NULL
);
