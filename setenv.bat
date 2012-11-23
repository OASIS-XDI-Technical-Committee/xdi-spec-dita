
SET DITA_DIR=%CD%\DITA-OT1.5.4-ez

IF DEFINED ANT_OPTS (
  SET ANT_OPTS=-Xmx512m %ANT_OPTS%
) ELSE (
  SET ANT_OPTS=-Xmx512m
)

SET ANT_OPTS=%ANT_OPTS% -Djavax.xml.transform.TransformerFactory=net.sf.saxon.TransformerFactoryImpl
SET ANT_HOME=%DITA_DIR%\tools\ant
SET PATH=%DITA_DIR%\tools\ant\bin;%PATH%

SET NEW_CLASSPATH=%DITA_DIR%\lib:%DITA_DIR%\lib\dost.jar:%DITA_DIR%\lib\commons-codec-1.4.jar:%DITA_DIR%\lib\resolver.jar:%DITA_DIR%\lib\icu4j.jar
SET NEW_CLASSPATH=%DITA_DIR%\lib\saxon\saxon9.jar:%DITA_DIR%\lib\saxon\saxon9-dom.jar:%NEW_CLASSPATH%

IF DEFINED CLASSPATH (
  SET CLASSPATH=%NEW_CLASSPATH%:%CLASSPATH%
) ELSE (
  SET CLASSPATH=%NEW_CLASSPATH%
)

SET NEW_CLASSPATH=
