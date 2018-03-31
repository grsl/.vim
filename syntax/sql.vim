"--------------------------------
"
"   Vi Syntax file.
"   Languag SQL
"   Maintainer Simon Long.
"   Email grslong@gmail.com
"
"--------------------------------

" *Error         any erroneous construct
" *Ignore        left blank, hidden  |hl-Ignore|
" Character      a character constant: 'c', '\n'    
" Define         preprocessor #define
" Exception      try, catch, throw
" Float          a floating point constant: 2.3e10
" Functions built in to MySQL
" Include        preprocessor #include
" Keyword        any other keyword
" Label          case, default, etc.
" Macro          same as Define
" Operator       "sizeof", "+", "*", etc.
" PreCondit      preprocessor #if, #else, #endif, etc.
" SpecialChar    special character in a constant
" SpecialComment special things inside a comment Debug debugging statements
" Structure struct, union, enum, etc.


" 47 = SpringGreen2
" 57 = BlueViolet
" 70 = Chartreause3
" 75 = SteelBlue1
:highlight Boolean          ctermfg=white   ctermbg=none    guifg=red
:highlight Character        ctermfg=red   ctermbg=none    guifg=red
:highlight Comment          ctermfg=70   ctermbg=none    guifg=red
:highlight Conditional      ctermfg=red   ctermbg=none    guifg=red
:highlight Constant         ctermfg=red   ctermbg=none    guifg=red
:highlight Debug            ctermfg=red   ctermbg=none    guifg=red
:highlight Define           ctermfg=red   ctermbg=none    guifg=red
:highlight Delimiter        ctermfg=47   ctermbg=none    guifg=red
:highlight Error            ctermfg=red   ctermbg=red    guifg=red
:highlight Exception        ctermfg=red   ctermbg=none    guifg=red
:highlight Float            ctermfg=red   ctermbg=none    guifg=red
:highlight Function         ctermfg=57     ctermbg=none    guifg=red
:highlight Identifier       ctermfg=red   ctermbg=none    guifg=red
:highlight Ignore           ctermfg=red   ctermbg=none    guifg=red
:highlight Include          ctermfg=red   ctermbg=none    guifg=red
:highlight Keyword          ctermfg=red   ctermbg=none    guifg=red
:highlight Label            ctermfg=red     ctermbg=none    guifg=red
:highlight Macro            ctermfg=red   ctermbg=none    guifg=red
:highlight Nontext          ctermfg=red   ctermbg=none    guifg=red
:highlight Number           ctermfg=red   ctermbg=none    guifg=red
:highlight Operator         ctermfg=red   ctermbg=none    guifg=red
:highlight PreCondit        ctermfg=red   ctermbg=none    guifg=red
:highlight PreProc          ctermfg=red   ctermbg=none    guifg=red
:highlight Repeat           ctermfg=red   ctermbg=none    guifg=red
:highlight Special          ctermfg=red   ctermbg=none    guifg=red
:highlight SpecialChar      ctermfg=red   ctermbg=none    guifg=red
:highlight SpecialComment   ctermfg=red   ctermbg=none    guifg=red
:highlight Statement        ctermfg=red   ctermbg=none    guifg=red
:highlight StorageClass     ctermfg=red   ctermbg=none    guifg=red
:highlight String           ctermfg=red   ctermbg=none    guifg=red
:highlight Structure        ctermfg=red   ctermbg=none    guifg=red
:highlight Tag              ctermfg=75   ctermbg=none    guifg=red
:highlight Todo             ctermfg=red   ctermbg=none    guifg=red
:highlight Type             ctermfg=red     ctermbg=none    guifg=red
:highlight Typedef          ctermfg=red   ctermbg=none    guifg=red
:highlight Underlined       ctermfg=red   ctermbg=none    guifg=red

" Keywords

syn match sqlCharacter '"\w\+"'
syn match sqlCharacter "\w\+"

" syn keyword sqlConditional
syn keyword sqlConstant Innodb
syn match sqlConstant "\<utf8.\+\>" 
" syn keyword sqlDebug
" syn keyword sqlDefine
" syn keyword sqlException
" syn keyword sqlFloat yyp
syn match sqlFloat "\d"
    
syn keyword sqlDelimiter DELIMITER
syn match sqlDelimiter "//"
syn match sqlDelimiter ";"

syn keyword sqlError TRY CATCH THROW
syn match sqlError "\s\+$"

