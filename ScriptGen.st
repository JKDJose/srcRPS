<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks®, 7.4 of December 5, 2005 on October 19, 2017 at 3:57:04 pm</time-stamp>


<class>
<name>ScriptGen</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>LamFileServerPkg</category>
<attributes>
<package>LamFileManagementUtilityPkg</package>
</attributes>
</class>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>ScriptGen class</class-id> <category>help text</category>

<body package="LamFileManagementUtilityPkg" selector="allCollectHelpText">allCollectHelpText

	^'Collect event/alarm logs, scheduler logs, AutoPM data and PC Health log files'</body>

<body package="LamFileManagementUtilityPkg" selector="allHelpText">allHelpText

	^'Backup all config, recipes and data files'</body>

<body package="LamFileManagementUtilityPkg" selector="autoPMDataHelpText">autoPMDataHelpText

	^'Collect AutoPM data files within start/stop time period'</body>

<body package="LamFileManagementUtilityPkg" selector="configHelpText">configHelpText

	^'Backup CV files and ConfigOptions files'</body>

<body package="LamFileManagementUtilityPkg" selector="cvInTextHelpText">cvInTextHelpText

	^'Convert all CV files into text files and save the coverted text files. Original CV files will NOT be backed up.'</body>

<body package="LamFileManagementUtilityPkg" selector="dataHelpText">dataHelpText

	^'Backup data files such as: OESParams, Datalog Specs, Page Group files, Gas setpoint, calibration data, leakback data and conductance data'</body>

<body package="LamFileManagementUtilityPkg" selector="eventAlarmHelpText">eventAlarmHelpText

	^'Collect event/alarm log files and lot alarm history files within start/stop time period'</body>

<body package="LamFileManagementUtilityPkg" selector="pcHealthHelpText">pcHealthHelpText

	^'Collect All PC Health log files and any Resource generated debug log files'</body>

<body package="LamFileManagementUtilityPkg" selector="recipeHelpText">recipeHelpText

	^'Back up all recipes, clean recipes, flows, autoPM macro, cover wafer plans and psdConfig files'</body>

<body package="LamFileManagementUtilityPkg" selector="schedulerHelpText">schedulerHelpText

	^'Collect scheduler log files'</body>
</methods>

<methods>
<class-id>ScriptGen class</class-id> <category>data</category>

