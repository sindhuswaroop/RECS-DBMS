-- DDL Scripts

-- Configure role and warehouse
USE ROLE ACCOUNTADMIN;
USE WAREHOUSE COMPUTE_WH;

-- Create a database
CREATE OR REPLACE DATABASE RECS_DB;

-- Create a schema for codes
CREATE OR REPLACE SCHEMA CODES_SCHEMA;

-- Create a schema for recs data
CREATE OR REPLACE SCHEMA RECS_DB.RECS_DATA_SCHEMA;

-- Create type tables under codes schema
CREATE OR REPLACE TABLE RECS_DB.CODES_SCHEMA.STATES (
state_fips INT NOT NULL, 
state_postal VARCHAR(2) NOT NULL, 
state_name varchar(20) NOT NULL,
CONSTRAINT pkey_1 PRIMARY KEY (STATE_FIPS) NOT ENFORCED);

CREATE OR REPLACE TABLE RECS_DB.CODES_SCHEMA.TYPE_HDD30YR_PUB (
variable_name VARCHAR(20) NOT NULL, 
description VARCHAR(300) NOT NULL,
code INT NOT NULL,
CONSTRAINT pkey_1 PRIMARY KEY (code) NOT ENFORCED);

CREATE OR REPLACE TABLE RECS_DB.CODES_SCHEMA.TYPE_TYPEHUQ (
variable_name VARCHAR(20) NOT NULL, 
description VARCHAR(300) NOT NULL,
code INT NOT NULL,
code_desc VARCHAR(200),
CONSTRAINT pkey_1 PRIMARY KEY (code) NOT ENFORCED);

CREATE OR REPLACE TABLE RECS_DB.CODES_SCHEMA.TYPE_WALLTYPE (
variable_name VARCHAR(20) NOT NULL, 
description VARCHAR(300) NOT NULL,
code INT NOT NULL,
code_desc VARCHAR(200),
CONSTRAINT pkey_1 PRIMARY KEY (code) NOT ENFORCED);

CREATE OR REPLACE TABLE RECS_DB.CODES_SCHEMA.TYPE_ACEQUIPM_PUB (
variable_name VARCHAR(20) NOT NULL, 
description VARCHAR(300) NOT NULL,
code INT NOT NULL,
code_desc VARCHAR(200),
CONSTRAINT pkey_1 PRIMARY KEY (code) NOT ENFORCED);

CREATE OR REPLACE TABLE RECS_DB.CODES_SCHEMA.TYPE_FUELHEAT (
variable_name VARCHAR(20) NOT NULL, 
description VARCHAR(300) NOT NULL,
code INT NOT NULL,
code_desc VARCHAR(200),
CONSTRAINT pkey_1 PRIMARY KEY (code) NOT ENFORCED);

