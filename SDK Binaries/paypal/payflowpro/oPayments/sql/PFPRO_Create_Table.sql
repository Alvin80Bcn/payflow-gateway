CREATE TABLE PFPRO_EXTEND_DATA (
TANGIBLEID VARCHAR2(80) NOT NULL,
PAYEEID VARCHAR2(80) NOT NULL,
TENDER VARCHAR2(1) NOT NULL,
TRXNTYPEID NUMBER(15) NOT NULL,
ABA VARCHAR2(9),
BANKACCTTYPE VARCHAR2(1),
ADDLMSGS VARCHAR2(1048),
AUTHENTICATION_ID VARCHAR2(64),
AUTHENTICATION_STATUS VARCHAR2(1),
AVSADDR VARCHAR2(1),
AVSZIP VARCHAR2(1),
BILLTOPHONE2 VARCHAR2(30),
BILLTOSTREET2 VARCHAR2(150),
BROWSERCOUNTRYCODE VARCHAR2(4),
BROWSERTIME VARCHAR2(40),
BROWSERUSERAGENT VARCHAR2(255),
BUYERAUTHSTATUS VARCHAR2(1),
CARDSECURE VARCHAR2(1),
CARRIER VARCHAR2(10),
CAVV VARCHAR2(64),
CHKNUM VARCHAR2(8),
CHKTYPE VARCHAR2(1),
COMMCARD VARCHAR2(1),
COMMENT1 VARCHAR2(255),
COMMENT2 VARCHAR2(255),
CORPNAME VARCHAR2(40),
CORPPURCHDESC VARCHAR2(80),
COUNTRYCODE VARCHAR2(4),
CURRENCY VARCHAR2(3),
CUSTAGE NUMBER(10),
CUSTCODE VARCHAR2(30),
CUSTID VARCHAR2(200),
CUSTIP VARCHAR2(15),
CUSTMAXAGE NUMBER(10),
CUSTMINAGE NUMBER(10),
CUSTREF VARCHAR2(12),
CUSTTM VARCHAR2(10),
CVV2 VARCHAR2(4),
CVV2MATCH VARCHAR2(1),
DESCR VARCHAR2(80),
DESC1 VARCHAR2(80),
DESC2 VARCHAR2(80),
DESC3 VARCHAR2(80),
DESC4 VARCHAR2(80),
SHIPTOCOUNTRY VARCHAR2(4),
DISCOUNT NUMBER(15,2),
DL VARCHAR2(35),
DOB VARCHAR2(10),
DUTYAMT NUMBER(15,2),
ECI VARCHAR2(2),
EMAIL VARCHAR2(120),
ENDTIME VARCHAR2(20),
FAX VARCHAR2(20),
FIRSTNAME VARCHAR2(30),
FORGOTPWD VARCHAR2(10),
FPS_POSTXMLDATA BLOB,
FPS_PREXMLDATA BLOB,
FREIGHTAMT NUMBER(15,2),
GIFTCARDTYPE VARCHAR2(10),
GIFTMSG VARCHAR2(180),
HANDLINGAMT NUMBER(15,2),
HOMEPHONE VARCHAR2(30),
HOSTCODE VARCHAR2(20),
IAVS VARCHAR2(10),
INVNUM VARCHAR2(20),
INVOICEDATE VARCHAR2(8),
LASTNAME VARCHAR2(30),
MERCHDESCR VARCHAR2(22),
MERCHSVC VARCHAR2(20),
MICR VARCHAR2(35),
NAME VARCHAR2(80),
ORDERBIN VARCHAR2(10),
ORDERDATETIME VARCHAR2(19),
ORIGID VARCHAR2(12),
PASSWORDGIVEN VARCHAR2(10),
PHONENUM VARCHAR2(20),
PONUM VARCHAR2(40),
POSTFPSMSG VARCHAR2(100),
PREFPSMSG VARCHAR2(100),
PRENOTE VARCHAR2(1),
PREVIOUSCUST VARCHAR2(10),
PREVTRXNTYPEID VARCHAR2(15),
PROCAVS VARCHAR2(1),
PROCCARDSECURE VARCHAR2(1),
PROCCVV2 VARCHAR2(1),
PROCESSORSTATUS VARCHAR2(10),
PUR_DESC VARCHAR2(80),
RECURRING VARCHAR2(1),
REGLOYALTY VARCHAR2(10),
REGPROMO VARCHAR2(10),
REQNAME VARCHAR2(40),
RESPMSG VARCHAR2(256),
RESPTEXT VARCHAR2(17),
RESULT VARCHAR2(9),
RETURNALLOWED VARCHAR2(10),
SHIPCARRIER VARCHAR2(200),
SHIPMENTNO VARCHAR2(20),
SHIPMETHOD VARCHAR2(10),
SHIPTOCITY VARCHAR2(45),
SHIPTOEMAIL VARCHAR2(120),
SHIPTOFIRSTNAME VARCHAR2(30),
SHIPTOLASTNAME VARCHAR2(30),
SHIPTOMIDDLENAME VARCHAR2(30),
SHIPTOPHONE VARCHAR2(30),
SHIPTOPHONE2 VARCHAR2(20),
SHIPTOSTATE VARCHAR2(45),
SHIPTOSTREET VARCHAR2(150),
SHIPTOSTREET2 VARCHAR2(150),
SHIPTOZIP VARCHAR2(20),
SHIPFROMZIP VARCHAR2(10),
SS VARCHAR2(35),
SSN VARCHAR2(35),
STARTTIME VARCHAR2(20),
STATUS VARCHAR2(15),
SUBTOTAL NUMBER(15,2),
SWIPE VARCHAR2(80),
TAXEXEMPT VARCHAR2(1),
TAXAMT NUMBER(15,2),
VATTAXAMT NUMBER(15,2),
AUTHTYPE VARCHAR2(10),
COMPANYNAME VARCHAR2(30),
LOCALTAXAMT NUMBER(15,2),
NATIONALTAXAMT NUMBER(15,2),
ALTTAXAMT NUMBER(15,2),
VATREGNUM VARCHAR2(20),
CUSTVATREGNUM VARCHAR2(13),
VATTAXPERCENT NUMBER(4,2),
TERMCITY VARCHAR2(45),
TERMSTATE VARCHAR2(45),
VERBOSITY VARCHAR2(10),
WRAPPED VARCHAR2(10),
XID VARCHAR2(64),
PAYFLOWVENDOR VARCHAR2(50),
PAYFLOWPARTNER VARCHAR2(50),
PAYFLOWUSER VARCHAR2(50),
PAYFLOWPASSWORD VARCHAR2(50),
DSGUID VARCHAR2(100),
AUTHCODE VARCHAR2(10),
DUPLICATE VARCHAR2(2),
COMMCODE VARCHAR2(4),
PRIMARY KEY(TANGIBLEID));


