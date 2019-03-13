@ECHO OFF
REM Set Folder Names
REM main folders
SET zero_archive=00_Archive
SET zero_ref=00_Reference
SET one=10_Initiating
SET two=20_Planning
SET tree=30_Execution
SET four=40_Monitoring_and_Control
SET five=50_Closure
REM 10 sub-folders
SET one01=101_Contract
SET one02=102_Proposal
SET one03=103_Vendor
REM 20 sub-folders
SET two01=201_Budget
SET two02=202_Design
SET two03=203_Project_Plan
SET two04=204_Project_Schedule
REM 30 sub-folders
SET tree01=301_Data
SET tree02=303_Implementation
SET tree03=302_Testing
REM 40 sub-folders
SET four01=401_Deliverables
SET four02=402_Meeting_Minutes
SET four03=403_Progress_Report
SET four04=404_Risk_Register
REM 50 sub-folders
SET five01=501_UAT

REM Get arguments
SET Command=%~1
SET option=%~2
IF "%Command%"=="create-folders" GOTO CreateFolders
IF "%Command%"=="help" GOTO Help
GOTO End

:CreateFolders
ECHO.CreateFolders in %option%
cd %option%
mkdir %zero_archive%
mkdir %zero_ref%
mkdir %one%
mkdir %two%
mkdir %tree%
mkdir %four%
mkdir %five%
ECHO.main folders created
cd %one%
mkdir %one01%
mkdir %one02%
mkdir %one03% 
ECHO.10 sub-folders created
cd ../%two%
mkdir %two01%
mkdir %two02%
mkdir %two03% 
mkdir %two04%
ECHO.20 sub-folders created
cd ../%tree%
mkdir %tree01%
mkdir %tree02%
mkdir %tree03%
ECHO.30 sub-folders created
cd ../%four%
mkdir %four01%
mkdir %four02%
mkdir %four03%
mkdir %four04%
ECHO.40 sub-folders created
cd ../%five%
mkdir %five01%
ECHO.50 sub-folders created
GOTO End

:Help
ECHO.create-folders [directory path]
ECHO.help
GOTO End

:End