<body package="LamFileManagementUtilityPkg" selector="absoluteFlowVerifier">absoluteFlowVerifier

	^[: each |
		('\', each, '\AbsoluteFlowVerifier\').
	].</body>

<body package="LamFileManagementUtilityPkg" selector="alarmOptions">alarmOptions

	^Dictionary new at: #include put:
		#('\alarmOptions\processingCDS\*.aof');
	yourself.</body>

<body package="LamFileManagementUtilityPkg" selector="apmCalData">apmCalData

	^[: each |
		Array 
			with: ('\', each, '\Calibration\*.xml') 
			with: ('\', each, '\OMM\calibration\*.xml')
			with: ('\', each, '\metrology\calibration\*.xml')
			with: ('\', each, '\metrology\calibration\HVMPixelWaveNumber.txt')
			with: ('\', each, '\metrology\calibration\PixelWaveNumber.txt').
	].</body>

<body package="LamFileManagementUtilityPkg" selector="apmMetrologyCal">apmMetrologyCal

	^Dictionary new at: #include put:
		#('\apm1\metrology\calibration\*.xml' '\apm1\metrology\calibration\HVMPixelWaveNumber.txt' '\apm1\metrology\calibration\PixelWaveNumber.txt' );
	yourself.</body>

<body package="LamFileManagementUtilityPkg" selector="autoPMData">autoPMData

	^[: each |
		('\', each, '\AutoPMMacro\data\').
	].</body>

<body package="LamFileManagementUtilityPkg" selector="c360CalData">c360CalData

	^Dictionary new at: #include put:
		#('\chamber\calibration\*.xml');
	yourself.</body>

<body package="LamFileManagementUtilityPkg" selector="calData">calData

	^[: each |
		Array 
			with: ('\', each, '\*.dat')
			with: ('\', each, '\*.txt')
			with: ('\', each, '\*.xml').
	].</body>

<body package="LamFileManagementUtilityPkg" selector="datalog">datalog

	^[: each |
		('\', each, '\Datalog\*.dat').
	].</body>

<body package="LamFileManagementUtilityPkg" selector="datalogSpec">datalogSpec

	^[: each |
		Array with: ('\', each, '\Datalog\Specs\*.*') with: ('\', each, '\TraceData\Specs\*.dls').
	].</body>

<body package="LamFileManagementUtilityPkg" selector="edgeMeasurementSystem">edgeMeasurementSystem

	^Dictionary new at: #include put:
		#('\EMS1\');
	yourself.</body>

<body package="LamFileManagementUtilityPkg" selector="eventReport">eventReport

	^Dictionary new at: #include put:
		#('\UI\EventReportData\*.dat');
	yourself.</body>

<body package="LamFileManagementUtilityPkg" selector="hydraADI">hydraADI

	^Dictionary new at: #include put:
		#('\ADI\*.csv');
	yourself.</body>

<body package="LamFileManagementUtilityPkg" selector="hydraAEI">hydraAEI

	^Dictionary new at: #include put:
		#('\AEI\*.csv');
	yourself.</body>

<body package="LamFileManagementUtilityPkg" selector="hydraIncomingADI">hydraIncomingADI

	^Dictionary new at: #include put:
		#('\IncomingADI\*.csv');
	yourself.</body>

<body package="LamFileManagementUtilityPkg" selector="hydraRecipeTemplates">hydraRecipeTemplates

	^[: each |
		('\', each, '\Hydra\template\*.pht').
	].</body>

<body package="LamFileManagementUtilityPkg" selector="hydraStability">hydraStability
	^[: each |
		('\', each, '\Hydra\Stability\').
	].</body>

<body package="LamFileManagementUtilityPkg" selector="lamFlowRcpMap">lamFlowRcpMap

	^Dictionary new at: #include put:
		#('\UI\LamFlowRcpMap\*.*' '\UI\LamFlowRcpMap\Verify\*.*' '\UI\LamFlowRcpMap\Import\*.*');
	yourself.</body>

<body package="LamFileManagementUtilityPkg" selector="lotOperation">lotOperation

	^[: each |
		('\', each, '\LotOperations\*.*').
	].</body>

<body package="LamFileManagementUtilityPkg" selector="lsriData">lsriData

	^[: each |
		('\', each, '\Options\LSRiCalibration\').
	].</body>

<body package="LamFileManagementUtilityPkg" selector="nvRam">nvRam

	^[: each |
		('\', each, '\NVRam\*.dat').
	].</body>

<body package="LamFileManagementUtilityPkg" selector="oesParam">oesParam

	^[: each |
		('\', each, '\OesParam\*.*').
	].</body>

<body package="LamFileManagementUtilityPkg" selector="pageGroups">pageGroups

	^Dictionary new at: #include put:
		#('\UI\PagesGroup\*.*');
	yourself.</body>

<body package="LamFileManagementUtilityPkg" selector="partsData">partsData

	^[: each |
		Array with: ('\', each, '\parts\*.*') with: ('\', each, '\PartsRequestFile\*.*').
	].</body>

<body package="LamFileManagementUtilityPkg" selector="srdiData">srdiData

	^Dictionary new at: #include put:
		#('\SRDi1\');
	yourself.</body>

<body package="LamFileManagementUtilityPkg" selector="ui">ui

	^Dictionary new at: #include put:
		#('\UI\toolID.txt' '\UI\*.bos');
	yourself.</body>

<body package="LamFileManagementUtilityPkg" selector="waferflowGroups">waferflowGroups

	^Dictionary new at: #include put:
		#('\Groups\WaferflowGroups\*.*');
	yourself.</body>
</methods>

<methods>
<class-id>ScriptGen class</class-id> <category>config</category>

<body package="LamFileManagementUtilityPkg" selector="apmMetrologyConfig">apmMetrologyConfig

	^Dictionary new at: #include put:
		#('\apm1\metrology\config\*.xml');
	yourself.</body>

<body package="LamFileManagementUtilityPkg" selector="archivedConfigData">archivedConfigData

	^[: each |
		Array with: ('\', each, '\archived_config_*.txt')
	].</body>

<body package="LamFileManagementUtilityPkg" selector="autoArchive">autoArchive

	^Dictionary new at: #include put:
		#('\ui\laa_config.txt' '\ui\fdc_config.txt');
	yourself.</body>

<body package="LamFileManagementUtilityPkg" selector="autoPMCustom">autoPMCustom

	^Dictionary new 
		at: #include put:  #('\Util\AutoPM_Custom\');
		yourself</body>

<body package="LamFileManagementUtilityPkg" selector="configOptions">configOptions

	^[: each |
		('\', each, '\ConfigOptions.txt').
	]</body>

<body package="LamFileManagementUtilityPkg" selector="configOptionsAll">configOptionsAll

	^Dictionary new at: #include put:
		#('\..\Config\ConfigOptionsAll.txt');
	yourself.</body>

<body package="LamFileManagementUtilityPkg" selector="cvFiles">cvFiles

	^[: each |
		('\', each, '\*.cv').
	].</body>

<body package="LamFileManagementUtilityPkg" selector="cvFilesInText">cvFilesInText

	^[: each |
		('\', each, '\archived_config*.txt').
	].</body>

<body package="LamFileManagementUtilityPkg" selector="drainExhaustConfigFiles">drainExhaustConfigFiles

	^[: each |
		('\', each, '\DrainExhaust\DEMCSI.cfg').
	].</body>

<body package="LamFileManagementUtilityPkg" selector="eventLogConfig">eventLogConfig

	^Dictionary new at: #include put:
		#(
			'\EventLogs\filterExpressions' 
			'\EventLogs\General\expirePolicy' 
			'\EventLogs\General\logFilters' 
			'\EventLogs\Alarms\expirePolicy' 
			'\EventLogs\Alarms\logFilters');
	yourself.</body>

<body package="LamFileManagementUtilityPkg" selector="gasMappingandInterlockFiles">gasMappingandInterlockFiles

	^[: each |
		('\', each, '\Gas\').
	].</body>

<body package="LamFileManagementUtilityPkg" selector="gasMappingandInterlockFilesNoSplitGasRatio">gasMappingandInterlockFilesNoSplitGasRatio

	^[: each |
		('\', each, '\Gas\*.txt').
	].</body>

<body package="LamFileManagementUtilityPkg" selector="gasSetPoint">gasSetPoint

	^[: each |
		('\', each, '\gasSetPoint.bos').
	]</body>

<body package="LamFileManagementUtilityPkg" selector="hiddenOptions">hiddenOptions

	^Dictionary new at: #include put:
		#('\config\hiddenoption.txt');
	yourself.</body>

<body package="LamFileManagementUtilityPkg" selector="installAA">installAA

	^Dictionary new at: #include put:
		#('\..\tools\laa_client_setting.dat');
	yourself.</body>

<body package="LamFileManagementUtilityPkg" selector="mosFiles">mosFiles

	^[: each |
		('\', each, '\*.mos').
	].</body>

<body package="LamFileManagementUtilityPkg" selector="ruiFiles">ruiFiles

	^Dictionary new at: #include put:
		#('\ui\ruisetup.txt');
	yourself.</body>

<body package="LamFileManagementUtilityPkg" selector="securityFile">securityFile

	^Dictionary new at: #include put:
		#('\Program Files\Lam\LamSWConfigSecurity.tcf');
	yourself.</body>

<body package="LamFileManagementUtilityPkg" selector="serviceImage">serviceImage

	^Dictionary new 
		at: #include put: #('\Service\acl.xml');
		yourself.</body>

<body package="LamFileManagementUtilityPkg" selector="stb">stb

	^[: each |
		Array with: ('\', each, '\stb\*.moss') with: ('\', each, '\stb\cvHistory.log') with: ('\', each, '\stb\logon.log').
	].</body>

<body package="LamFileManagementUtilityPkg" selector="sysConfig">sysConfig

	^Dictionary new at: #include put:
		#('\sysconfig.txt');
	yourself.</body>
</methods>

<methods>
<class-id>ScriptGen class</class-id> <category>recipe</category>

<body package="LamFileManagementUtilityPkg" selector="abortFlows">abortFlows

	^Dictionary new at: #include put: 
		#('\AbortFlows\*.flw' '\ExtendDefaultAbortFlows\*.flw');
	yourself</body>

<body package="LamFileManagementUtilityPkg" selector="apmMetrologyRcp">apmMetrologyRcp

	^Dictionary new at: #include put:
		#('\apm1\metrology\recipes\*.xml');
	yourself.</body>

<body package="LamFileManagementUtilityPkg" selector="autoPMFlows">autoPMFlows

	^Dictionary new at: #include put:
		#('\AutoPMFlows.mos');
	yourself.</body>

<body package="LamFileManagementUtilityPkg" selector="autoPMHelp">autoPMHelp

	^[: each |
		('\', each, '\AutoPMMacro\help\').
	].</body>

<body package="LamFileManagementUtilityPkg" selector="autoPMMacro">autoPMMacro

	^[: each |
		('\', each, '\AutoPMMacro\macro\').
	].</body>

<body package="LamFileManagementUtilityPkg" selector="autoPMTimeSetUp">autoPMTimeSetUp

	^Dictionary new at: #include put:
		#('\AutoPMTimeSetup.txt');
	yourself.</body>

<body package="LamFileManagementUtilityPkg" selector="autoPMUtility">autoPMUtility

	^Dictionary new 
		at: #include put:  #('\Util\AutoPM\' '\Util\AutoPM_Custom\');
		at: #exclude put: #('\Util\AutoPM\PDF\');
		yourself</body>

<body package="LamFileManagementUtilityPkg" selector="cleanRecipes">cleanRecipes

	^[: each |
		('\', each, '\CleanRecipes\*.*').
	].</body>

<body package="LamFileManagementUtilityPkg" selector="coverWaferPlans">coverWaferPlans

	^Dictionary new at: #include put: 
		#('\AMS\*.dat');
	yourself</body>

<body package="LamFileManagementUtilityPkg" selector="flows">flows

	^Dictionary new at: #include put: 
		#('\Flows\*.flw');
	yourself</body>

<body package="LamFileManagementUtilityPkg" selector="hydraPhiRecipes">hydraPhiRecipes

	^[: each |
		('\', each, '\Recipes\*.phi').
	].</body>

<body package="LamFileManagementUtilityPkg" selector="learnedValues">learnedValues

	^[: each |
		('\', each, '\Recipes\Learned\*.lrn').
	].</body>

<body package="LamFileManagementUtilityPkg" selector="mixtureFiles">mixtureFiles

	^[: each |
		Array 
			with: ('\', each, '\MixtureFiles\ReclaimPanel\*.*')
			with: ('\', each, '\MixtureFiles\IPAPanel\*.*')
			with: ('\', each, '\MixtureFiles\Medium3Panel\*.*')
			with: ('\', each, '\MixtureFiles\Rinse1Panel\*.*')
			with: ('\', each, '\MixtureFiles\Rinse2Panel\*.*').
	].</body>

<body package="LamFileManagementUtilityPkg" selector="processFineTune">processFineTune

	^[: each |
		('\', each, '\ProcessFineTune\*.pft').
	].</body>

<body package="LamFileManagementUtilityPkg" selector="psdConfigFile">psdConfigFile

	^[: each |
		('\', each, '\ProcessDataSummary\PDSConfig.txt').
	].</body>

<body package="LamFileManagementUtilityPkg" selector="recipes">recipes

	^[: each |
		('\', each, '\Recipes\*.rcp').
	].</body>

<body package="LamFileManagementUtilityPkg" selector="recoveryRecipes">recoveryRecipes

	^[: each |
		('\', each, '\RecoveryRecipes\*.*').
	].</body>
</methods>

<methods>
<class-id>ScriptGen class</class-id> <category>scheduler</category>

<body package="LamFileManagementUtilityPkg" selector="engines">engines

	^Dictionary new at: #include put:
		#('\UI\contextOps*.txt' '\UI\scoreTable*.txt' '\UI\Engines\');
	yourself.</body>

<body package="LamFileManagementUtilityPkg" selector="metrologyDebug">metrologyDebug

	^Dictionary new at: #include put:
		#('\MetrologyICD\MetrologyDebug\');
	yourself.</body>

<body package="LamFileManagementUtilityPkg" selector="pcHealth">pcHealth

	^Dictionary new at: #include put:
		#('\PC Health\');
	yourself.</body>

<body package="LamFileManagementUtilityPkg" selector="schedulerDebug">schedulerDebug

	^Dictionary new at: #include put: 
		(Array with: self schedulerDebugDir);
	yourself.</body>

<body package="LamFileManagementUtilityPkg" selector="schedulerDebugDir">schedulerDebugDir

	^'\UI\SchedulerDebug\'</body>
</methods>

<methods>
<class-id>ScriptGen class</class-id> <category>generate</category>

<body package="LamFileManagementUtilityPkg" selector="generateCollectFromInstall:andData:">generateCollectFromInstall: anInstallDir andData: aDataDir

	| install data scripts |

	install := anInstallDir asFilename.
	data := aDataDir asFilename.

	scripts := Dictionary new.
	scripts
		at: #scheduler put: (Dictionary new
				at: #lamData put: (Dictionary new
					at: #Engines put: (self engines);
					at: #SchedulerDebug put: (self schedulerDebug);
					yourself);
				yourself);
		at: #pcHealth put: (Dictionary new
				at: #lamData put: (Dictionary new
					at: #pcHealth put: (self pcHealth);
					at: #metrologyDebug put: (self metrologyDebug);
					yourself);
				yourself);
		at: #allHelpText put: (self allCollectHelpText);
		at: #autoPMDataHelpText put: (self autoPMDataHelpText);
		at: #eventAlarmHelpText put: (self eventAlarmHelpText);
		at: #pcHealthHelpText put: (self pcHealthHelpText);
		at: #schedulerHelpText put: (self schedulerHelpText);
		at: #lastBackupeventalarm put: '';
		at: #lastBackupscheduler put: '';
		at: #softwareVersion put: (self softwareVersion);
		yourself.

	MOSS putObject: scripts onFile: (Filename defaultDirectory constructString: '\config\collectScripts.cfg') create: true.
	^scripts</body>

<body package="LamFileManagementUtilityPkg" selector="generateFromInstall:andData:">generateFromInstall: anInstallDir andData: aDataDir

	| install data scripts |
	install := anInstallDir asFilename.
	data := aDataDir asFilename.

	scripts := Dictionary new.
	scripts
	
	at: #startup put: (Dictionary new
				at: #lamData put: (Dictionary new
					at: #ConfigOptions put: (self newDictFor: data usingBlock: (self configOptions));
					at: #CVFiles put: (self newDictFor: data usingBlock: (self cvFiles));
					"PR 554293 5/8/12 at: #STB put: (self newDictFor: data usingArrayBlock: (self stb));"
					at: #HiddenOptions put: (self hiddenOptions);
					at: #ServiceImage put:  (self serviceImage);
					at: #RUIFiles put: (self ruiFiles);
					at: #AutoArchive put: (self autoArchive);
					at: #GasMappingandInterlockFiles put: (self newDictFor: data usingBlock: (self gasMappingandInterlockFilesNoSplitGasRatio));
					at: #APMMetrologyConfig put: (self apmMetrologyConfig);
					at: #EventLogConfig put: (self eventLogConfig);
					at: #PTMS put: (self newDictFor: data usingArrayBlock: (self partsData));
					at: #DrainExhaustConfigFiles put: (self newDictFor: data usingBlock: (self drainExhaustConfigFiles));
					at: #PSDConfig put: (self newDictFor: data usingBlock: (self psdConfigFile));
					at: #AutoPMCustom put: (self autoPMCustom);
					yourself);
				at: #lamInstall put: (Dictionary new
					at: #SysConfig put: (self sysConfig);
					at: #AutoArchive put: (self installAA);
					at: #ConfigOptionsAll put: (self configOptionsAll);
					yourself);
				yourself);
		at: #config put: (Dictionary new
				at: #ProgramFile put: (Dictionary new
					at: #Security put: (self securityFile);
					yourself);
				at: #lamData put: (Dictionary new
					at: #ConfigOptions put: (self newDictFor: data usingBlock: (self configOptions));
					at: #GasSetPoint put: (self newDictFor: data usingBlock: (self gasSetPoint));
					at: #CVFiles put: (self newDictFor: data usingBlock: (self cvFiles));
					at: #MOSFiles put: (self newDictFor: data usingBlock: (self mosFiles));
					"PR 554293 5/8/12 at: #STB put: (self newDictFor: data usingArrayBlock: (self stb));"
					at: #HiddenOptions put: (self hiddenOptions);
					at: #RUIFiles put: (self ruiFiles);
					at: #AutoArchive put: (self autoArchive);
					at: #GasMappingandInterlockFiles put: (self newDictFor: data usingBlock: (self gasMappingandInterlockFiles));
					at: #APMMetrologyConfig put: (self apmMetrologyConfig);
					at: #EventLogConfig put: (self eventLogConfig);
					at: #PTMS put: (self newDictFor: data usingArrayBlock: (self partsData));
					at: #ArchivedConfig put: (self newDictFor: data usingArrayBlock: (self archivedConfigData));
					at: #DrainExhaustConfigFiles put: (self newDictFor: data usingBlock: (self drainExhaustConfigFiles));
					at: #PSDConfig put: (self newDictFor: data usingBlock: (self psdConfigFile));
					at: #AutoPMTimeSetUp put: (self autoPMTimeSetUp);
					at: #AutoPMCustom put: (self autoPMCustom);
					yourself);
				at: #lamInstall put: (Dictionary new
					at: #SysConfig put: (self sysConfig);
					at: #AutoArchive put: (self installAA);
					at: #ConfigOptionsAll put: (self configOptionsAll);
					yourself);
				yourself);
		at: #cvInText put: (Dictionary new
				at: #lamData put: (Dictionary new
					at: #CVFilesInText put: (self newDictFor: data usingBlock: (self cvFilesInText));
					yourself);
				yourself);
		at: #data put: (Dictionary new
				at: #lamData put: (Dictionary new
					at: #CalData put: (self newDictFor: data usingArrayBlock: (self calData));
					at: #DatalogSpec put: (self newDictFor: data usingArrayBlock: (self datalogSpec));
					at: #Datalog put: (self newDictFor: data usingBlock: (self datalog));
					at: #NVRam put: (self newDictFor: data usingBlock: (self nvRam));
					at: #LotOperation put: (self newDictFor: data usingBlock: (self lotOperation));
					at: #EventReport put: (self eventReport);
					at: #OESParam put: (self newDictFor: data usingBlock: (self oesParam));
					at: #PageGroups put: (self pageGroups);
					at: #UI put: (self ui);
					at: #APMCal put: (self newDictFor: data usingArrayBlock: (self apmCalData));
					at: #PTMS put: (self newDictFor: data usingArrayBlock: (self partsData));
					at: #C360CalData put: (self c360CalData);
					at: #WaferflowGroups put: (self waferflowGroups);
					at: #ArchivedConfig put: (self newDictFor: data usingArrayBlock: (self archivedConfigData));
					at: #HydraRecipeTemplates put: (self newDictFor: data usingBlock: (self hydraRecipeTemplates));
					at: #HydraADI put: (self hydraADI);
					at: #HydraAEI put: (self hydraAEI);
					at: #HydraIncomingADI put: (self hydraIncomingADI);
					at: #LamFlowRcpMap put: (self lamFlowRcpMap);
					at: #absoluteFlowVerifier put: (self newDictFor: data usingBlock: (self absoluteFlowVerifier));
					at: #srd put: (self srdiData);
					at: #ems put: (self edgeMeasurementSystem);
					at: #alarmOptions put: (self alarmOptions);					
					at: #LSRi put: (self newDictFor: data usingBlock: (self lsriData));
					yourself);
				yourself);
		at: #recipe put: (Dictionary new
				at: #lamData put: (Dictionary new
					at: #CleanRecipes put: (self newDictFor: data usingBlock: (self cleanRecipes));
					at: #APMHelp put: (self newDictFor: data usingBlock: (self autoPMHelp));
					at: #APMMacro put: (self newDictFor: data usingBlock: (self autoPMMacro));
					at: #APMUtility put: (self autoPMUtility);
					at: #AbortFlows put: (self abortFlows);
					at: #Flows put: (self flows);
					at: #Recipes put: (self newDictFor: data usingBlock: (self recipes));
					at: #HydraPhiRecipes put: (self newDictFor: data usingBlock: (self hydraPhiRecipes));
					at: #HydraStability put: (self newDictFor: data usingBlock: (self hydraStability));
					at: #HydraRecipeTemplates put: (self newDictFor: data usingBlock: (self hydraRecipeTemplates));
					at: #ProcessFineTune put: (self newDictFor: data usingBlock: (self processFineTune));
					at: #LearnedValues put: (self newDictFor: data usingBlock: (self learnedValues));
					at: #CoverWaferPlans put: (self coverWaferPlans);
					at: #APMMetrologyRcp put: (self apmMetrologyRcp);
					at: #AutoPMFlows put: (self autoPMFlows);
					at: #MixtureFiles put: (self newDictFor: data usingArrayBlock: (self mixtureFiles));
					at: #RecoveryRecipes put: (self newDictFor: data usingBlock: (self recoveryRecipes));
					yourself);
				yourself);
		at: #configHelpText put: (self configHelpText);
		at: #cvInTextHelpText put: (self cvInTextHelpText);
		at: #dataHelpText put: (self dataHelpText);
		at: #recipeHelpText put: (self recipeHelpText);
		at: #allHelpText put: (self allHelpText);
		at: #lastBackupconfig put: '';
		at: #lastBackupdata put: '';
		at: #lastBackuprecipe put: '';
		at: #lastBackupall put: '';
		at: #softwareVersion put: (self softwareVersion);
		yourself.

	MOSS putObject: scripts onFile: (Filename defaultDirectory constructString: '\config\backupScripts.cfg') create: true.
	^scripts</body>

<body package="LamFileManagementUtilityPkg" selector="newDictFor:usingArrayBlock:">newDictFor: aDir usingArrayBlock: aBlock

	| col |
	col := OrderedCollection new.
	aDir directoryContents do: [ :subdir | | path |
		path := ((aDir asString, '\', subdir) asFilename).
		((path exists) and: [ path isDirectory ]) ifTrue: [
			col addAll: (aBlock value: subdir) asOrderedCollection.
		].
	].

	^Dictionary new at: #include put: (col asArray); yourself.</body>

<body package="LamFileManagementUtilityPkg" selector="newDictFor:usingBlock:">newDictFor: aDir usingBlock: aBlock

	| col |
	col := OrderedCollection new.
	aDir directoryContents do: [ :subdir | | path |
		path := ((aDir asString, '\', subdir) asFilename).
		((path exists) and: [ path isDirectory ]) ifTrue: [
			col add: (aBlock value: subdir).
		].
	].

	^Dictionary new at: #include put: (col asArray); yourself.</body>

<body package="LamFileManagementUtilityPkg" selector="softwareVersion">softwareVersion

	| version |
	version := ((CWRegistry current image majorVersion) , '_', (CWRegistry current image minorVersion)).

	^(version replaceAll: (Character space) with: $_)</body>
</methods>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


</st-source>