syn match sqlOperator "\v\("
syn match sqlOperator "\v\)"
syn match sqlOperator "\v\=" 
syn match sqlOperator "\v\*"
syn match sqlOperator "\v\+"
syn match sqlOperator "\v\-"
syn match sqlOperator "\v\-\>"
syn match sqlOperator "\v\>\>"
syn match sqlOperator "\v\-\>\>"
syn match sqlOperator "\v\>"
syn match sqlOperator "\v\>\="
syn match sqlOperator "\v\<"
syn match sqlOperator "\v\<\>"
syn match sqlOperator "\v\<\<"
syn match sqlOperator "\v\<\="
syn match sqlOperator "\v\/"
syn match sqlOperator "\v\&"
syn match sqlOperator "\v\!\=" 
syn match sqlOperator "\v\:\="

syn match sqlOperator "\."

" syn sqlFunction
" BETWEEN ... AND ...
" COUNT(DISTINCT)
syn keyword sqlFunction ABS ACOS ADDDATE ADDTIME AES_DECRYPT AES_ENCRYPT AND &&
syn keyword sqlFunction ANY_VALUE ASCII ASIN ATAN ATAN2 AVG BENCHMARK BIN BINARY
syn keyword sqlFunction BIN_TO_UUID BIT_AND BIT_COUNT BIT_LENGTH BIT_OR BIT_XOR
syn keyword sqlFunction CAN_ACCESS_COLUMN CAN_ACCESS_DATABASE CAN_ACCESS_TABLE
syn keyword sqlFunction CAN_ACCESS_VIEW CASE CASE CAST CEIL CEILING
syn keyword sqlFunction CHARACTER_LENGTH CHARSET CHAR_LENGTH COALESCE COERCIBILITY
syn keyword sqlFunction COLLATION COMPRESS CONCAT CONCAT_WS CONNECTION_ID CONV CONVERT
syn keyword sqlFunction CONVERT_TZ COS COT COUNT CRC32 CUME_DIST CURDATE CURRENT_DATE
syn keyword sqlFunction CURRENT_ROLE CURRENT_TIME CURRENT_TIMESTAMP CURRENT_USER CURTIME
syn keyword sqlFunction DATABASE DATE DATEDIFF DATE_ADD DATE_FORMAT DATE_SUB DAY DAYNAME
syn keyword sqlFunction DAYOFMONTH DAYOFWEEK DAYOFYEAR DECODE DEFAULT DEGREES DENSE_RANK
syn keyword sqlFunction DES_DECRYPT DES_ENCRYPT DIV
syn keyword sqlFunction ELT ENCODE ENCRYPT EXP EXPORT_SET EXTRACT ExtractValue EACH ELSE ELSEIF
syn keyword sqlFunction FIELD FIND_IN_SET FIRST_VALUE FLOOR FORMAT
syn keyword sqlFunction FROM_BASE64 FROM_DAYS FROM_UNIXTIME
syn keyword sqlFunction GET_DD_COLUMN_PRIVILEGES GET_DD_CREATE_OPTIONS GET_DD_INDEX_SUB_PART_LENGTH
syn keyword sqlFunction GET_FORMAT GET_LOCK GREATEST GROUPING GROUP_CONCAT GTID_SUBSET GTID_SUBTRACT
syn keyword sqlFunction GeometryCollection GeonCollection
syn keyword sqlFunction HEX HOUR
syn keyword sqlFunction ICU_VERSION IF IFNULL IN INET6_ATON INET6_NTOA INET_ATON INET_NTOA
syn keyword sqlFunction INSERT INSTR INTERVAL IS ISNULL IS_FREE_LOCK IS_IPV4 IS_IPV4_COMPACT
syn keyword sqlFunction IS_IPV4_MAPPED IS_IPV6 IS_NOT IS_NOT_NULL IS_NULL IS_USED_LOCK IS_UUID
syn keyword sqlFunction JSON_ARRAY JSON_ARRAYAGG JSON_ARRAY_APPEND JSON_ARRAY_INSERT
syn keyword sqlFunction JSON_CONTAINS JSON_CONTAINS_PATH JSON_DEPTH JSON_EXTRACT JSON_INSERT
syn keyword sqlFunction JSON_KEYS JSON_LENGTH JSON_MERGE JSON_MERGE_PATCH JSON_MERGE_PRESERVE
syn keyword sqlFunction JSON_OBJECT JSON_OBJECTAGG JSON_PRETTY JSON_QUOTE JSON_REMOVE
syn keyword sqlFunction JSON_REPLACE JSON_SEARCH JSON_SET JSON_STORAGE_FREE JSON_STORAGE_SIZE
syn keyword sqlFunction JSON_TABLE JSON_TYPE JSON_UNQUOTE JSON_VALID
syn keyword sqlFunction LAG LAST_DAY LAST_INSERT_ID LAST_VALUE LCASE LEAD LEAST LENGTH LIKE LN
syn keyword sqlFunction LOAD_FILE LOCATE LOG LOG10 LOG2 LOWER LPAD LTRIM LineString
syn keyword sqlFunction Localtime Localtime Localtimestamp
syn keyword sqlFunction MAKE_SET MAKEdate MANE_CONST MBRContains MBRCoveredBy MBRCovers MBRDisjoint
syn keyword sqlFunction MBREquals MBRIntersects MBROverlaps MBRTouches MBRWithin MD5 MICROSECOND
syn keyword sqlFunction MID MIN MINUTE MOD % MONTH MONTHNAME MiuliLineString MultiPoint MultiPolygon
syn keyword sqlFunction NOT !  NOT_IN NOT_LIKE NOT_REGEXP NOW() NTH_VALUE NTILE NULLIF
syn keyword sqlFunction OCT
syn keyword sqlFunction OCTET_LENGTH 
syn keyword sqlFunction OR
" syn keyword sqlFunction ||
syn keyword sqlFunction ORD
syn keyword sqlFunction PASSWORD PERCENT_RANK PERIOD_ADD PERIOD_DIFF PI() POSTION POW POWER 
syn keyword sqlFunction Point Polygon
syn keyword sqlFunction QUARTER QUOTE
syn keyword sqlFunction RADIANS RAND RANDOME_BYTES RANK REGEXP REGEXP_INSTR REGEXP_LIKE
syn keyword sqlFunction REGEXP_REPLACE REGEXP_SUBSTR RELEASE_ALL_LOCKS RELEASE_LOCK REPEAT
syn keyword sqlFunction REPLACE REVERSE RFOUND_ROWS RIGHT RLIKE ROLES_GRAPHML ROUND ROW_COUNT
syn keyword sqlFunction ROW_NUMBER RPAD RTRIM
syn keyword sqlFunction SUBDATE SUBSTR SUBSTRING_INDEX SUBTIME SUM SYSDATE SYSTEM_USER
syn keyword sqlFunction SCHEMA SECOND SEC_TO_TIME SESSION_USER SHA1 SHA SHA2 SIGN SIN SLEEP SOUNDED
syn keyword sqlFunction SOUNDS_LIKE SPACE SQRT STATEMENT_DIGEST STATEMENT_DIGEST_TEXT STD STDDEV
syn keyword sqlFunction STDDEV_POP STDDEV_SAMP STR_CMP
syn keyword sqlFunction ST_BUFFER ST_Buffer_Strategy ST_Centroid ST_Contains ST_ConvexHull
syn keyword sqlFunction ST_Crosses ST_Difference ST_Dimension ST_Disjoint ST_Distance
syn keyword sqlFunction ST_Distance_Sphere ST_EndPoint ST_Envelope ST_Equals ST_ExteriorRing
syn keyword sqlFunction ST_GeoHash ST_GeoCollFromText ST_GeoCollectionFromText ST_GeoCollFromTxt
syn keyword sqlFunction ST_GeoCollFromWKB ST_GeoCollectionFromWKB ST_GeometryN ST_GeometryType
syn keyword sqlFunction ST_GeomFromGeoJSON ST_Area ST_AsBinary ST_AsWKB ST_AsGeoJSON ST_AsTExt
syn keyword sqlFunction ST_AsWKT ST_GeomFromText ST_GeomFromWKB ST_GeomFromWKB ST_GeometryFromText
syn keyword sqlFunction ST_GeometryFromWKB ST_InteriorRingN ST_Intersection ST_IsClosed ST_IsEmpty
syn keyword sqlFunction ST_IsSimple ST_IsValid ST_LatFromGeoHash ST_Length ST_LineFromText
syn keyword sqlFunction ST_LineFromWKB ST_LineStringFromText ST_LineStringFromWKB ST_LongFromGeoHash
syn keyword sqlFunction ST_MLineFromText ST_MLineFromWKB ST_MPointFromText ST_MPointFromWKB
syn keyword sqlFunction ST_MPolyFromText ST_MakeEnvelope ST_MultiLineStringFromText
syn keyword sqlFunction ST_MultiLineStringFromWKB ST_MultiPointFromText ST_MultiPointFromWKB
syn keyword sqlFunction ST_MultiPolygonFromText ST_NumGeometries ST_NumInteriorRing
syn keyword sqlFunction ST_NumInteriorRings ST_NumPoints ST_Overlaps ST_PointFromGeoHash
syn keyword sqlFunction ST_PointFromText ST_PointFromWKB ST_PointN ST_PolyFromText ST_PolyFromWKB
syn keyword sqlFunction ST_PolygonFromText ST_PolygonFromWKB ST_SRID ST_Simplify ST_StartPoint
syn keyword sqlFunction ST_SwapXY ST_SymDifference ST_Touches ST_Union ST_Validate ST_Within
syn keyword sqlFunction ST_X ST_Y
syn keyword sqlFunction TAN TIME TIMEDIFF TIMESTAMP TIMESTAMPADD TIMESTAMPDIFF TIME_FORMAT
syn keyword sqlFunction TIME_TO_SEC TO_BASE64 TO_DAYS TO_SECONDS TRIM TRUNCATE TCASE TITLE TCASES
syn keyword sqlFunction UCASE UNCOMPRESS UNCOMPRESS_LENGTH UNHEX UNIX_TIMESTAMP UPPER USER
syn keyword sqlFunction UTC_DATE UTC_TIME UTC_TIMESTAMP UUID UUID_SHORT UUID_TO_BIN UpdateXML
syn keyword sqlFunction VALIDATE_PASSWORD_STRENGTH VARIANCE VAR_POP VAR_SAMP VERSION VALUES
syn keyword sqlFunction WAIT_FOR_EXECUTED_GTIS_SET WEEK WEEKOFYEAR WEEKDAY
syn keyword sqlFunction WEIA_UNTIL_SQL_THREAS_AFTER_GTIDS WEIGHT_STRING
syn keyword sqlFunction XOR
syn keyword sqlFunction YEAR YEARWEEK
" syn keyword sqlFunction \ ^ MAKETIME MASTER_POS_WAIT MATCH MAX STR_TO_DATE | ~