CREATE TABLE PFPRO_EXTEND_LINEITEM_DATA (
TANGIBLEID VARCHAR2(80) NOT NULL,
LINEITEMNUMBER NUMBER(9) NOT NULL,
L_AMT NUMBER(15,2),
L_CATEGORY VARCHAR2(100),
L_COST NUMBER(15,2),
L_DESC VARCHAR2(80),
L_DISCOUNT NUMBER(15,2),
L_MANUFACTURER VARCHAR2(100),
L_PRODCODE VARCHAR2(30),
L_QTY NUMBER(9),
L_SKU VARCHAR2(100),
L_TAXAMT NUMBER(15,2),
L_TAXRATE NUMBER(4,2),
L_TAXTYPE VARCHAR2(4),
L_TYPE VARCHAR2(100),
L_UOM VARCHAR2(3),
L_UPC VARCHAR2(30),
L_COMMCODE VARCHAR2(12),
L_FREIGHTAMT NUMBER(15,2),
L_HANDLINGAMT NUMBER(15,2),
L_TRACKINGNUM VARCHAR2(30),
L_PICKUPSTREET VARCHAR2(150),
L_PICKUPCITY VARCHAR2(45),
L_PICKUPSTATE VARCHAR2(45),
L_PICKUPZIP VARCHAR2(10),
L_PICKUPCOUNTRY VARCHAR2(4),
L_UNSPSCCODE VARCHAR2(30),
L_WEIGHTUOM VARCHAR2(3),
L_HANDLINGUOM VARCHAR2(3),
L_FREIGHTUOM VARCHAR2(3),
L_COSTCENTERNUM VARCHAR2(30),
L_CATALOGNUM VARCHAR2(20),
L_BILLEDUOM VARCHAR2(3),
FOREIGN KEY(TANGIBLEID) REFERENCES PFPRO_EXTEND_DATA,
PRIMARY KEY(TANGIBLEID,LINEITEMNUMBER));