-- Create main data table under recs_data schema
CREATE OR REPLACE TABLE RECS_DB.RECS_DATA_SCHEMA.RECS_DATA (DOEID INT, REGIONC VARCHAR(255), DIVISION VARCHAR(255), STATE_FIPS INT, state_postal VARCHAR(255), state_name VARCHAR(255), BA_climate VARCHAR(255), IECC_climate_code VARCHAR(255), UATYP10 VARCHAR(255), HDD65 INT, CDD65 INT, HDD30YR_PUB INT, CDD30YR_PUB INT, TYPEHUQ INT, CELLAR INT, CRAWL INT, CONCRETE INT, BASEOTH INT, BASEFIN INT, ATTIC INT, ATTICFIN INT, STORIES INT, PRKGPLC1 INT, SIZEOFGARAGE INT, KOWNRENT INT, YEARMADERANGE INT, BEDROOMS INT, NCOMBATH INT, NHAFBATH INT, OTHROOMS INT, TOTROOMS INT, STUDIO INT, WALLTYPE INT, ROOFTYPE INT, HIGHCEIL INT, DOOR1SUM INT, WINDOWS INT, TYPEGLASS INT, ORIGWIN INT, WINFRAME INT, TREESHAD INT, ADQINSUL INT, DRAFTY INT, UGASHERE INT, SWIMPOOL INT, MONPOOL INT, POOLPUMP INT, FUELPOOL INT, RECBATH INT, MONTUB INT, FUELTUB INT, NUMFRIG INT, SIZRFRI1 INT, TYPERFR1 INT, AGERFRI1 INT, ICE INT, SIZRFRI2 INT, TYPERFR2 INT, AGERFRI2 INT, LOCRFRI2 INT, WINECHILL INT, NUMFREEZ INT, UPRTFRZR INT, SIZFREEZ INT, FREEZER INT, AGEFRZR INT, RANGE INT, COOKTOP INT, OVEN INT, RANGEFUEL INT, RANGEINDT INT, RCOOKUSE INT, ROVENUSE INT, COOKTOPFUEL INT, COOKTOPINDT INT, COOKTOPUSE INT, OVENFUEL INT, OVENUSE INT, MICRO INT, AMTMICRO INT, OUTGRILLFUEL INT, OUTGRILL INT, NUMMEAL INT, USECOFFEE INT, TOAST INT, TOASTOVN INT, CROCKPOT INT, PRSSCOOK INT, RICECOOK INT, BLENDER INT, APPOTHER INT, ELFOOD INT, LPCOOK INT, UGCOOK INT, DISHWASH INT, DWASHUSE INT, DWCYCLE INT, AGEDW INT, CWASHER INT, TOPFRONT INT, WASHLOAD INT, WASHTEMP INT, AGECWASH INT, DRYER INT, DRYRFUEL INT, DRYRUSE INT, AGECDRYER INT, TVCOLOR INT, TVSIZE1 INT, TVTYPE1 INT, TVUSE1 INT, TVONWD1 FLOAT, TVONWE1 FLOAT, TVSIZE2 INT, TVTYPE2 INT, TVUSE2 INT, TVONWD2 FLOAT, TVONWE2 FLOAT, TVSIZE3 INT, TVTYPE3 INT, TVUSE3 INT, TVONWD3 FLOAT, TVONWE3 FLOAT, CABLESAT INT, COMBODVR INT, SEPDVR INT, INTSTREAM INT, PLAYSTA INT, DVD INT, VCR INT, TVAUDIOSYS INT, DESKTOP INT, NUMLAPTOP INT, NUMTABLET INT, ELPERIPH INT, NUMSMPHONE INT, CELLPHONE INT, TELLWORK INT, TELLDAYS INT, TLDESKTOP INT, TLLAPTOP INT, TLTABLET INT, TLMONITOR INT, TLOTHER INT, ONLNEDUC INT, INTERNET INT, INTYPECELL INT, INTYPEBROAD INT, INTYPEOTH INT, SMARTSPK INT, SSLIGHT INT, SSTEMP INT, SSSECURE INT, SSTV INT, SSOTHER INT, HEATHOME INT, DNTHEAT INT, HEATAPT INT, EQUIPM INT, FUELHEAT INT, EQUIPAGE INT, GEOHP INT, EQUIPAUXTYPE INT, EQUIPAUX INT, FUELAUX INT, USEEQUIPAUX INT, NUMPORTEL INT, NUMFIREPLC INT, NUMDLHP INT, BASEHEAT INT, ATTCHEAT INT, GARGHEAT INT, HUMIDTYPE INT, NUMPORTHUM INT, USEHUMID INT, ELWARM INT, UGWARM INT, LPWARM INT, FOWARM INT, WDWARM INT, AIRCOND INT, COOLAPT INT, ACEQUIPM_PUB INT, ACEQUIPAGE INT, ACEQUIPAUXTYPE_PUB INT, NUMDLHPAC INT, NUMWWAC INT, NUMPORTAC INT, BASECOOL INT, ATTCCOOL INT, GARGCOOL INT, NUMCFAN INT, NUMFLOORFAN INT, USECFAN INT, HOUSEFAN INT, ATTICFAN INT, DEHUMTYPE INT, NUMPORTDEHUM INT, USEDEHUM INT, ELCOOL INT, TYPETHERM INT, HEATCNTL INT, TEMPHOME INT, TEMPGONE INT, TEMPNITE INT, COOLCNTL INT, TEMPHOMEAC INT, TEMPGONEAC INT, TEMPNITEAC INT, H2OAPT INT, H2OMAIN INT, WHEATSIZ INT, WHEATBKT INT, WHEATAGE INT, FUELH2O INT, MORETHAN1H2O INT, FUELH2O2 INT, ELWATER INT, FOWATER INT, LPWATER INT, SOLWATER INT, WDWATER INT, UGWATER INT, LGTIN1TO4 INT, LGTIN4TO8 INT, LGTINMORE8 INT, LGTINLED INT, LGTINCFL INT, LGTINCAN INT, LGTOUTANY INT, LGTOUTNITE INT, LGTOUTLED INT, LGTOUTCFL INT, LGTOUTCAN INT, ELPAY INT, NGPAY INT, LPGPAY INT, FOPAY INT, SMARTMETER INT, INTDATAACC INT, MEDICALDEV FLOAT, POWEROUT INT, WHYPOWEROUT INT, BACKUP INT, SOLAR INT, ELOTHER INT, UGOTH INT, LPOTHER INT, FOOTHER INT, USEEL INT, USENG INT, USELP INT, USEFO INT, USESOLAR INT, USEWOOD INT, ALLELEC INT, HHSEX INT, HHAGE INT, EMPLOYHH INT, EDUCATION INT, SDESCENT INT, HOUSEHOLDER_RACE INT, NHSLDMEM INT, NUMCHILD INT, NUMADULT1 INT, NUMADULT2 INT, ATHOME INT, MONEYPY INT, SCALEB INT, SCALEG INT, SCALEE INT, PAYHELP INT, NOHEATBROKE INT, NOHEATEL INT, NOHEATNG INT, NOHEATBULK INT, NOHEATDAYS INT, NOHEATHELP INT, COLDMA INT, NOACBROKE INT, NOACEL INT, NOACDAYS INT, NOACHELP INT, HOTMA INT, ENERGYASST INT, ENERGYASST20 INT, ENERGYASST19 INT, ENERGYASST18 INT, ENERGYASST17 INT, ENERGYASST16 INT, ENERGYASSTOTH INT, SQFTEST INT, SQFTRANGE INT, SQFTINCB INT, SQFTINCA INT, SQFTINCG INT, TOTSQFT_EN INT, TOTHSQFT INT, TOTCSQFT INT, ZACEQUIPAGE INT, ZADQINSUL INT, ZAGECDRYER INT, ZAGECWASH INT, ZAGEDW INT, ZAGEFRZR INT, ZAGERFRI1 INT, ZAGERFRI2 INT, ZAIRCOND INT, ZAMTMICRO INT, ZATHOME INT, ZATTCCOOL INT, ZATTCHEAT INT, ZATTIC INT, ZATTICFAN INT, ZATTICFIN INT, ZBACKUP INT, ZBASECOOL INT, ZBASEFIN INT, ZBASEHEAT INT, ZBASEOTH INT, ZBEDROOMS INT, ZBLENDER INT, ZCABLESAT INT, ZCELLAR INT, ZCELLPHONE INT, ZCOLDMA INT, ZCOMBODVR INT, ZCONCRETE INT, ZCOOKTOP INT, ZCOOKTOPFUEL INT, ZCOOKTOPINDT INT, ZCOOKTOPUSE INT, ZCOOLAPT INT, ZCOOLCNTL INT, ZCRAWL INT, ZCROCKPOT INT, ZCWASHER INT, ZDEHUMTYPE INT, ZDESKTOP INT, ZDISHWASH INT, ZDOOR1SUM INT, ZDRAFTY INT, ZDRYER INT, ZDRYRFUEL INT, ZDRYRUSE INT, ZDVD INT, ZDWASHUSE INT, ZDWCYCLE INT, ZEDUCATION INT, ZELPAY INT, ZELPERIPH INT, ZEMPLOYHH INT, ZENERGYASST INT, ZENERGYASST16 INT, ZENERGYASST17 INT, ZENERGYASST18 INT, ZENERGYASST19 INT, ZENERGYASST20 INT, ZENERGYASSTOTH INT, ZEQUIPAGE INT, ZEQUIPAUXTYPE INT, ZEQUIPM INT, ZFOPAY INT, ZFREEZER INT, ZFUELAUX INT, ZFUELH2O INT, ZFUELH2O2 INT, ZFUELHEAT INT, ZFUELPOOL INT, ZFUELTUB INT, ZGARGCOOL INT, ZGARGHEAT INT, ZH2OAPT INT, ZH2OMAIN INT, ZHEATAPT INT, ZHEATCNTL INT, ZHEATHOME INT, ZHHAGE INT, ZHHSEX INT, ZHIGHCEIL INT, ZHOTMA INT, ZHOUSEFAN INT, ZHUMIDTYPE INT, ZICE INT, ZINTERNET INT, ZINTSTREAM INT, ZINTYPEBROAD INT, ZINTYPECELL INT, ZINTYPEOTH INT, ZKOWNRENT INT, ZLGTIN1TO4 INT, ZLGTIN4TO8 INT, ZLGTINCAN INT, ZLGTINCFL INT, ZLGTINLED INT, ZLGTINMORE8 INT, ZLGTOUTANY INT, ZLGTOUTCAN INT, ZLGTOUTCFL INT, ZLGTOUTLED INT, ZLGTOUTNITE INT, ZLOCRFRI2 INT, ZLPGPAY INT, ZMICRO INT, ZMONEYPY INT, ZMONPOOL INT, ZMONTUB INT, ZMORETHAN1H2O INT, ZNCOMBATH INT, ZNGPAY INT, ZNHAFBATH INT, ZNHSLDMEM INT, ZNOACBROKE INT, ZNOACDAYS INT, ZNOACEL INT, ZNOACHELP INT, ZNOHEATBROKE INT, ZNOHEATBULK INT, ZNOHEATDAYS INT, ZNOHEATEL INT, ZNOHEATHELP INT, ZNOHEATNG INT, ZNUMADULT1 INT, ZNUMADULT2 INT, ZNUMCFAN INT, ZNUMCHILD INT, ZNUMDLHP INT, ZNUMDLHPAC INT, ZNUMFIREPLC INT, ZNUMFLOORFAN INT, ZNUMFREEZ INT, ZNUMFRIG INT, ZNUMLAPTOP INT, ZNUMMEAL INT, ZNUMPORTAC INT, ZNUMPORTDEHUM INT, ZNUMPORTEL INT, ZNUMPORTHUM INT, ZNUMSMPHONE INT, ZNUMTABLET INT, ZNUMWWAC INT, ZONLNEDUC INT, ZORIGWIN INT, ZOTHROOMS INT, ZOUTGRILLFUEL INT, ZOUTLET INT, ZOVEN INT, ZOVENFUEL INT, ZOVENUSE INT, ZPAYHELP INT, ZPLAYSTA INT, ZPOOLPUMP INT, ZPOWEROUT INT, ZPRKGPLC1 INT, ZPRSSCOOK INT, ZRANGE INT, ZRANGEFUEL INT, ZRANGEINDT INT, ZRCOOKUSE INT, ZRECBATH INT, ZRICECOOK INT, ZROOFTYPE INT, ZROVENUSE INT, ZSCALEB INT, ZSCALEE INT, ZSCALEG INT, ZSDESCENT INT, ZSEPDVR INT, ZSIZEOFGARAGE INT, ZSIZFREEZ INT, ZSIZRFRI1 INT, ZSIZRFRI2 INT, ZSMARTSPK INT, ZSQFTEST INT, ZSQFTINCA INT, ZSQFTINCB INT, ZSQFTINCG INT, ZSQFTRANGE INT, ZSSLIGHT INT, ZSSOTHER INT, ZSSSECURE INT, ZSSTEMP INT, ZSSTV INT, ZSTORIES INT, ZSWIMPOOL INT, ZTELLDAYS INT, ZTELLWORK INT, ZTEMPGONE INT, ZTEMPGONEAC INT, ZTEMPHOME INT, ZTEMPHOMEAC INT, ZTEMPNITE INT, ZTEMPNITEAC INT, ZTLDESKTOP INT, ZTLLAPTOP INT, ZTLMONITOR INT, ZTLOTHER INT, ZTLTABLET INT, ZTOAST INT, ZTOASTOVN INT, ZTOPFRONT INT, ZTREESHAD INT, ZTVAUDIOSYS INT, ZTVCOLOR INT, ZTVONWD1 INT, ZTVONWD2 INT, ZTVONWD3 INT, ZTVONWE1 INT, ZTVONWE2 INT, ZTVONWE3 INT, ZTVSIZE1 INT, ZTVSIZE2 INT, ZTVSIZE3 INT, ZTVTYPE1 INT, ZTVTYPE2 INT, ZTVTYPE3 INT, ZTVUSE1 INT, ZTVUSE2 INT, ZTVUSE3 INT, ZTYPEGLASS INT, ZTYPERFR1 INT, ZTYPERFR2 INT, ZTYPETHERM INT, ZUGASHERE INT, ZUPRTFRZR INT, ZUSECFAN INT, ZUSECOFFEE INT, ZUSEDEHUM INT, ZUSEEQUIPAUX INT, ZUSEHUMID INT, ZVCR INT, ZWALLTYPE INT, ZWASHLOAD INT, ZWASHTEMP INT, ZWHEATAGE INT, ZWHEATBKT INT, ZWHEATSIZ INT, ZWHYPOWEROUT INT, ZWINDOWS INT, ZWINECHILL INT, ZWINFRAME INT, ZYEARMADERANGE INT, ZTOTROOMS INT, ZDNTHEAT INT, ZTYPEHUQ INT, ZSTUDIO INT, ZOUTGRILL INT, ZHOUSEHOLDER_RACE INT, ZACEQUIPM_PUB INT, ZACEQUIPAUXTYPE_PUB INT, NWEIGHT FLOAT, NWEIGHT1 FLOAT, NWEIGHT2 FLOAT, NWEIGHT3 FLOAT, NWEIGHT4 FLOAT, NWEIGHT5 FLOAT, NWEIGHT6 FLOAT, NWEIGHT7 FLOAT, NWEIGHT8 FLOAT, NWEIGHT9 FLOAT, NWEIGHT10 FLOAT, NWEIGHT11 FLOAT, NWEIGHT12 FLOAT, NWEIGHT13 FLOAT, NWEIGHT14 FLOAT, NWEIGHT15 FLOAT, NWEIGHT16 FLOAT, NWEIGHT17 FLOAT, NWEIGHT18 FLOAT, NWEIGHT19 FLOAT, NWEIGHT20 FLOAT, NWEIGHT21 FLOAT, NWEIGHT22 FLOAT, NWEIGHT23 FLOAT, NWEIGHT24 FLOAT, NWEIGHT25 FLOAT, NWEIGHT26 FLOAT, NWEIGHT27 FLOAT, NWEIGHT28 FLOAT, NWEIGHT29 FLOAT, NWEIGHT30 FLOAT, NWEIGHT31 FLOAT, NWEIGHT32 FLOAT, NWEIGHT33 FLOAT, NWEIGHT34 FLOAT, NWEIGHT35 FLOAT, NWEIGHT36 FLOAT, NWEIGHT37 FLOAT, NWEIGHT38 FLOAT, NWEIGHT39 FLOAT, NWEIGHT40 FLOAT, NWEIGHT41 FLOAT, NWEIGHT42 FLOAT, NWEIGHT43 FLOAT, NWEIGHT44 FLOAT, NWEIGHT45 FLOAT, NWEIGHT46 FLOAT, NWEIGHT47 FLOAT, NWEIGHT48 FLOAT, NWEIGHT49 FLOAT, NWEIGHT50 FLOAT, NWEIGHT51 FLOAT, NWEIGHT52 FLOAT, NWEIGHT53 FLOAT, NWEIGHT54 FLOAT, NWEIGHT55 FLOAT, NWEIGHT56 FLOAT, NWEIGHT57 FLOAT, NWEIGHT58 FLOAT, NWEIGHT59 FLOAT, NWEIGHT60 FLOAT, KWH FLOAT, BTUEL FLOAT, DOLLAREL FLOAT, ELXBTU FLOAT, PERIODEL INT, ZELAMOUNT INT, KWHSPH FLOAT, KWHCOL FLOAT, KWHWTH FLOAT, KWHRFG FLOAT, KWHRFG1 FLOAT, KWHRFG2 FLOAT, KWHFRZ FLOAT, KWHCOK FLOAT, KWHMICRO FLOAT, KWHCW FLOAT, KWHCDR FLOAT, KWHDWH FLOAT, KWHLGT FLOAT, KWHTVREL FLOAT, KWHTV1 FLOAT, KWHTV2 FLOAT, KWHTV3 FLOAT, KWHAHUHEAT FLOAT, KWHAHUCOL FLOAT, KWHCFAN FLOAT, KWHDHUM FLOAT, KWHHUM FLOAT, KWHPLPMP FLOAT, KWHHTBPMP FLOAT, KWHHTBHEAT FLOAT, KWHEVCHRG FLOAT, KWHNEC FLOAT, KWHOTH FLOAT, BTUELSPH FLOAT, BTUELCOL FLOAT, BTUELWTH FLOAT, BTUELRFG FLOAT, BTUELRFG1 FLOAT, BTUELRFG2 FLOAT, BTUELFRZ FLOAT, BTUELCOK FLOAT, BTUELMICRO FLOAT, BTUELCW FLOAT, BTUELCDR FLOAT, BTUELDWH FLOAT, BTUELLGT FLOAT, BTUELTVREL FLOAT, BTUELTV1 FLOAT, BTUELTV2 FLOAT, BTUELTV3 FLOAT, BTUELAHUHEAT FLOAT, BTUELAHUCOL FLOAT, BTUELCFAN FLOAT, BTUELDHUM FLOAT, BTUELHUM FLOAT, BTUELPLPMP FLOAT, BTUELHTBPMP FLOAT, BTUELHTBHEAT FLOAT, BTUELEVCHRG FLOAT, BTUELNEC FLOAT, BTUELOTH FLOAT, DOLELSPH FLOAT, DOLELCOL FLOAT, DOLELWTH FLOAT, DOLELRFG FLOAT, DOLELRFG1 FLOAT, DOLELRFG2 FLOAT, DOLELFRZ FLOAT, DOLELCOK FLOAT, DOLELMICRO FLOAT, DOLELCW FLOAT, DOLELCDR FLOAT, DOLELDWH FLOAT, DOLELLGT FLOAT, DOLELTVREL FLOAT, DOLELTV1 FLOAT, DOLELTV2 FLOAT, DOLELTV3 FLOAT, DOLELAHUHEAT FLOAT, DOLELAHUCOL FLOAT, DOLELCFAN FLOAT, DOLELDHUM FLOAT, DOLELHUM FLOAT, DOLELPLPMP FLOAT, DOLELHTBPMP FLOAT, DOLELHTBHEAT FLOAT, DOLELEVCHRG FLOAT, DOLELNEC FLOAT, DOLELOTH FLOAT, CUFEETNG FLOAT, BTUNG FLOAT, DOLLARNG FLOAT, NGXBTU FLOAT, PERIODNG INT, ZNGAMOUNT INT, BTUNGSPH FLOAT, BTUNGWTH FLOAT, BTUNGCOK FLOAT, BTUNGCDR FLOAT, BTUNGPLHEAT FLOAT, BTUNGHTBHEAT FLOAT, BTUNGNEC FLOAT, BTUNGOTH FLOAT, CUFEETNGSPH FLOAT, CUFEETNGWTH FLOAT, CUFEETNGCOK FLOAT, CUFEETNGCDR FLOAT, CUFEETNGPLHEAT FLOAT, CUFEETNGHTBHEAT FLOAT, CUFEETNGNEC FLOAT, CUFEETNGOTH FLOAT, DOLNGSPH FLOAT, DOLNGWTH FLOAT, DOLNGCOK FLOAT, DOLNGCDR FLOAT, DOLNGPLHEAT FLOAT, DOLNGHTBHEAT FLOAT, DOLNGNEC FLOAT, DOLNGOTH FLOAT, GALLONLP FLOAT, BTULP FLOAT, DOLLARLP FLOAT, LPXBTU FLOAT, PERIODLP INT, ZLPAMOUNT INT, BTULPSPH FLOAT, BTULPWTH FLOAT, BTULPCOK FLOAT, BTULPCDR FLOAT, BTULPNEC FLOAT, BTULPOTH FLOAT, GALLONLPSPH FLOAT, GALLONLPWTH FLOAT, GALLONLPCOK FLOAT, GALLONLPCDR FLOAT, GALLONLPNEC FLOAT, GALLONLPOTH FLOAT, DOLLPSPH FLOAT, DOLLPWTH FLOAT, DOLLPCOK FLOAT, DOLLPCDR FLOAT, DOLLPNEC FLOAT, DOLLPOTH FLOAT, GALLONFO FLOAT, BTUFO FLOAT, DOLLARFO FLOAT, FOXBTU FLOAT, PERIODFO INT, ZFOAMOUNT INT, BTUFOSPH FLOAT, BTUFOWTH FLOAT, BTUFONEC FLOAT, BTUFOOTH FLOAT, GALLONFOSPH FLOAT, GALLONFOWTH FLOAT, GALLONFONEC FLOAT, GALLONFOOTH FLOAT, DOLFOSPH FLOAT, DOLFOWTH FLOAT, DOLFONEC FLOAT, DOLFOOTH FLOAT, BTUWD FLOAT, ZWDAMOUNT INT, TOTALBTUSPH FLOAT, TOTALDOLSPH FLOAT, TOTALBTUWTH FLOAT, TOTALDOLWTH FLOAT, TOTALBTUOTH FLOAT, TOTALDOLOTH FLOAT, TOTALBTU FLOAT, TOTALDOL FLOAT, DBT1 FLOAT, DBT99 FLOAT, GWT FLOAT, WOODTYPE INT, OUTLET INT, ELECVEH INT, EVCHRGHOME FLOAT, EVCHRGAPT INT, EVCHRGWKS FLOAT, EVCHRGBUS FLOAT, EVCHRGMUNI FLOAT, EVCHRGDLR FLOAT, EVCHRGHWY FLOAT, EVCHRGOTH FLOAT, EVHOMEAMT FLOAT, EVCHRGTYPE FLOAT, 
CONSTRAINT pkey_1 PRIMARY KEY (DOEID) NOT ENFORCED,
CONSTRAINT fkey_1 FOREIGN KEY (FUELHEAT) REFERENCES RECS_DB.CODES_SCHEMA.TYPE_FUELHEAT (code) NOT ENFORCED,
CONSTRAINT fkey_2 FOREIGN KEY (ACEQUIPM_PUB) REFERENCES RECS_DB.CODES_SCHEMA.TYPE_ACEQUIPM_PUB (code) NOT ENFORCED,
CONSTRAINT fkey_3 FOREIGN KEY (TYPEHUQ) REFERENCES RECS_DB.CODES_SCHEMA.TYPE_TYPEHUQ (code) NOT ENFORCED,
CONSTRAINT fkey_4 FOREIGN KEY (WALLTYPE) REFERENCES RECS_DB.CODES_SCHEMA.TYPE_WALLTYPE (code) NOT ENFORCED,
CONSTRAINT fkey_5 FOREIGN KEY (HDD30YR_PUB) REFERENCES RECS_DB.CODES_SCHEMA.TYPE_HDD30YR_PUB (code) NOT ENFORCED,
CONSTRAINT fkey_6 FOREIGN KEY (STATE_FIPS) REFERENCES RECS_DB.CODES_SCHEMA.STATES (STATE_FIPS) NOT ENFORCED);

-- Create a share
CREATE SHARE MY_SHARE;

-- Grant usage on the database to the share
GRANT USAGE ON DATABASE RECS_DB TO SHARE MY_SHARE;

-- Grant usage on the schema to the share
GRANT USAGE ON SCHEMA RECS_DB.CODES_SCHEMA TO SHARE MY_SHARE;
GRANT USAGE ON SCHEMA RECS_DB.RECS_DATA_SCHEMA TO SHARE MY_SHARE;

-- Grant access to the tables to the share
GRANT SELECT, UPDATE, INSERT, DELETE ON ALL TABLES IN SCHEMA RECS_DB.CODES_SCHEMA TO SHARE MY_SHARE;
GRANT SELECT, UPDATE, INSERT, DELETE ON ALL TABLES IN SCHEMA RECS_DB.RECS_DATA_SCHEMA TO SHARE MY_SHARE;

-- Add the reader account to the share
ALTER SHARE MY_SHARE ADD ACCOUNTS = rhjhrje.reader_account;