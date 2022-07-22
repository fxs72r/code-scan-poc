@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  code-scan-poc startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Add default JVM options here. You can also use JAVA_OPTS and CODE_SCAN_POC_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto execute

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto execute

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\code_scan-0.1.0.jar;%APP_HOME%\lib\spring-boot-starter-web-2.4.5.jar;%APP_HOME%\lib\spring-boot-starter-test-2.4.5.jar;%APP_HOME%\lib\sqlite-jdbc-3.32.3.2.jar;%APP_HOME%\lib\spring-boot-starter-json-2.4.5.jar;%APP_HOME%\lib\spring-boot-starter-2.4.5.jar;%APP_HOME%\lib\spring-boot-starter-tomcat-2.4.5.jar;%APP_HOME%\lib\spring-webmvc-5.3.6.jar;%APP_HOME%\lib\spring-web-5.3.6.jar;%APP_HOME%\lib\spring-boot-test-autoconfigure-2.4.5.jar;%APP_HOME%\lib\spring-boot-test-2.4.5.jar;%APP_HOME%\lib\json-path-2.4.0.jar;%APP_HOME%\lib\jakarta.xml.bind-api-2.3.3.jar;%APP_HOME%\lib\assertj-core-3.18.1.jar;%APP_HOME%\lib\hamcrest-2.2.jar;%APP_HOME%\lib\mockito-junit-jupiter-3.6.28.jar;%APP_HOME%\lib\junit-jupiter-params-5.7.1.jar;%APP_HOME%\lib\junit-jupiter-engine-5.7.1.jar;%APP_HOME%\lib\junit-jupiter-api-5.7.1.jar;%APP_HOME%\lib\junit-platform-engine-1.7.1.jar;%APP_HOME%\lib\junit-platform-commons-1.7.1.jar;%APP_HOME%\lib\junit-jupiter-5.7.1.jar;%APP_HOME%\lib\mockito-core-3.6.28.jar;%APP_HOME%\lib\jsonassert-1.5.0.jar;%APP_HOME%\lib\spring-test-5.3.6.jar;%APP_HOME%\lib\spring-boot-autoconfigure-2.4.5.jar;%APP_HOME%\lib\spring-boot-2.4.5.jar;%APP_HOME%\lib\spring-context-5.3.6.jar;%APP_HOME%\lib\spring-aop-5.3.6.jar;%APP_HOME%\lib\spring-beans-5.3.6.jar;%APP_HOME%\lib\spring-expression-5.3.6.jar;%APP_HOME%\lib\spring-core-5.3.6.jar;%APP_HOME%\lib\xmlunit-core-2.7.0.jar;%APP_HOME%\lib\spring-boot-starter-logging-2.4.5.jar;%APP_HOME%\lib\jakarta.annotation-api-1.3.5.jar;%APP_HOME%\lib\snakeyaml-1.27.jar;%APP_HOME%\lib\jackson-datatype-jdk8-2.11.4.jar;%APP_HOME%\lib\jackson-datatype-jsr310-2.11.4.jar;%APP_HOME%\lib\jackson-module-parameter-names-2.11.4.jar;%APP_HOME%\lib\jackson-databind-2.11.4.jar;%APP_HOME%\lib\tomcat-embed-websocket-9.0.45.jar;%APP_HOME%\lib\tomcat-embed-core-9.0.45.jar;%APP_HOME%\lib\jakarta.el-3.0.3.jar;%APP_HOME%\lib\json-smart-2.3.jar;%APP_HOME%\lib\logback-classic-1.2.3.jar;%APP_HOME%\lib\log4j-to-slf4j-2.13.3.jar;%APP_HOME%\lib\jul-to-slf4j-1.7.30.jar;%APP_HOME%\lib\slf4j-api-1.7.30.jar;%APP_HOME%\lib\jakarta.activation-api-1.2.2.jar;%APP_HOME%\lib\byte-buddy-1.10.18.jar;%APP_HOME%\lib\byte-buddy-agent-1.10.18.jar;%APP_HOME%\lib\objenesis-3.1.jar;%APP_HOME%\lib\android-json-0.0.20131108.vaadin1.jar;%APP_HOME%\lib\spring-jcl-5.3.6.jar;%APP_HOME%\lib\jackson-annotations-2.11.4.jar;%APP_HOME%\lib\jackson-core-2.11.4.jar;%APP_HOME%\lib\accessors-smart-1.2.jar;%APP_HOME%\lib\apiguardian-api-1.1.0.jar;%APP_HOME%\lib\opentest4j-1.2.0.jar;%APP_HOME%\lib\logback-core-1.2.3.jar;%APP_HOME%\lib\log4j-api-2.13.3.jar;%APP_HOME%\lib\asm-5.0.4.jar


@rem Execute code-scan-poc
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %CODE_SCAN_POC_OPTS%  -classpath "%CLASSPATH%"  %*

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable CODE_SCAN_POC_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%CODE_SCAN_POC_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