syn match sqlFunction "CHAR(.\+)"
" syn keyword sqlIgnore
" syn keyword sqlInclude
" syn match sqlLabel "/\`/"

" syn keyword sqlMacro
" syn keyword sqlNontext
syn match sqlNumber "\<\d\+\>"
" syn keyword sqlPreCondit
" syn keyword sqlPreProc
" syn keyword sqlRepeat
" syn keyword sqlSpecialComment
" syn keyword sqlStatement
" syn keyword sqlStorageClass
syn keyword sqlKeyword AS DELETE WHERE DATABASE AUTO_INCREMENT CHARSET COALESCE
syn keyword sqlKeyword CONCAT CONSTRAINT CREATE CURRENT_TIMESTAMP DROP ENGINE EXISTS
syn keyword sqlKeyword FOREIGN FROM INNER INSERT InnoDB JOIN KEY LEFT LIMIT LOCK NOT NULL
syn keyword sqlKeyword OUTER PRIMARY REFERENCES SELECT SET TABLES TO UNLOCK UNSIGNED
syn keyword sqlKeyword UPDATE UPPER USE WRITE COLLATE RESTRICT DECLARE
syn keyword sqlKeyword ACCESSIBLE ACCOUNT ACTION ADD AFTER AGAINST AGGREGATE ALGORITHM ALL
syn keyword sqlKeyword ALTER ALWAYS ANALYZE AND ANY AS ASC ASCII ASENSITIVE AT
syn keyword sqlKeyword AUTOEXTEND_SIZE AUTO_INCREMENT AVG AVG_ROW_LENGTH
syn keyword sqlKeyword BACKUP BEFORE BEGIN BETWEEN BIGINT BINARY BINLOG BIT BLOB BLOCK
syn keyword sqlKeyword BOOL BOOLEAN BOTH BTREE BY BYTE
syn keyword sqlKeyword CACHE CALL CASCADE CASCADED CASE CATALOG_NAME CHAIN CHANGE CHANGED
" syn keyword sqlKeyword CHANNEL CHAR CHARACTER CHARSET CHECK CHECKSUM CIPHER CLASS_ORIGIN CLIENT CLOSE COALESCE CODE COLLATE COLLATION COLUMN COLUMNS COLUMN_FORMAT COLUMN_NAME COMMENT COMMIT COMMITTED COMPACT COMPLETION COMPRESSED COMPRESSION CONCURRENT CONDITION CONNECTION CONSISTENT CONSTRAINT CONSTRAINT_CATALOG CONSTRAINT_NAME CONSTRAINT_SCHEMA CONTAINS CONTEXT CONTINUE CONVERT CPU CREATE CROSS CUBE CURRENT CURRENT_DATE CURRENT_TIME CURRENT_TIMESTAMP CURRENT_USER CURSOR CURSOR_NAME
syn keyword sqlKeyword DATA DATABASE DATABASES DATAFILE DATE DATETIME DAY DAY_HOUR DAY_MICROSECOND DAY_MINUTE DAY_SECOND DEALLOCATE DEC DECIMAL DECLARE DEFAULT DEFAULT_AUTH DEFINER DELAYED DELAY_KEY_WRITE DELETE DESC DESCRIBE DES_KEY_FILE DETERMINISTIC DIAGNOSTICS DIRECTORY DISABLE DISCARD DISK DISTINCT DISTINCTROW DIV DO DOUBLE DROP DUAL DUMPFILE DUPLICATE DYNAMIC
syn keyword sqlKeyword EACH ELSE ELSEIF ENABLE ENCLOSED ENCRYPTION END ENDS ENGINE ENGINES ENUM ERROR ERRORS ESCAPE ESCAPED EVENT EVENTS EVERY EXCHANGE EXECUTE EXISTS EXIT EXPANSION EXPIRE EXPLAIN EXPORT EXTENDED EXTENT_SIZE
syn keyword sqlKeyword FAST FAULTS FETCH FIELDS FILE FILE_BLOCK_SIZE FILTER FIRST FIXED FLOAT FLOAT4 FLOAT8 FLUSH FOLLOWS FOR FORCE FOREIGN FORMAT FOUND FROM FULL FULLTEXT FUNCTION
syn keyword sqlKeyword GENERAL GENERATED  GEOMETRY GEOMETRYCOLLECTION GET GET_FORMAT GLOBAL GRANT GRANTS GROUP GROUP_REPLICATION
syn keyword sqlKeyword HANDLER HASH HAVING HELP HIGH_PRIORITY HOST HOSTS HOUR HOUR_MICROSECOND HOUR_MINUTE HOUR_SECOND
syn keyword sqlKeyword IDENTIFIED IF IGNORE IGNORE_SERVER_IDS IMPORT IN INDEX INDEXES INFILE INITIAL_SIZE INNER INOUT INSENSITIVE INSERT INSERT_METHOD INSTALL INSTANCE INT INT1 INT2 INT3 INT4 INT8 INTEGER INTERVAL INTO INVOKER IO IO_AFTER_GTIDS IO_BEFORE_GTIDS IO_THREAD IPC IS ISOLATION ISSUER ITERATE
syn keyword sqlKeyword JOIN JSON
syn keyword sqlKeyword KEY KEYS KEY_BLOCK_SIZE KILL
syn keyword sqlKeyword LANGUAGE LAST LEADING LEAVE LEAVES LEFT LESS LEVEL LIKE LIMIT LINEAR LINES LINESTRING LIST LOAD LOCAL LOCALTIME LOCALTIMESTAMP LOCK LOCKS LOGFILE LOGS LONG LONGBLOB LONGTEXT LOOP LOW_PRIORITY
syn keyword sqlKeyword MASTER MASTER_AUTO_POSITION MASTER_BIND MASTER_CONNECT_RETRY MASTER_DELAY MASTER_HEARTBEAT_PERIOD MASTER_HOST MASTER_LOG_FILE MASTER_LOG_POS MASTER_PASSWORD MASTER_PORT MASTER_RETRY_COUNT MASTER_SERVER_ID MASTER_SSL MASTER_SSL_CA MASTER_SSL_CAPATH MASTER_SSL_CERT MASTER_SSL_CIPHER MASTER_SSL_CRL MASTER_SSL_CRLPATH MASTER_SSL_KEY MASTER_SSL_VERIFY_SERVER_CERT MASTER_TLS_VERSION MASTER_TLS_VERSION MASTER_USER MATCH MAXVALUE MAX_CONNECTIONS_PER_HOUR MAX_QUERIES_PER_HOUR MAX_ROWS MAX_SIZE MAX_STATEMENT_TIME MAX_UPDATES_PER_HOUR MAX_USER_CONNECTIONS MEDIUM MEDIUMBLOB MEDIUMINT MEDIUMTEXT MEMORY MERGE MESSAGE_TEXT MICROSECOND MIDDLEINT MIGRATE MINUTE MINUTE_MICROSECOND MINUTE_SECOND MIN_ROWS MOD MODE MODIFIES MODIFY MONTH MULTILINESTRING MULTIPOINT MULTIPOLYGON MUTEX MYSQL_ERRNO
syn keyword sqlKeyword NAME NAMES NATIONAL NATURAL NCHAR NDB NDBCLUSTER NEVER NEW NEXT NO NODEGROUP NONBLOCKING NONE NOT NO_WAIT NO_WRITE_TO_BINLOG NULL NUMBER NUMERIC NVARCHAR
syn keyword sqlKeyword OFFSET OLD_PASSWORD ON ONE ONLY OPEN OPTIMIZE OPTIMIZER_COSTS OPTIMIZER_COSTS  OPTION OPTIONALLY OPTIONS OR ORDER OUT OUTER OUTFILE OWNER
syn keyword sqlKeyword PACK_KEYS PAGE PARSER PARSE_GCOL_EXPR PARSE_GCOL_EXPR PARTIAL PARTITION PARTITIONING PARTITIONS PASSWORD PHASE PLUGIN PLUGINS PLUGIN_DIR POINT POLYGON PORT PRECEDES PRECEDES PRECISION PREPARE PRESERVE PREV PRIMARY PRIVILEGES PROCEDURE PROCESSLIST PROFILE PROFILES PROXY PURGE
syn keyword sqlKeyword QUARTER QUERY QUICK
syn keyword sqlKeyword RANGE READ READS READ_ONLY READ_WRITE REAL REBUILD RECOVER REDOFILE REDO_BUFFER_SIZE REDUNDANT REFERENCES REGEXP RELAY RELAYLOG RELAY_LOG_FILE RELAY_LOG_POS RELAY_THREAD RELEASE RELOAD REMOVE RENAME REORGANIZE REPAIR REPEAT REPEATABLE REPLACE REPLICATE_DO_DB REPLICATE_DO_DB REPLICATE_DO_TABLEB REPLICATE_IGNORE_TABLE REPLICATE_REWRITE_DB REPLICATE_WILD_DO_TABLE REPLICATE_WILD_IGNORE_TABLE REPLICATION REQUIRE RESET RESIGNAL RESTORE RESTRICT RESUME RETURN RETURNED_SQLSTATE RETURNS REVERSE REVOKE RIGHT RLIKE ROLLBACK ROLLUP ROTATE ROUTINE ROW ROWS ROW_COUNT ROW_FORMAT RTREE
syn keyword sqlKeyword SAVEPOINT SCHEDULE SCHEMA SCHEMAS SCHEMA_NAME SECOND SECOND_MICROSECOND SECURITY SELECT SENSITIVE SEPARATOR SERIAL SERIALIZABLE SERVER SESSION SET SHARE SHOW SHUTDOWN SIGNAL SIGNED SIMPLE SLAVE SLOW SMALLINT SNAPSHOT SOCKET SOME SONAME SOUNDS SOURCE SPATIAL SPECIFIC SQL SQLEXCEPTION SQLSTATE SQLWARNING SQL_AFTER_GTIDS SQL_AFTER_MTS_GAPS SQL_BEFORE_GTIDS SQL_BIG_RESULT SQL_BUFFER_RESULT SQL_CACHE SQL_CALC_FOUND_ROWS SQL_NO_CACHE SQL_SMALL_RESULT SQL_THREAD SQL_TSI_DAY SQL_TSI_HOUR SQL_TSI_MINUTE SQL_TSI_MONTH SQL_TSI_QUARTER SQL_TSI_SECOND SQL_TSI_WEEK SQL_TSI_YEAR SSL STACKED START STARTING STARTS STATS_AUTO_RECALC STATS_PERSISTENT STATS_SAMPLE_PAGES STATUS STOP STORAGE STORED  STRAIGHT_JOIN STRING SUBCLASS_ORIGIN SUBJECT SUBPARTITION SUBPARTITIONS SUPER SUSPEND SWAPS SWITCHES
syn keyword sqlKeyword TABLE TABLES TABLESPACE TABLE_CHECKSUM TABLE_NAME TEMPORARY TEMPTABLE TERMINATED TEXT THAN THEN TIME TIMESTAMP TIMESTAMPADD TIMESTAMPDIFF TINYBLOB TINYINT TINYTEXT TO TRAILING TRANSACTION TRIGGER TRIGGERS TRUNCATE TYPE TYPES
syn keyword sqlKeyword UNCOMMITTED UNDEFINED UNDO UNDOFILE UNDO_BUFFER_SIZE UNICODE UNINSTALL UNION UNIQUE UNKNOWN UNLOCK UNSIGNED UNTIL UPDATE UPGRADE USAGE USE USER USER_RESOURCES USE_FRM USING UTC_DATE UTC_TIME UTC_TIMESTAMP VALIDATION VALUE VALUES VARBINARY VARCHAR VARCHARACTER VARIABLES VARYING VIEW VIRTUAL
syn keyword sqlKeyword WAIT WARNINGS WEEK WEIGHT_STRING WHEN WHERE WHILE WITH WITHOUT WORK WRAPPER WRITE
syn keyword sqlKeyword X509 XA XID XML XOR
syn keyword sqlKeyword YEAR YEAR_MONTH
syn keyword sqlKeyword ZEROFILL

syn keyword sqlBoolean TRUE FALSE

" Data Types
syn keyword sqlType BIGINT INT INT1 INT2 INT3 INT4 INT8 INTEGER MEDIUMINT MIDDLEINT
syn keyword sqlType SMALLINT TINYINT BINARY BIT
syn keyword sqlType BOOL BOOLEAN
syn keyword sqlType CHAR CHARACTER NCHAR NVARCHAR
syn keyword sqlType DATE DATETIME DOUBLE
syn keyword sqlType ENUM
syn keyword sqlType FULLTEXT
syn keyword sqlType DECIMAL FLOAT FLOAT4 FLOAT8 DOUBLE
syn keyword sqlType BLOB TINYBLOB MEDIUMBLOB LONGBLOB
syn keyword sqlType LONGTEXT
syn keyword sqlType MEDIUMTEXT MEDIUM
syn keyword sqlType TIME TIMESTAMP TRUNCATE TINYTEXT TEXT
syn keyword sqlType VARCHAR VARCHARACTER VARBINARY

" Comments.
syn match sqlComment "^\s*#.\+$"    " Matches any line where the first character is a #.
syn match sqlComment "^--\s.\+$"    " Matches any line that starts ' - - '.
syn match sqlComment "/\*.\+\*/"      " Matches any block comment.

syn match sqlTodo "^# todo.\+$"

syn match sqlIdentifier ","

syn match sqlSpecial "`\w\+`"       " any special symbol SpecialChar special character in a
                                    " constant Tag
syn keyword sqlBoolean  TRUE FALSE

syn keyword sqlTodo TODO FIXME XXX

" Links between sql  types and vim types. 
:highlight link sqlBoolean          Boolean
:highlight link sqlCharacter        Character
:highlight link sqlComment          Comment
:highlight link sqlConditional      Conditional
:highlight link sqlConstant         Constant
:highlight link sqlDebug            Debug
:highlight link sqlDefine           Define
:highlight link sqlDelimiter        Delimiter
:highlight link sqlError            Error
:highlight link sqlException        Exception
:highlight link sqlFloat            Float
:highlight link sqlFunction         Function
:highlight link sqlIdentifier       Identifier
:highlight link sqlIgnore           Ignore
:highlight link sqlInclude          Include
:highlight link sqlKeyword          Keyword
:highlight link sqlLabel            Label
:highlight link sqlMacro            Macro
:highlight link sqlNontext          NonText
:highlight link sqlNumber           Number
:highlight link sqlOperator         Operator
:highlight link sqlPreCondit        PreCondit
:highlight link sqlPreProc          PreProc
:highlight link sqlRepeat           Repeat
:highlight link sqlSpecial          Special
:highlight link sqlSpecialComment   SpecialComment
:highlight link sqlStatement        Statement
:highlight link sqlStorageClass     StorageClass
:highlight link sqlTodo             Todo
:highlight link sqlType             Type
:highlight link sqlUnderlined       Underlined 
