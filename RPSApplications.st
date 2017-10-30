<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks®, 7.4 of December 5, 2005 on October 30, 2017 at 12:08:01 am</time-stamp>
<!-- Package RPSApplications* -->


<class>
<name>SimSetupATAC</name>
<environment>Smalltalk</environment>
<super>UI.ApplicationModel</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>securityCleanup hostCVSetup tmCVSetup hiddenOptionsSetup etchPMCVSetup configOptionsSetup portCVSetup setDevelopmentMode atmCVSetup portCVBox setDevelopmentBox configOptionsBox hostBox etchPMCVBox atmCVBox securityBox hiddenOptionsBox tmCVBox scenarioName scnName aHostName aTMCVName aATMCVName pm port file1 file2 file3 file4 file5 hiddenOp developSet tmFilename goldenATC scnDir flowsCopyDir flwDest flws checkedBox checkBox setupAllBox productType pmCVBox </inst-vars>
<class-inst-vars>goldenATC </class-inst-vars>
<imports></imports>
<category>UIApplications-New</category>
<attributes>
<package>RPSApplications</package>
</attributes>
</class>

<class>
<name>RPSTools</name>
<environment>Smalltalk</environment>
<super>SimSetupATAC</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>(none)</category>
<attributes>
<package>RPSApplications</package>
</attributes>
</class>



<methods>
<class-id>SimSetupATAC class</class-id> <category>interface specs</category>

<body package="RPSApplications" selector="windowSpec">windowSpec
	"Tools.UIPainter new openOnClass: self andSelector: #windowSpec"

	&lt;resource: #canvas&gt;
	^#(#{UI.FullSpec} 
		#window: 
		#(#{UI.WindowSpec} 
			#properties: #(#{UI.PropertyListDictionary} #sizeType #specifiedSize #positionType #positionSystemDefault #openType #advanced ) 
			#label: 'RPS ATAC Scenario Creator' 
			#min: #(#{Core.Point} 20 20 ) 
			#max: #(#{Core.Point} 0 0 ) 
			#bounds: #(#{Graphics.Rectangle} 960 414 1570 1000 ) ) 
		#component: 
		#(#{UI.SpecCollection} 
			#collection: #(
				#(#{UI.ActionButtonSpec} 
					#layout: #(#{Graphics.Rectangle} 183 398 395 484 ) 
					#name: #createATACScenario 
					#model: #createATACScenario 
					#label: 'Create ATAC Scenario' 
					#defaultable: true ) 
				#(#{UI.LabelSpec} 
					#layout: #(#{Core.Point} 34 46 ) 
					#name: #Label1 
					#label: 'Select which parameters you would like to setup for simulation below' 
					#style: #'Lam-Large-Bold' ) 
				#(#{UI.DividerSpec} 
					#layout: #(#{Graphics.Rectangle} 47 328 573 332 ) 
					#name: #Divider1 ) 
				#(#{UI.CheckBoxSpec} 
					#layout: #(#{Core.Point} 210 197 ) 
					#name: #setupAllBox 
					#callbacksSpec: 
					#(#{UI.UIEventCallbackSubSpec} 
						#valueChangeSelector: #changeAllWidgets ) 
					#model: #setupAllBox 
					#label: 'Setup All Parameters' ) 
				#(#{UI.ActionButtonSpec} 
					#layout: #(#{Graphics.Rectangle} 120 250 459 294 ) 
					#name: #setupSim 
					#model: #setupSim 
					#label: 'Setup Simulator' 
					#defaultable: true ) 
				#(#{UI.CheckBoxSpec} 
					#layout: #(#{Core.Point} 63 97 ) 
					#name: #atmCV 
					#callbacksSpec: 
					#(#{UI.UIEventCallbackSubSpec} 
						#valueChangeSelector: #changeSetupAllBox ) 
					#model: #atmCVBox 
					#label: 'Setup ATM CVs' ) 
				#(#{UI.CheckBoxSpec} 
					#layout: #(#{Core.Point} 210 97 ) 
					#name: #security 
					#callbacksSpec: 
					#(#{UI.UIEventCallbackSubSpec} 
						#valueChangeSelector: #changeSetupAllBox ) 
					#model: #securityBox 
					#label: 'Remove Security' ) 
				#(#{UI.CheckBoxSpec} 
					#layout: #(#{Core.Point} 394 97 ) 
					#name: #pmCV 
					#callbacksSpec: 
					#(#{UI.UIEventCallbackSubSpec} 
						#valueChangeSelector: #changeSetupAllBox ) 
					#model: #pmCVBox 
					#label: 'Setup PM CVs' ) 
				#(#{UI.CheckBoxSpec} 
					#layout: #(#{Core.Point} 63 124 ) 
					#name: #tmCV 
					#callbacksSpec: 
					#(#{UI.UIEventCallbackSubSpec} 
						#valueChangeSelector: #changeSetupAllBox ) 
					#model: #tmCVBox 
					#label: 'Setup TM CVs' ) 
				#(#{UI.CheckBoxSpec} 
					#layout: #(#{Core.Point} 210 124 ) 
					#name: #hiddenOptions 
					#callbacksSpec: 
					#(#{UI.UIEventCallbackSubSpec} 
						#valueChangeSelector: #changeSetupAllBox ) 
					#model: #hiddenOptionsBox 
					#label: 'Setup Hidden Options' ) 
				#(#{UI.CheckBoxSpec} 
					#layout: #(#{Core.Point} 394 124 ) 
					#name: #host 
					#callbacksSpec: 
					#(#{UI.UIEventCallbackSubSpec} 
						#valueChangeSelector: #changeSetupAllBox ) 
					#model: #hostBox 
					#label: 'Set Host CVs' ) 
				#(#{UI.CheckBoxSpec} 
					#layout: #(#{Core.Point} 394 148 ) 
					#name: #configOptions 
					#callbacksSpec: 
					#(#{UI.UIEventCallbackSubSpec} 
						#valueChangeSelector: #changeSetupAllBox ) 
					#model: #configOptionsBox 
					#label: 'Set Config Options' ) 
				#(#{UI.CheckBoxSpec} 
					#layout: #(#{Core.Point} 210 150 ) 
					#name: #development 
					#callbacksSpec: 
					#(#{UI.UIEventCallbackSubSpec} 
						#valueChangeSelector: #changeSetupAllBox ) 
					#model: #setDevelopmentBox 
					#label: 'Set DevelopmentMode' ) 
				#(#{UI.CheckBoxSpec} 
					#layout: #(#{Core.Point} 63 151 ) 
					#name: #portCV 
					#callbacksSpec: 
					#(#{UI.UIEventCallbackSubSpec} 
						#valueChangeSelector: #changeSetupAllBox ) 
					#model: #portCVBox 
					#label: 'Setup Port CVs' ) ) ) )</body>
</methods>


<methods>
<class-id>SimSetupATAC</class-id> <category>aspects</category>

<body package="RPSApplications" selector="portCVBox">portCVBox
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	^portCVBox isNil
		ifTrue:
			[portCVBox := false asValue]
		ifFalse:
			[portCVBox]</body>

<body package="RPSApplications" selector="etchPMCVSetup">etchPMCVSetup
	| aPMCVName acvDict2 acv2 acv3 acv4 acv5 acv6 acv7 acv8 acv9 acv10 acv11 acv12 acv13 acv14 acv15 acv16 acv17 acv22 acv23 acv24 acv25 acv26 acv27 acv28 arrFlush1 acvDict3 aFlushcv1 |
	
	arrFlush1 := #(#Manifold_AMPDS_AAMPDSFlush01_SequenceFlushEndConditionCheckMode #, #Manifold_AMPDS_AAMPDSFlush02_SequenceFlushEndConditionCheckMode #, #Manifold_AMPDS_AAMPDSFlush03_SequenceFlushEndConditionCheckMode #, #Manifold_AMPDS_ALiquidManifoldFlush01_SequenceFlushEndConditionCheckMode #, #Manifold_AMPDS_BAMPDSFlush01_SequenceFlushEndConditionCheckMode #, #Manifold_AMPDS_BAMPDSFlush02_SequenceFlushEndConditionCheckMode #, #Manifold_AMPDS_BAMPDSFlush03_SequenceFlushEndConditionCheckMode #, #Manifold_AMPDS_BLiquidManifoldFlush01_SequenceFlushEndConditionCheckMode).
	
	pm do: 
			[:each2 | 
			aPMCVName := ('D:\Lam\data\' , each2 , '\' , each2 , '.cv') asFilename.


			"This checks to see if the cv file exists"
			aPMCVName exists 
				ifTrue: 
					[acvDict2 := MOSS getObjectFromFile: aPMCVName.
					acv2 := acvDict2 at: #LowTemperatureAlarmSensorInstalled ifAbsent: [nil].
					acv3 := acvDict2 at: #GasCalLeakbackCorrection ifAbsent: [nil].
					acv4 := acvDict2 at: #LeakbackPumpdownTimeSeconds ifAbsent: [nil].
					acv5 := acvDict2 at: #LeakbackStabilizeTimeSeconds ifAbsent: [nil].
					acv6 := acvDict2 at: #LeakbackTestTimeSeconds ifAbsent: [nil].
					acv7 := acvDict2 at: #NumPPCycles ifAbsent: [nil].
					acv8 := acvDict2 at: #DualGasFeedTestRoutineBaselineTolerance
								ifAbsent: [nil].
					acv9 := acvDict2 at: #TGFTestRoutineOrificeBaselineTolerance
								ifAbsent: [nil].
					acv10 := acvDict2 at: #ESCBiasVoltageTolerance ifAbsent: [nil].
					acv11 := acvDict2 at: #ESCBiasVoltageSoftTolerance ifAbsent: [nil].
					acv12 := acvDict2 at: #TCPRFDefaultPercentMaxReflectedPowerSetpoint
								ifAbsent: [nil].
					acv13 := acvDict2 at: #EnableDailyLeakCheck ifAbsent: [nil].
					acv14 := acvDict2 at: #MaxEndpointTimeAdjustment ifAbsent: [nil].
					acv15 := acvDict2 at: #GapDriveHardToleranceTimeout ifAbsent: [nil].
					acv16 := acvDict2 at: #GapDriveSoftToleranceTimeout ifAbsent: [nil].
					acv17 := acvDict2 at: #LeakbackAlarmRate ifAbsent: [nil].
					acv22 := acvDict2 at: #LeakbackTestTimeSeconds ifAbsent: [nil].
					acv23 := acvDict2 at: #Gas_1_AbsoluteFlowVerifierEnabled ifAbsent: [nil].
					acv24 := acvDict2 at: #Gas_2_AbsoluteFlowVerifierEnabled ifAbsent: [nil].
					acv25 := acvDict2 at: #Simulator_FastFlush ifAbsent: [nil].
					acv26 := acvDict2 at: #HFPurgeCycles ifAbsent: [nil].
					acv27 := acvDict2 at: #HFPurgeBetweenPurgeDelay ifAbsent: [nil].
					acv28 := acvDict2 at: #HFPurgeAfterVentDelay ifAbsent: [nil].
					acv2 = nil 
						ifFalse: [acvDict2 at: #LowTemperatureAlarmSensorInstalled put: false].
					acv3 = nil ifFalse: [acvDict2 at: #GasCalLeakbackCorrection put: 0].
					acv4 = nil ifFalse: [acvDict2 at: #LeakbackPumpdownTimeSeconds put: 30].
					acv5 = nil ifFalse: [acvDict2 at: #LeakbackStabilizeTimeSeconds put: 10].
					acv6 = nil ifFalse: [acvDict2 at: #LeakbackTestTimeSeconds put: 60].
					acv7 = nil ifFalse: [acvDict2 at: #NumPPCycles put: 0].
					acv8 = nil 
						ifFalse: [acvDict2 at: #DualGasFeedTestRoutineBaselineTolerance put: 100].
					acv9 = nil 
						ifFalse: [acvDict2 at: #TGFTestRoutineOrificeBaselineTolerance put: 100].
					acv10 = nil ifFalse: [acvDict2 at: #ESCBiasVoltageTolerance put: 100].
					acv11 = nil ifFalse: [acvDict2 at: #ESCBiasVoltageSoftTolerance put: 100].
					acv12 = nil 
						ifFalse: [acvDict2 at: #TCPRFDefaultPercentMaxReflectedPowerSetpoint put: 100].
					acv13 = nil ifFalse: [acvDict2 at: #EnableDailyLeakCheck put: false].
					acv14 = nil ifFalse: [acvDict2 at: #MaxEndpointTimeAdjustment put: false].
					acv15 = nil ifFalse: [acvDict2 at: #GapDriveHardToleranceTimeout put: 20].
					acv16 = nil ifFalse: [acvDict2 at: #GapDriveSoftToleranceTimeout put: 20].
					acv17 = nil ifFalse: [acvDict2 at: #LeakbackAlarmRate put: 0.0].


					"	('US991*' match: scnName) ifFalse:[
				acv18 := acvDict2 at: #HeliumMinPressureWithESC ifAbsent: [nil].
				acv19 := acvDict2 at: #EnableSchedulingBeforeWacEndTime ifAbsent: [nil].
				acv20 := acvDict2 at: #EnableWaferReceivingBeforeWacEndTime ifAbsent: [nil].
				acv21 := acvDict2 at: #EnableSchedulingBeforeWaferProcessTime ifAbsent: [nil].
				acv18 = nil ifFalse: [acvDict2 at: #HeliumMinPressureWithESC put: 40.0].
				acv19 = nil ifFalse: [acvDict2 at: #EnableSchedulingBeforeWacEndTime put: 60.0].
				acv20 = nil ifFalse: [acvDict2 at: #EnableWaferReceivingBeforeWacEndTime put: 10.0].
				acv21 = nil ifFalse: [acvDict2 at: #EnableSchedulingBeforeWaferProcessEndTime put: 60.0].
				]"
					acv22 = nil ifFalse: [acvDict2 at: #LeakbackTestTimeSeconds put: 60.0].
					acv23 = nil 
						ifFalse: [acvDict2 at: #Gas_1_AbsoluteFlowVerifierEnabled put: true].
					acv24 = nil 
						ifFalse: [acvDict2 at: #Gas_2_AbsoluteFlowVerifierEnabled put: true].
					acv25 = nil ifFalse: [acvDict2 at: #Simulator_FastFlush put: true].
					acv26 = nil ifFalse: [acvDict2 at: #HFPurgeCycles put: 10].
					acv27 = nil ifFalse: [acvDict2 at: #HFPurgeBetweenPurgeDelay put: 10].
					acv28 = nil ifFalse: [acvDict2 at: #HFPurgeAfterVentDelay put: 10].
					MOSS putObject: acvDict2 onFile: aPMCVName].
					
				aPMCVName exists 
				ifTrue:[					
					acvDict3 := MOSS getObjectFromFile: aPMCVName.
					arrFlush1 do: 
						[:each | 
							aFlushcv1 := acvDict3 at: each ifAbsent: [nil].
							aFlushcv1 = false 
							ifFalse: 
								[acvDict3 at: each put: #TimerBased.
								MOSS putObject: acvDict3 onFile: aPMCVName
								]
						].										
					]
				]</body>

<body package="RPSApplications" selector="portCVSetup">portCVSetup
	| aPortCVName acvDict3 aportcv2 aportcv3 aportcv4 aportcv5 aportcv6 aportcv7 aportcv8 aportcv9 aportcv10 |
	port do: 
			[:each3 | 
			aPortCVName := ('D:\Lam\data\' , each3 , '\' , each3 , '.cv') asFilename.


			"This checks to see if the cv file exists"
			aPortCVName exists 
				ifTrue: 
					[acvDict3 := MOSS getObjectFromFile: aPortCVName.
					aportcv2 := acvDict3 at: #Port1SimulatedMapping ifAbsent: [nil].
					aportcv3 := acvDict3 at: #Port2SimulatedMapping ifAbsent: [nil].
					aportcv4 := acvDict3 at: #Port3SimulatedMapping ifAbsent: [nil].
					aportcv5 := acvDict3 at: #Port4SimulatedMapping ifAbsent: [nil].
					aportcv6 := acvDict3 at: #Port5SimulatedMapping ifAbsent: [nil].
					aportcv7 := acvDict3 at: #AGV1Enabled ifAbsent: [nil].
					aportcv8 := acvDict3 at: #AGV2Enabled ifAbsent: [nil].
					aportcv9 := acvDict3 at: #AGV3Enabled ifAbsent: [nil].
					aportcv10 := acvDict3 at: #AGV4Enabled ifAbsent: [nil].
					aportcv2 = nil 
						ifFalse: 
							[acvDict3 at: #Port1SimulatedMapping put: '1111111111111111111111111'].
					aportcv3 = nil 
						ifFalse: 
							[acvDict3 at: #Port2SimulatedMapping put: '1111111111111111111111111'].
					aportcv4 = nil 
						ifFalse: 
							[acvDict3 at: #Port3SimulatedMapping put: '1111111111111111111111111'].
					aportcv5 = nil 
						ifFalse: 
							[acvDict3 at: #Port4SimulatedMapping put: '1111111111111111111111111'].
					aportcv6 = nil 
						ifFalse: 
							[acvDict3 at: #Port5SimulatedMapping put: '1111111111111111111111111'].
					aportcv7 = nil ifFalse: [acvDict3 at: #AGV1Enabled put: false].
					aportcv8 = nil ifFalse: [acvDict3 at: #AGV2Enabled put: false].
					aportcv9 = nil ifFalse: [acvDict3 at: #AGV3Enabled put: false].
					aportcv10 = nil ifFalse: [acvDict3 at: #AGV4Enabled put: false].
					MOSS putObject: acvDict3 onFile: aPortCVName]]</body>

<body package="RPSApplications" selector="atmCVSetup">atmCVSetup
	| acvDict4 arr2 aATMcv1 |
	
	Transcript show: 'ATM'; cr.
	aATMCVName exists 
		ifTrue: 
			[acvDict4 := MOSS getObjectFromFile: aATMCVName.

			"This array sets up all the variables that we want to change.  If you want to add more, just add it to this Array"
			arr2 := #(#Slot01_CoverWaferMaxUsage #Slot02_CoverWaferMaxUsage #Slot03_CoverWaferMaxUsage #Slot04_CoverWaferMaxUsage #Slot05_CoverWaferMaxUsage #Slot06_CoverWaferMaxUsage #Slot07_CoverWaferMaxUsage #Slot08_CoverWaferMaxUsage #Slot09_CoverWaferMaxUsage #Slot10_CoverWaferMaxUsage #Slot11_CoverWaferMaxUsage #Slot12_CoverWaferMaxUsage #Slot13_CoverWaferMaxUsage #Slot14_CoverWaferMaxUsage #Slot15_CoverWaferMaxUsage #Slot16_CoverWaferMaxUsage #Slot17_CoverWaferMaxUsage #Slot18_CoverWaferMaxUsage #Slot19_CoverWaferMaxUsage #Slot20_CoverWaferMaxUsage #Slot21_CoverWaferMaxUsage #Slot22_CoverWaferMaxUsage #Slot23_CoverWaferMaxUsage #Slot24_CoverWaferMaxUsage #Slot25_CoverWaferMaxUsage #Slot26_CoverWaferMaxUsage #Slot27_CoverWaferMaxUsage #Slot28_CoverWaferMaxUsage #Slot29_CoverWaferMaxUsage #Slot30_CoverWaferMaxUsage #Slot31_CoverWaferMaxUsage #Slot32_CoverWaferMaxUsage #Slot33_CoverWaferMaxUsage #Slot34_CoverWaferMaxUsage #Slot35_CoverWaferMaxUsage #Slot36_CoverWaferMaxUsage #Slot37_CoverWaferMaxUsage #Slot38_CoverWaferMaxUsage #Slot39_CoverWaferMaxUsage #Slot40_CoverWaferMaxUsage #Slot41_CoverWaferMaxUsage #Slot42_CoverWaferMaxUsage #Slot43_CoverWaferMaxUsage #Slot44_CoverWaferMaxUsage #Slot45_CoverWaferMaxUsage #Slot46_CoverWaferMaxUsage #Slot47_CoverWaferMaxUsage #Slot48_CoverWaferMaxUsage #Slot49_CoverWaferMaxUsage #Slot50_CoverWaferMaxUsage).

			"Enumerate through the array and make the changes"
			arr2 do: 
					[:each | 
					aATMcv1 := acvDict4 at: each ifAbsent: [nil].
					aATMcv1 = nil 
						ifFalse: 
							[acvDict4 at: each put: 100.
							MOSS putObject: acvDict4 onFile: aATMCVName]]]</body>

<body package="RPSApplications" selector="tmCVBox">tmCVBox
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	^tmCVBox isNil
		ifTrue:
			[tmCVBox := false asValue]
		ifFalse:
			[tmCVBox]</body>

<body package="RPSApplications" selector="hostCVSetup">hostCVSetup
	| acvHostDict acvHostDict2 |
	aHostName exists 
		ifTrue: 
			[acvHostDict := MOSS getObjectFromFile: aHostName.	"Opens up Moss to look at dictionary entries"
			acvHostDict2 := (acvHostDict at: #definedMachineConstants) 
						at: #'factoryInterface.secsConnection'.	"Dictionary within a Dictionary"
			acvHostDict2
				at: #LocalPort put: 4000;
				at: #LocalAddress put: '127.0.0.1';
				at: #DeviceID put: 10.
			MOSS putObject: acvHostDict onFile: aHostName]</body>

<body package="RPSApplications" selector="securityCleanup">securityCleanup
	file1 exists ifTrue: [file1 delete].
	file2 exists ifTrue: [file2 delete].
	file3 exists ifTrue: [file3 delete].
	file4 exists ifTrue: [file4 delete].
	file5 exists ifTrue: [file5 delete]</body>

<body package="RPSApplications" selector="hiddenOptionsSetup">hiddenOptionsSetup
	| aStream2 |
	
	hiddenOp exists ifTrue:[
	aStream2 := hiddenOp readAppendStream.
	aStream2 nextPutAll: 'LamATAC'.
	aStream2 cr.
	aStream2 close]
	
	ifFalse:[ Dialog warn: 'Hidden options file does not exist!'].</body>

<body package="RPSApplications" selector="hiddenOptionsBox">hiddenOptionsBox
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	^hiddenOptionsBox isNil
		ifTrue:
			[hiddenOptionsBox := false asValue]
		ifFalse:
			[hiddenOptionsBox]</body>

<body package="RPSApplications" selector="hostBox">hostBox
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	^hostBox isNil
		ifTrue:
			[hostBox := false asValue]
		ifFalse:
			[hostBox]</body>

<body package="RPSApplications" selector="etchPMCVBox">etchPMCVBox
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	^etchPMCVBox isNil
		ifTrue:
			[etchPMCVBox := false asValue]
		ifFalse:
			[etchPMCVBox]</body>

<body package="RPSApplications" selector="securityBox">securityBox
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	^securityBox isNil
		ifTrue:
			[securityBox := false asValue]
		ifFalse:
			[securityBox]</body>

<body package="RPSApplications" selector="setDevelopmentMode">setDevelopmentMode
	| developContents checkDevelop checkDevelopContents z z1 z2 z3 fileStream2 |
	developContents := developSet contentsOfEntireFile.
	checkDevelop := developContents 
				asArrayOfSubstringsDelimitedBy: Character cr.
	checkDevelopContents := checkDevelop asOrderedCollection.
	z := developContents findIndexesOfSubString: '		forDevelopment: false'.
	z isEmpty 
		ifFalse: 
			[z1 := z at: 1.
			z2 := z1 at: 1.
			z3 := z1 at: 2.
			z2 &lt; 600 
				ifTrue: 
					[developContents := developContents 
								copyReplaceFrom: z2
								to: z3
								with: '		forDevelopment: true'].
			fileStream2 := developSet asFilename writeStream.
			[fileStream2 nextPutAll: developContents] 
				valueNowOrOnUnwindDo: [fileStream2 close]]</body>

<body package="RPSApplications" selector="configOptionsBox">configOptionsBox
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	^configOptionsBox isNil
		ifTrue:
			[configOptionsBox := false asValue]
		ifFalse:
			[configOptionsBox]</body>

<body package="RPSApplications" selector="scenarioName">scenarioName
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."
	
	scenarioName := 'Generic Tool ID'.

	^scenarioName</body>

<body package="RPSApplications" selector="tmCVSetup">tmCVSetup
	| acvDict1 arr1 acv1 acv2 |
	aTMCVName := 'D:\Lam\data\TransferChamber\TransferChamber.cv' asFilename.
	acvDict1 := MOSS getObjectFromFile: aTMCVName.
	"acvDictHost := MOSS getObjectFromFile: aHostName."


	"This array setups all the variables that we want to change. If you wanted to add more, just add it to this array"
	arr1 := #(#EnableDynamicAlignmentAirLock1 #EnableDynamicAlignmentAirLock2 #EnableDynamicAlignmentAirLock3 #EnableDynamicAlignmentAirLock4 #EnableDynamicAlignmentPM1 #EnableDynamicAlignmentPM2 #EnableDynamicAlignmentPM3 #EnableDynamicAlignmentPM4 #EnableDynamicAlignmentPM5 #EnableDynamicAlignmentPM6 #EnableDynamicAlignmentPM7 #EnableDynamicAlignmentPM8 #EnableDynamicAlignmentAirlock3 #EnableDynamicAlignmentAirlock4 #EnableDynamicAlignmentDegas1 #EnableDynamicAlignmentDegas2 #LocalDynamicAlignmentAirlock1 #LocalDynamicAlignmentAirlock2 #LocalDynamicAlignmentAirlock3 #LocalDynamicAlignmentAirlock4 #LocalDynamicAlignmentPM1 #LocalDynamicAlignmentPM2 #LocalDynamicAlignmentPM3 #LocalDynamicAlignmentPM4 #LocalDynamicAlignmentPM5 #LocalDynamicAlignmentPM6 #LocalDynamicAlignmentPM7 #LocalDynamicAlignmentPM8).


	"Enumerate through the array and make the changes"
	arr1 do: 
			[:each | 
			acv1 := acvDict1 at: each ifAbsent: [nil].
			acv1 = nil 
				ifFalse: 
					[acvDict1 at: each put: false.
					MOSS putObject: acvDict1 onFile: aTMCVName]].
	acv2 := acvDict1 at: #DynamicAlignmentCompensationDisable ifAbsent: [nil].
	acv2 = nil 
				ifFalse: [acvDict1 at: #DynamicAlignmentCompensationDisable put: true]. 
	MOSS putObject: acvDict1 onFile: aTMCVName</body>

<body package="RPSApplications" selector="configOptionsSetup">configOptionsSetup
	| filename contents check checkContents fileStream |
	pm do: 
			[:each3 | 
			filename := ('D:\Lam\data\' , each3 , '\ConfigOptions.txt') asFilename.
			filename exists 
				ifTrue: 
					[contents := filename contentsOfEntireFile.
					check := contents asArrayOfSubstringsDelimitedBy: Character cr.
					checkContents := check asOrderedCollection.
					(checkContents includes: 'PlasmaDetectionWithOES: true') 
						ifTrue: 
							[contents := contents copyReplaceAll: 'PlasmaDetectionWithOES: true'
										with: 'PlasmaDetectionWithOES: false'].
					(checkContents includes: 'HeaterDutyCycleMonitor: true') 
						ifTrue: 
							[contents := contents copyReplaceAll: 'HeaterDutyCycleMonitor: true'
										with: 'HeaterDutyCycleMonitor: false'].
					(checkContents includes: 'ViProbeSensorServer: #VIPR') 
						ifTrue: 
							[contents := contents copyReplaceAll: 'ViProbeSensorServer: #VIPR'
										with: 'ViProbeSensorServer: #Not_Installed'].
					fileStream := filename asFilename writeStream.
					[fileStream nextPutAll: contents] valueNowOrOnUnwindDo: [fileStream close]]]</body>

<body package="RPSApplications" selector="etchPMSetup">etchPMSetup
	| aPMCVName acvDict2 acv2 acv3 acv4 acv5 acv6 acv7 acv8 acv9 acv10 acv11 acv12 acv13 acv14 acv15 acv16 acv17 acv22 acv23 acv24 acv25 acv26 acv27 acv28 arrFlush1 acvDict3 aFlushcv1 |
	
	arrFlush1 := #(#Manifold_AMPDS_AAMPDSFlush01_SequenceFlushEndConditionCheckMode #, #Manifold_AMPDS_AAMPDSFlush02_SequenceFlushEndConditionCheckMode #, #Manifold_AMPDS_AAMPDSFlush03_SequenceFlushEndConditionCheckMode #, #Manifold_AMPDS_ALiquidManifoldFlush01_SequenceFlushEndConditionCheckMode #, #Manifold_AMPDS_BAMPDSFlush01_SequenceFlushEndConditionCheckMode #, #Manifold_AMPDS_BAMPDSFlush02_SequenceFlushEndConditionCheckMode #, #Manifold_AMPDS_BAMPDSFlush03_SequenceFlushEndConditionCheckMode #, #Manifold_AMPDS_BLiquidManifoldFlush01_SequenceFlushEndConditionCheckMode).
	
	pm do: 
			[:each2 | 
			aPMCVName := ('D:\Lam\data\' , each2 , '\' , each2 , '.cv') asFilename.


			"This checks to see if the cv file exists"
			aPMCVName exists 
				ifTrue: 
					[acvDict2 := MOSS getObjectFromFile: aPMCVName.
					acv2 := acvDict2 at: #LowTemperatureAlarmSensorInstalled ifAbsent: [nil].
					acv3 := acvDict2 at: #GasCalLeakbackCorrection ifAbsent: [nil].
					acv4 := acvDict2 at: #LeakbackPumpdownTimeSeconds ifAbsent: [nil].
					acv5 := acvDict2 at: #LeakbackStabilizeTimeSeconds ifAbsent: [nil].
					acv6 := acvDict2 at: #LeakbackTestTimeSeconds ifAbsent: [nil].
					acv7 := acvDict2 at: #NumPPCycles ifAbsent: [nil].
					acv8 := acvDict2 at: #DualGasFeedTestRoutineBaselineTolerance
								ifAbsent: [nil].
					acv9 := acvDict2 at: #TGFTestRoutineOrificeBaselineTolerance
								ifAbsent: [nil].
					acv10 := acvDict2 at: #ESCBiasVoltageTolerance ifAbsent: [nil].
					acv11 := acvDict2 at: #ESCBiasVoltageSoftTolerance ifAbsent: [nil].
					acv12 := acvDict2 at: #TCPRFDefaultPercentMaxReflectedPowerSetpoint
								ifAbsent: [nil].
					acv13 := acvDict2 at: #EnableDailyLeakCheck ifAbsent: [nil].
					acv14 := acvDict2 at: #MaxEndpointTimeAdjustment ifAbsent: [nil].
					acv15 := acvDict2 at: #GapDriveHardToleranceTimeout ifAbsent: [nil].
					acv16 := acvDict2 at: #GapDriveSoftToleranceTimeout ifAbsent: [nil].
					acv17 := acvDict2 at: #LeakbackAlarmRate ifAbsent: [nil].
					acv22 := acvDict2 at: #LeakbackTestTimeSeconds ifAbsent: [nil].
					acv23 := acvDict2 at: #Gas_1_AbsoluteFlowVerifierEnabled ifAbsent: [nil].
					acv24 := acvDict2 at: #Gas_2_AbsoluteFlowVerifierEnabled ifAbsent: [nil].
					acv25 := acvDict2 at: #Simulator_FastFlush ifAbsent: [nil].
					acv26 := acvDict2 at: #HFPurgeCycles ifAbsent: [nil].
					acv27 := acvDict2 at: #HFPurgeBetweenPurgeDelay ifAbsent: [nil].
					acv28 := acvDict2 at: #HFPurgeAfterVentDelay ifAbsent: [nil].
					acv2 = nil 
						ifFalse: [acvDict2 at: #LowTemperatureAlarmSensorInstalled put: false].
					acv3 = nil ifFalse: [acvDict2 at: #GasCalLeakbackCorrection put: 0].
					acv4 = nil ifFalse: [acvDict2 at: #LeakbackPumpdownTimeSeconds put: 30].
					acv5 = nil ifFalse: [acvDict2 at: #LeakbackStabilizeTimeSeconds put: 10].
					acv6 = nil ifFalse: [acvDict2 at: #LeakbackTestTimeSeconds put: 60].
					acv7 = nil ifFalse: [acvDict2 at: #NumPPCycles put: 0].
					acv8 = nil 
						ifFalse: [acvDict2 at: #DualGasFeedTestRoutineBaselineTolerance put: 100].
					acv9 = nil 
						ifFalse: [acvDict2 at: #TGFTestRoutineOrificeBaselineTolerance put: 100].
					acv10 = nil ifFalse: [acvDict2 at: #ESCBiasVoltageTolerance put: 100].
					acv11 = nil ifFalse: [acvDict2 at: #ESCBiasVoltageSoftTolerance put: 100].
					acv12 = nil 
						ifFalse: [acvDict2 at: #TCPRFDefaultPercentMaxReflectedPowerSetpoint put: 100].
					acv13 = nil ifFalse: [acvDict2 at: #EnableDailyLeakCheck put: false].
					acv14 = nil ifFalse: [acvDict2 at: #MaxEndpointTimeAdjustment put: false].
					acv15 = nil ifFalse: [acvDict2 at: #GapDriveHardToleranceTimeout put: 20].
					acv16 = nil ifFalse: [acvDict2 at: #GapDriveSoftToleranceTimeout put: 20].
					acv17 = nil ifFalse: [acvDict2 at: #LeakbackAlarmRate put: 0.0].


					"	('US991*' match: scnName) ifFalse:[
				acv18 := acvDict2 at: #HeliumMinPressureWithESC ifAbsent: [nil].
				acv19 := acvDict2 at: #EnableSchedulingBeforeWacEndTime ifAbsent: [nil].
				acv20 := acvDict2 at: #EnableWaferReceivingBeforeWacEndTime ifAbsent: [nil].
				acv21 := acvDict2 at: #EnableSchedulingBeforeWaferProcessTime ifAbsent: [nil].
				acv18 = nil ifFalse: [acvDict2 at: #HeliumMinPressureWithESC put: 40.0].
				acv19 = nil ifFalse: [acvDict2 at: #EnableSchedulingBeforeWacEndTime put: 60.0].
				acv20 = nil ifFalse: [acvDict2 at: #EnableWaferReceivingBeforeWacEndTime put: 10.0].
				acv21 = nil ifFalse: [acvDict2 at: #EnableSchedulingBeforeWaferProcessEndTime put: 60.0].
				]"
					acv22 = nil ifFalse: [acvDict2 at: #LeakbackTestTimeSeconds put: 60.0].
					acv23 = nil 
						ifFalse: [acvDict2 at: #Gas_1_AbsoluteFlowVerifierEnabled put: true].
					acv24 = nil 
						ifFalse: [acvDict2 at: #Gas_2_AbsoluteFlowVerifierEnabled put: true].
					acv25 = nil ifFalse: [acvDict2 at: #Simulator_FastFlush put: true].
					acv26 = nil ifFalse: [acvDict2 at: #HFPurgeCycles put: 10].
					acv27 = nil ifFalse: [acvDict2 at: #HFPurgeBetweenPurgeDelay put: 10].
					acv28 = nil ifFalse: [acvDict2 at: #HFPurgeAfterVentDelay put: 10].
					MOSS putObject: acvDict2 onFile: aPMCVName].
					
				aPMCVName exists 
				ifTrue:[					
					acvDict3 := MOSS getObjectFromFile: aPMCVName.
					arrFlush1 do: 
						[:each | 
							aFlushcv1 := acvDict3 at: each ifAbsent: [nil].
							aFlushcv1 = false 
							ifFalse: 
								[acvDict3 at: each put: #TimerBased.
								MOSS putObject: acvDict3 onFile: aPMCVName
								]
						].										
					]
				]</body>

<body package="RPSApplications" selector="pmCVBox">pmCVBox
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	^pmCVBox isNil ifTrue: [pmCVBox := false asValue] ifFalse: [pmCVBox]</body>

<body package="RPSApplications" selector="atmCVBox">atmCVBox
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	^atmCVBox isNil
		ifTrue:
			[atmCVBox := false asValue]
		ifFalse:
			[atmCVBox value.]</body>

<body package="RPSApplications" selector="pmCVSetup">pmCVSetup
	| aPMCVName acvDict2 acv2 acv3 acv4 acv5 acv6 acv7 acv8 acv9 acv10 acv11 acv12 acv13 acv14 acv15 acv16 acv17 acv22 acv23 acv24 acv25 acv26 acv27 acv28 arrFlush1 acvDict3 aFlushcv1 |
	
	arrFlush1 := #(#Manifold_AMPDS_AAMPDSFlush01_SequenceFlushEndConditionCheckMode #, #Manifold_AMPDS_AAMPDSFlush02_SequenceFlushEndConditionCheckMode #, #Manifold_AMPDS_AAMPDSFlush03_SequenceFlushEndConditionCheckMode #, #Manifold_AMPDS_ALiquidManifoldFlush01_SequenceFlushEndConditionCheckMode #, #Manifold_AMPDS_BAMPDSFlush01_SequenceFlushEndConditionCheckMode #, #Manifold_AMPDS_BAMPDSFlush02_SequenceFlushEndConditionCheckMode #, #Manifold_AMPDS_BAMPDSFlush03_SequenceFlushEndConditionCheckMode #, #Manifold_AMPDS_BLiquidManifoldFlush01_SequenceFlushEndConditionCheckMode).
	
	pm do: 
			[:each2 | 
			aPMCVName := ('D:\Lam\data\' , each2 , '\' , each2 , '.cv') asFilename.


			"This checks to see if the cv file exists"
			aPMCVName exists 
				ifTrue: 
					[acvDict2 := MOSS getObjectFromFile: aPMCVName.
					acv2 := acvDict2 at: #LowTemperatureAlarmSensorInstalled ifAbsent: [nil].
					acv3 := acvDict2 at: #GasCalLeakbackCorrection ifAbsent: [nil].
					acv4 := acvDict2 at: #LeakbackPumpdownTimeSeconds ifAbsent: [nil].
					acv5 := acvDict2 at: #LeakbackStabilizeTimeSeconds ifAbsent: [nil].
					acv6 := acvDict2 at: #LeakbackTestTimeSeconds ifAbsent: [nil].
					acv7 := acvDict2 at: #NumPPCycles ifAbsent: [nil].
					acv8 := acvDict2 at: #DualGasFeedTestRoutineBaselineTolerance
								ifAbsent: [nil].
					acv9 := acvDict2 at: #TGFTestRoutineOrificeBaselineTolerance
								ifAbsent: [nil].
					acv10 := acvDict2 at: #ESCBiasVoltageTolerance ifAbsent: [nil].
					acv11 := acvDict2 at: #ESCBiasVoltageSoftTolerance ifAbsent: [nil].
					acv12 := acvDict2 at: #TCPRFDefaultPercentMaxReflectedPowerSetpoint
								ifAbsent: [nil].
					acv13 := acvDict2 at: #EnableDailyLeakCheck ifAbsent: [nil].
					acv14 := acvDict2 at: #MaxEndpointTimeAdjustment ifAbsent: [nil].
					acv15 := acvDict2 at: #GapDriveHardToleranceTimeout ifAbsent: [nil].
					acv16 := acvDict2 at: #GapDriveSoftToleranceTimeout ifAbsent: [nil].
					acv17 := acvDict2 at: #LeakbackAlarmRate ifAbsent: [nil].
					acv22 := acvDict2 at: #LeakbackTestTimeSeconds ifAbsent: [nil].
					acv23 := acvDict2 at: #Gas_1_AbsoluteFlowVerifierEnabled ifAbsent: [nil].
					acv24 := acvDict2 at: #Gas_2_AbsoluteFlowVerifierEnabled ifAbsent: [nil].
					acv25 := acvDict2 at: #Simulator_FastFlush ifAbsent: [nil].
					acv26 := acvDict2 at: #HFPurgeCycles ifAbsent: [nil].
					acv27 := acvDict2 at: #HFPurgeBetweenPurgeDelay ifAbsent: [nil].
					acv28 := acvDict2 at: #HFPurgeAfterVentDelay ifAbsent: [nil].
					acv2 = nil 
						ifFalse: [acvDict2 at: #LowTemperatureAlarmSensorInstalled put: false].
					acv3 = nil ifFalse: [acvDict2 at: #GasCalLeakbackCorrection put: 0].
					acv4 = nil ifFalse: [acvDict2 at: #LeakbackPumpdownTimeSeconds put: 30].
					acv5 = nil ifFalse: [acvDict2 at: #LeakbackStabilizeTimeSeconds put: 10].
					acv6 = nil ifFalse: [acvDict2 at: #LeakbackTestTimeSeconds put: 60].
					acv7 = nil ifFalse: [acvDict2 at: #NumPPCycles put: 0].
					acv8 = nil 
						ifFalse: [acvDict2 at: #DualGasFeedTestRoutineBaselineTolerance put: 100].
					acv9 = nil 
						ifFalse: [acvDict2 at: #TGFTestRoutineOrificeBaselineTolerance put: 100].
					acv10 = nil ifFalse: [acvDict2 at: #ESCBiasVoltageTolerance put: 100].
					acv11 = nil ifFalse: [acvDict2 at: #ESCBiasVoltageSoftTolerance put: 100].
					acv12 = nil 
						ifFalse: [acvDict2 at: #TCPRFDefaultPercentMaxReflectedPowerSetpoint put: 100].
					acv13 = nil ifFalse: [acvDict2 at: #EnableDailyLeakCheck put: false].
					acv14 = nil ifFalse: [acvDict2 at: #MaxEndpointTimeAdjustment put: false].
					acv15 = nil ifFalse: [acvDict2 at: #GapDriveHardToleranceTimeout put: 20].
					acv16 = nil ifFalse: [acvDict2 at: #GapDriveSoftToleranceTimeout put: 20].
					acv17 = nil ifFalse: [acvDict2 at: #LeakbackAlarmRate put: 0.0].


					"	('US991*' match: scnName) ifFalse:[
				acv18 := acvDict2 at: #HeliumMinPressureWithESC ifAbsent: [nil].
				acv19 := acvDict2 at: #EnableSchedulingBeforeWacEndTime ifAbsent: [nil].
				acv20 := acvDict2 at: #EnableWaferReceivingBeforeWacEndTime ifAbsent: [nil].
				acv21 := acvDict2 at: #EnableSchedulingBeforeWaferProcessTime ifAbsent: [nil].
				acv18 = nil ifFalse: [acvDict2 at: #HeliumMinPressureWithESC put: 40.0].
				acv19 = nil ifFalse: [acvDict2 at: #EnableSchedulingBeforeWacEndTime put: 60.0].
				acv20 = nil ifFalse: [acvDict2 at: #EnableWaferReceivingBeforeWacEndTime put: 10.0].
				acv21 = nil ifFalse: [acvDict2 at: #EnableSchedulingBeforeWaferProcessEndTime put: 60.0].
				]"
					acv22 = nil ifFalse: [acvDict2 at: #LeakbackTestTimeSeconds put: 60.0].
					acv23 = nil 
						ifFalse: [acvDict2 at: #Gas_1_AbsoluteFlowVerifierEnabled put: true].
					acv24 = nil 
						ifFalse: [acvDict2 at: #Gas_2_AbsoluteFlowVerifierEnabled put: true].
					acv25 = nil ifFalse: [acvDict2 at: #Simulator_FastFlush put: true].
					acv26 = nil ifFalse: [acvDict2 at: #HFPurgeCycles put: 10].
					acv27 = nil ifFalse: [acvDict2 at: #HFPurgeBetweenPurgeDelay put: 10].
					acv28 = nil ifFalse: [acvDict2 at: #HFPurgeAfterVentDelay put: 10].
					MOSS putObject: acvDict2 onFile: aPMCVName].
					
				aPMCVName exists 
				ifTrue:[					
					acvDict3 := MOSS getObjectFromFile: aPMCVName.
					arrFlush1 do: 
						[:each | 
							aFlushcv1 := acvDict3 at: each ifAbsent: [nil].
							aFlushcv1 = false 
							ifFalse: 
								[acvDict3 at: each put: #TimerBased.
								MOSS putObject: acvDict3 onFile: aPMCVName
								]
						].										
					]
				]</body>

<body package="RPSApplications" selector="policeSetupAllParameters">policeSetupAllParameters
	self setupAllBox value 
		ifTrue: [
				(self builder componentAt: #atmCV) disable.
				(self builder componentAt: #tmCV) disable.
				(self builder componentAt: #portCV) disable.
				(self builder componentAt: #security) disable.
				(self builder componentAt: #hiddenOptions) disable.
				(self builder componentAt: #development) disable.
				(self builder componentAt: #etchPMCV) disable.
				(self builder componentAt: #host) disable.
				(self builder componentAt: #configOptions) disable.
		]
		ifFalse: [
		(self builder componentAt: #atmCV) enable.
		(self builder componentAt: #tmCV) enable.
		(self builder componentAt: #portCV) enable.
		(self builder componentAt: #security) enable.
		(self builder componentAt: #hiddenOptions) enable.
		(self builder componentAt: #development) enable.
		(self builder componentAt: #etchPMCV) enable.
		(self builder componentAt: #host) enable.
		(self builder componentAt: #configOptions) enable.
		
		]</body>

<body package="RPSApplications" selector="setDevelopmentBox">setDevelopmentBox
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	^setDevelopmentBox isNil
		ifTrue:
			[setDevelopmentBox := false asValue]
		ifFalse:
			[setDevelopmentBox]</body>

<body package="RPSApplications" selector="setupAllBox">setupAllBox
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	^setupAllBox isNil
		ifTrue:
			[setupAllBox := false asValue]
		ifFalse:
			[setupAllBox]</body>
</methods>

<methods>
<class-id>SimSetupATAC</class-id> <category>accessing</category>

<body package="RPSApplications" selector="file5">file5
	^file5</body>

<body package="RPSApplications" selector="flwDest">flwDest
	^flwDest</body>

<body package="RPSApplications" selector="flowsCopyDir:">flowsCopyDir: anObject
	flowsCopyDir := anObject</body>

<body package="RPSApplications" selector="aTMCVName:">aTMCVName: anObject
	aTMCVName := anObject</body>

<body package="RPSApplications" selector="goldenReadIn">goldenReadIn

| goldenArray |
	goldenArray := #('Test Case Name {AlarmClear.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Acknowledge Alarms} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=AlarmClear.atc}Parameters {}' 'Test Case Name {InitializeTM.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Initialize TM, WSBARG1=#(''2'' ''Initialize All*'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=InitializeTM.atc}Parameters {}'
'Test Case Name {TMPumpdown.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0 , INTRODUCTIONTEXT=TM Pumpdown, WSBARG1=#(''1'' ''pumpTM*'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=TMPumpdown.atc}Parameters {}'
'Test Case Name {PmMaintAction_Pumpdown.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0 , INTRODUCTIONTEXT=PmMaintAction_Pumpdown, WSBARG1=#(''PM1'' ''Pump down''), WSBARG2=#(''2'' ''PumpDown*'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PmMaintAction_Pumpdown.atc}Parameters {}'
'Test Case Name {PmMaintAction_Pumpdown.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0 , INTRODUCTIONTEXT=PmMaintAction_Pumpdown, WSBARG1=#(''PM2'' ''Pump down''), WSBARG2=#(''2'' ''PumpDown*'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PmMaintAction_Pumpdown.atc}Parameters {}'
'Test Case Name {PmMaintAction_Pumpdown.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0 , INTRODUCTIONTEXT=PmMaintAction_Pumpdown, WSBARG1=#(''PM3'' ''Pump down''), WSBARG2=#(''2'' ''PumpDown*'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PmMaintAction_Pumpdown.atc}Parameters {}'
'Test Case Name {PmMaintAction_Pumpdown.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0 , INTRODUCTIONTEXT=PmMaintAction_Pumpdown, WSBARG1=#(''PM4'' ''Pump down''), WSBARG2=#(''2'' ''PumpDown*'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PmMaintAction_Pumpdown.atc}Parameters {}'
'Test Case Name {PmMaintAction_Pumpdown.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0 , INTRODUCTIONTEXT=PmMaintAction_Pumpdown, WSBARG1=#(''PM5'' ''Pump down''), WSBARG2=#(''2'' ''PumpDown*'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PmMaintAction_Pumpdown.atc}Parameters {}'
'Test Case Name {PmMaintAction_Pumpdown.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0 , INTRODUCTIONTEXT=PmMaintAction_Pumpdown, WSBARG1=#(''PM6'' ''Pump down''), WSBARG2=#(''2'' ''PumpDown*'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PmMaintAction_Pumpdown.atc}Parameters {}'
'Test Case Name {PmMaintAction_Pumpdown.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0 , INTRODUCTIONTEXT=PmMaintAction_Pumpdown, WSBARG1=#(''PM7'' ''Pump down''), WSBARG2=#(''2'' ''PumpDown*'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PmMaintAction_Pumpdown.atc}Parameters {}'
'Test Case Name {PmMaintAction_Pumpdown.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0 , INTRODUCTIONTEXT=PmMaintAction_Pumpdown, WSBARG1=#(''PM8'' ''Pump down''), WSBARG2=#(''2'' ''PumpDown*'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PmMaintAction_Pumpdown.atc}Parameters {}'
'Test Case Name {PmLeakBack.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=PM LeakBack Test, WSBARG3=#(''PM1'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PmLeakBack.atc}Parameters {}'
'Test Case Name {PmLeakBack.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=PM LeakBack Test, WSBARG3=#(''PM2'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PmLeakBack.atc}Parameters {}'
'Test Case Name {PmLeakBack.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=PM LeakBack Test, WSBARG3=#(''PM3'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PmLeakBack.atc}Parameters {}'
'Test Case Name {PmLeakBack.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=PM LeakBack Test, WSBARG3=#(''PM4'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PmLeakBack.atc}Parameters {}'
'Test Case Name {PmLeakBack.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=PM LeakBack Test, WSBARG3=#(''PM5'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PmLeakBack.atc}Parameters {}'
'Test Case Name {PmLeakBack.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=PM LeakBack Test, WSBARG3=#(''PM6'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PmLeakBack.atc}Parameters {}'
'Test Case Name {PmLeakBack.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=PM LeakBack Test, WSBARG3=#(''PM7'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PmLeakBack.atc}Parameters {}'
'Test Case Name {PmLeakBack.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=PM LeakBack Test, WSBARG3=#(''PM8'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PmLeakBack.atc}Parameters {}'
'Test Case Name {PartialPressure.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Partial Pressure Test, WSBARG3=#(''PM1'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PartialPressure.atc}Parameters {}'
'Test Case Name {PartialPressure.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Partial Pressure Test, WSBARG3=#(''PM2'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PartialPressure.atc}Parameters {}'
'Test Case Name {PartialPressure.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Partial Pressure Test, WSBARG3=#(''PM3'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PartialPressure.atc}Parameters {}'
'Test Case Name {PartialPressure.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Partial Pressure Test, WSBARG3=#(''PM4'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PartialPressure.atc}Parameters {}'
'Test Case Name {PartialPressure.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Partial Pressure Test, WSBARG3=#(''PM5'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PartialPressure.atc}Parameters {}'
'Test Case Name {PartialPressure.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Partial Pressure Test, WSBARG3=#(''PM6'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PartialPressure.atc}Parameters {}'
'Test Case Name {PartialPressure.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Partial Pressure Test, WSBARG3=#(''PM7'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PartialPressure.atc}Parameters {}'
'Test Case Name {PartialPressure.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Partial Pressure Test, WSBARG3=#(''PM8'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PartialPressure.atc}Parameters {}'
'Test Case Name {Conductance.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Conductance Test, WSBARG3=#(''PM1'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=Conductance.atc}Parameters {}'
'Test Case Name {Conductance.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Conductance Test, WSBARG3=#(''PM2'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=Conductance.atc}Parameters {}'
'Test Case Name {Conductance.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Conductance Test, WSBARG3=#(''PM3'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=Conductance.atc}Parameters {}'
'Test Case Name {Conductance.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Conductance Test, WSBARG3=#(''PM4'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=Conductance.atc}Parameters {}'
'Test Case Name {Conductance.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Conductance Test, WSBARG3=#(''PM5'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=Conductance.atc}Parameters {}'
'Test Case Name {Conductance.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Conductance Test, WSBARG3=#(''PM6'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=Conductance.atc}Parameters {}'
'Test Case Name {Conductance.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Conductance Test, WSBARG3=#(''PM7'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=Conductance.atc}Parameters {}'
'Test Case Name {Conductance.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Conductance Test, WSBARG3=#(''PM8'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=Conductance.atc}Parameters {}'
'Test Case Name {1ptGasCal.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=One Point Cal, WSBARG3=#(''PM1'' ''Gas2'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=1ptGasCal.atc}Parameters {}'
'Test Case Name {1ptGasCal.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=One Point Cal, WSBARG3=#(''PM2'' ''Gas2'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=1ptGasCal.atc}Parameters {}'
'Test Case Name {1ptGasCal.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=One Point Cal, WSBARG3=#(''PM3'' ''Gas2'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=1ptGasCal.atc}Parameters {}'
'Test Case Name {1ptGasCal.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=One Point Cal, WSBARG3=#(''PM4'' ''Gas2'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=1ptGasCal.atc}Parameters {}'
'Test Case Name {1ptGasCal.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=One Point Cal, WSBARG3=#(''PM5'' ''Gas2'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=1ptGasCal.atc}Parameters {}'
'Test Case Name {1ptGasCal.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=One Point Cal, WSBARG3=#(''PM6'' ''Gas2'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=1ptGasCal.atc}Parameters {}'
'Test Case Name {1ptGasCal.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=One Point Cal, WSBARG3=#(''PM7'' ''Gas2'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=1ptGasCal.atc}Parameters {}'
'Test Case Name {1ptGasCal.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=One Point Cal, WSBARG3=#(''PM8'' ''Gas2'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=1ptGasCal.atc}Parameters {}'
'Test Case Name {WapConductance.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=WAP Conductance, WSBARG3=#(''PM1'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=WapConductance.atc}Parameters {}'
'Test Case Name {WapConductance.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=WAP Conductance, WSBARG3=#(''PM2'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=WapConductance.atc}Parameters {}'
'Test Case Name {WapConductance.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=WAP Conductance, WSBARG3=#(''PM3'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=WapConductance.atc}Parameters {}'
'Test Case Name {WapConductance.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=WAP Conductance, WSBARG3=#(''PM4'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=WapConductance.atc}Parameters {}'
'Test Case Name {WapConductance.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=WAP Conductance, WSBARG3=#(''PM5'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=WapConductance.atc}Parameters {}'
'Test Case Name {WapConductance.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=WAP Conductance, WSBARG3=#(''PM6'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=WapConductance.atc}Parameters {}'
'Test Case Name {WapConductance.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=WAP Conductance, WSBARG3=#(''PM7'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=WapConductance.atc}Parameters {}'
'Test Case Name {WapConductance.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=WAP Conductance, WSBARG3=#(''PM8'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=WapConductance.atc}Parameters {}'
'Test Case Name {FixedOrificeDualGas.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Fixed Orifice Test, WSBARG3=#(''PM1'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=FixedOrificeDualGas.atc}Parameters {}'
'Test Case Name {FixedOrificeDualGas.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Fixed Orifice Test, WSBARG3=#(''PM2'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=FixedOrificeDualGas.atc}Parameters {}'
'Test Case Name {FixedOrificeDualGas.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Fixed Orifice Test, WSBARG3=#(''PM3'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=FixedOrificeDualGas.atc}Parameters {}'
'Test Case Name {FixedOrificeDualGas.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Fixed Orifice Test, WSBARG3=#(''PM4'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=FixedOrificeDualGas.atc}Parameters {}'
'Test Case Name {FixedOrificeDualGas.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Fixed Orifice Test, WSBARG3=#(''PM5'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=FixedOrificeDualGas.atc}Parameters {}'
'Test Case Name {FixedOrificeDualGas.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Fixed Orifice Test, WSBARG3=#(''PM6'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=FixedOrificeDualGas.atc}Parameters {}'
'Test Case Name {FixedOrificeDualGas.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Fixed Orifice Test, WSBARG3=#(''PM7'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=FixedOrificeDualGas.atc}Parameters {}'
'Test Case Name {FixedOrificeDualGas.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Fixed Orifice Test, WSBARG3=#(''PM8'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=FixedOrificeDualGas.atc}Parameters {}'
'Test Case Name {FixedOrificeTriGas.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Fixed Orifice Test, WSBARG3=#(''PM1'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=FixedOrificeTriGas.atc}Parameters {}'
'Test Case Name {FixedOrificeTriGas.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Fixed Orifice Test, WSBARG3=#(''PM2'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=FixedOrificeTriGas.atc}Parameters {}'
'Test Case Name {FixedOrificeTriGas.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Fixed Orifice Test, WSBARG3=#(''PM3'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=FixedOrificeTriGas.atc}Parameters {}'
'Test Case Name {FixedOrificeTriGas.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Fixed Orifice Test, WSBARG3=#(''PM4'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=FixedOrificeTriGas.atc}Parameters {}'
'Test Case Name {FixedOrificeTriGas.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Fixed Orifice Test, WSBARG3=#(''PM5'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=FixedOrificeTriGas.atc}Parameters {}'
'Test Case Name {FixedOrificeTriGas.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Fixed Orifice Test, WSBARG3=#(''PM6'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=FixedOrificeTriGas.atc}Parameters {}'
'Test Case Name {FixedOrificeTriGas.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Fixed Orifice Test, WSBARG3=#(''PM7'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=FixedOrificeTriGas.atc}Parameters {}'
'Test Case Name {FixedOrificeTriGas.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Fixed Orifice Test, WSBARG3=#(''PM8'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=FixedOrificeTriGas.atc}Parameters {}'
'Test Case Name {AFVi_Calibration.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=AFVi Cal, WSBARG3=#(''PM1'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=AFVi_Calibration.atc}Parameters {}'
'Test Case Name {AFVi_Calibration.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=AFVi Cal, WSBARG3=#(''PM2'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=AFVi_Calibration.atc}Parameters {}'
'Test Case Name {AFVi_Calibration.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=AFVi Cal, WSBARG3=#(''PM3'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=AFVi_Calibration.atc}Parameters {}'
'Test Case Name {AFVi_Calibration.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=AFVi Cal, WSBARG3=#(''PM4'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=AFVi_Calibration.atc}Parameters {}'
'Test Case Name {AFVi_Calibration.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=AFVi Cal, WSBARG3=#(''PM5'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=AFVi_Calibration.atc}Parameters {}'
'Test Case Name {AFVi_Calibration.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=AFVi Cal, WSBARG3=#(''PM6'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=AFVi_Calibration.atc}Parameters {}'
'Test Case Name {AFVi_Calibration.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=AFVi Cal, WSBARG3=#(''PM7'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=AFVi_Calibration.atc}Parameters {}'
'Test Case Name {AFVi_Calibration.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=AFVi Cal, WSBARG3=#(''PM8'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=AFVi_Calibration.atc}Parameters {}'
'Test Case Name {RunFlowV2.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Run WaferFlow Port1, SCNARG1=#(''1'' ''statePort1-1-1*'' ''1'' ''donePortA-1-1-26*'' ''1'' ''carrierID-1-1-2-2-64'' ''1'' ''lotID-1-1-2-2-65'' ''1'' ''startFrom-1-1-2-2-75'' ''1'' ''stopAfter-1-1-2-2-76'' ''2'' ''Select...-1-1-2-2-67*'' ''2'' ''Start-1-1-2-2-69*''),SCNARG2=#(''C11'' ''L11'' ''1'' ''1'' ''SimTestPM1'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=RunFlowV2.atc}Parameters {}'
'Test Case Name {Wafer1Picked.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Wafer1Pick, SCNSPEC1=''SchedulerMaterialProcessingStarted'',SCNSPEC2=300} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=Wafer1Picked.atc}Parameters {}'
'Test Case Name {PMPreConEnded.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Recipe to Start, SCNSPEC1=''PM1RecipeEnded'',SCNSPEC2=300} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PMPreConEnded.atc}Parameters {}'
'Test Case Name {PM1Step1Ended.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Step1 to end, SCNSPEC1=''PM1StepEnded'',SCNSPEC2=120} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PM1Step1Ended.atc}Parameters {}'
'Test Case Name {PMAbort.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=PM Abort Test, WSBARG3=#(''PM1''), SCNSPEC1=''PM1ProcessInterruptExceptionSet'',SCNSPEC2=60} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PMAbort.atc}Parameters {}'
'Test Case Name {CheckAlarmRecoveries.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=PM Recovery Test, WSBARG3=#(''PM1''),SCNSPEC1=''PM1StepStarted'',SCNSPEC2=120} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=CheckAlarmRecoveries.atc}Parameters {}'
'Test Case Name {Port1CarrierCompleted.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Port to Complete, SCNSPEC1=''Port1CarrierCompleted'',SCNSPEC2=600} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=Port1CarrierCompleted.atc}Parameters {}'
'Test Case Name {RunFlowV2.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Run WaferFlow Port1, SCNARG1=#(''1'' ''statePort1-1-1*'' ''1'' ''donePortA-1-1-26*'' ''1'' ''carrierID-1-1-2-2-64'' ''1'' ''lotID-1-1-2-2-65'' ''1'' ''startFrom-1-1-2-2-75'' ''1'' ''stopAfter-1-1-2-2-76'' ''2'' ''Select...-1-1-2-2-67*'' ''2'' ''Start-1-1-2-2-69*''),SCNARG2=#(''C12'' ''L12'' ''1'' ''1'' ''SimTestPM2'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=RunFlowV2.atc.atc}Parameters {}'
'Test Case Name {Wafer1Picked.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Wafer1Pick, SCNSPEC1=''SchedulerMaterialProcessingStarted'',SCNSPEC2=300} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=Wafer1Picked.atc}Parameters {}'
'Test Case Name {PMPreConEnded.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Recipe to Start, SCNSPEC1=''PM2RecipeEnded'',SCNSPEC2=300} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PMPreConEnded.atc}Parameters {}'
'Test Case Name {PM2Step1Ended.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Step1 to end, SCNSPEC1=''PM2StepEnded'',SCNSPEC2=120} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PM2Step1Ended.atc}Parameters {}'
'Test Case Name {PMAbort.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=PM Abort Test, WSBARG3=#(''PM2''), SCNSPEC1=''PM2ProcessInterruptExceptionSet'',SCNSPEC2=60} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PMAbort.atc}Parameters {}'
'Test Case Name {CheckAlarmRecoveries.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=PM Recovery Test, WSBARG3=#(''PM2''),SCNSPEC1=''PM2StepStarted'',SCNSPEC2=120} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=CheckAlarmRecoveries.atc}Parameters {}'
'Test Case Name {Port1CarrierCompleted.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Port to Complete, SCNSPEC1=''Port1CarrierCompleted'',SCNSPEC2=600} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=Port1CarrierCompleted.atc}Parameters {}'
'Test Case Name {RunFlowV2.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Run WaferFlow Port1, SCNARG1=#(''1'' ''statePort1-1-1*'' ''1'' ''donePortA-1-1-26*'' ''1'' ''carrierID-1-1-2-2-64'' ''1'' ''lotID-1-1-2-2-65'' ''1'' ''startFrom-1-1-2-2-75'' ''1'' ''stopAfter-1-1-2-2-76'' ''2'' ''Select...-1-1-2-2-67*'' ''2'' ''Start-1-1-2-2-69*''),SCNARG2=#(''C13'' ''L13'' ''1'' ''1'' ''SimTestPM3'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=RunFlowV2.atc.atc}Parameters {}'
'Test Case Name {Wafer1Picked.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Wafer1Pick, SCNSPEC1=''SchedulerMaterialProcessingStarted'',SCNSPEC2=300} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=Wafer1Picked.atc}Parameters {}'
'Test Case Name {PMPreConEnded.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Recipe to Start, SCNSPEC1=''PM3RecipeEnded'',SCNSPEC2=300} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PMPreConEnded.atc}Parameters {}'
'Test Case Name {PM3Step1Ended.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Step1 to end, SCNSPEC1=''PM3StepEnded'',SCNSPEC2=120} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PM3Step1Ended.atc}Parameters {}'
'Test Case Name {PMAbort.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=PM Abort Test, WSBARG3=#(''PM3''), SCNSPEC1=''PM3ProcessInterruptExceptionSet'',SCNSPEC2=60} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PMAbort.atc}Parameters {}'
'Test Case Name {CheckAlarmRecoveries.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=PM Recovery Test, WSBARG3=#(''PM3''),SCNSPEC1=''PM3StepStarted'',SCNSPEC2=120} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=CheckAlarmRecoveries.atc}Parameters {}'
'Test Case Name {Port1CarrierCompleted.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Port to Complete, SCNSPEC1=''Port1CarrierCompleted'',SCNSPEC2=600} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=Port1CarrierCompleted.atc}Parameters {}'
'Test Case Name {RunFlowV2.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Run WaferFlow Port1, SCNARG1=#(''1'' ''statePort1-1-1*'' ''1'' ''donePortA-1-1-26*'' ''1'' ''carrierID-1-1-2-2-64'' ''1'' ''lotID-1-1-2-2-65'' ''1'' ''startFrom-1-1-2-2-75'' ''1'' ''stopAfter-1-1-2-2-76'' ''2'' ''Select...-1-1-2-2-67*'' ''2'' ''Start-1-1-2-2-69*''),SCNARG2=#(''C14'' ''L14'' ''1'' ''1'' ''SimTestPM4'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=RunFlowV2.atc.atc}Parameters {}'
'Test Case Name {Wafer1Picked.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Wafer1Pick, SCNSPEC1=''SchedulerMaterialProcessingStarted'',SCNSPEC2=300} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=Wafer1Picked.atc}Parameters {}'
'Test Case Name {PMPreConEnded.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Recipe to Start, SCNSPEC1=''PM4RecipeEnded'',SCNSPEC2=300} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PMPreConEnded.atc}Parameters {}'
'Test Case Name {PM4Step1Ended.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Step1 to end, SCNSPEC1=''PM4StepEnded'',SCNSPEC2=120} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PM4Step1Ended.atc}Parameters {}'
'Test Case Name {PMAbort.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=PM Abort Test, WSBARG3=#(''PM4''), SCNSPEC1=''PM4ProcessInterruptExceptionSet'',SCNSPEC2=60} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PMAbort.atc}Parameters {}'
'Test Case Name {CheckAlarmRecoveries.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=PM Recovery Test, WSBARG3=#(''PM4''),SCNSPEC1=''PM4StepStarted'',SCNSPEC2=120} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=CheckAlarmRecoveries.atc}Parameters {}'
'Test Case Name {Port1CarrierCompleted.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Port to Complete, SCNSPEC1=''Port1CarrierCompleted'',SCNSPEC2=600} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=Port1CarrierCompleted.atc}Parameters {}'
'Test Case Name {RunFlowV2.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Run WaferFlow Port1, SCNARG1=#(''1'' ''statePort1-1-1*'' ''1'' ''donePortA-1-1-26*'' ''1'' ''carrierID-1-1-2-2-64'' ''1'' ''lotID-1-1-2-2-65'' ''1'' ''startFrom-1-1-2-2-75'' ''1'' ''stopAfter-1-1-2-2-76'' ''2'' ''Select...-1-1-2-2-67*'' ''2'' ''Start-1-1-2-2-69*''),SCNARG2=#(''C15'' ''L15'' ''1'' ''1'' ''SimTestPM5'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=RunFlowV2.atc.atc}Parameters {}'
'Test Case Name {Wafer1Picked.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Wafer1Pick, SCNSPEC1=''SchedulerMaterialProcessingStarted'',SCNSPEC2=300} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=Wafer1Picked.atc}Parameters {}'
'Test Case Name {PMPreConEnded.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Recipe to Start, SCNSPEC1=''PM5RecipeEnded'',SCNSPEC2=300} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PMPreConEnded.atc}Parameters {}'
'Test Case Name {PM5Step1Ended.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Step1 to end, SCNSPEC1=''PM5StepEnded'',SCNSPEC2=120} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PM5Step1Ended.atc}Parameters {}'
'Test Case Name {PMAbort.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=PM Abort Test, WSBARG3=#(''PM5''), SCNSPEC1=''PM5ProcessInterruptExceptionSet'',SCNSPEC2=60} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PMAbort.atc}Parameters {}'
'Test Case Name {CheckAlarmRecoveries.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=PM Recovery Test, WSBARG3=#(''PM5''),SCNSPEC1=''PM5StepStarted'',SCNSPEC2=120} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=CheckAlarmRecoveries.atc}Parameters {}'
'Test Case Name {Port1CarrierCompleted.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Port to Complete, SCNSPEC1=''Port1CarrierCompleted'',SCNSPEC2=600} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=Port1CarrierCompleted.atc}Parameters {}'
'Test Case Name {RunFlowV2.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Run WaferFlow Port1, SCNARG1=#(''1'' ''statePort1-1-1*'' ''1'' ''donePortA-1-1-26*'' ''1'' ''carrierID-1-1-2-2-64'' ''1'' ''lotID-1-1-2-2-65'' ''1'' ''startFrom-1-1-2-2-75'' ''1'' ''stopAfter-1-1-2-2-76'' ''2'' ''Select...-1-1-2-2-67*'' ''2'' ''Start-1-1-2-2-69*''),SCNARG2=#(''C16'' ''L16'' ''1'' ''1'' ''SimTestPM6'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=RunFlowV2.atc.atc}Parameters {}'
'Test Case Name {Wafer1Picked.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Wafer1Pick, SCNSPEC1=''SchedulerMaterialProcessingStarted'',SCNSPEC2=300} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=Wafer1Picked.atc}Parameters {}'
'Test Case Name {PMPreConEnded.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Recipe to Start, SCNSPEC1=''PM6RecipeEnded'',SCNSPEC2=300} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PMPreConEnded.atc}Parameters {}'
'Test Case Name {PM6Step1Ended.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Step1 to end, SCNSPEC1=''PM6StepEnded'',SCNSPEC2=120} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PM6Step1Ended.atc}Parameters {}'
'Test Case Name {PMAbort.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=PM Abort Test, WSBARG3=#(''PM6''), SCNSPEC1=''PM6ProcessInterruptExceptionSet'',SCNSPEC2=60} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PMAbort.atc}Parameters {}'
'Test Case Name {CheckAlarmRecoveries.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=PM Recovery Test, WSBARG3=#(''PM6''),SCNSPEC1=''PM6StepStarted'',SCNSPEC2=120} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=CheckAlarmRecoveries.atc}Parameters {}'
'Test Case Name {Port1CarrierCompleted.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Port to Complete, SCNSPEC1=''Port1CarrierCompleted'',SCNSPEC2=600} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=Port1CarrierCompleted.atc}Parameters {}'
'Test Case Name {RunflowPort12.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Run WaferFlow Port1, SCNARG1=#(''1'' ''statePort1-1-1-*'' ''1'' ''donePortA-1-1-26*'' ''1'' ''carrierID-1-1-2-1-64'' ''1'' ''lotID-1-1-2-1-65'' ''1'' ''startFrom-1-1-2-1-75'' ''1'' ''stopAfter-1-1-2-1-76'' ''2'' ''Select...-1-1-2-1-67*'' ''2'' ''Start-1-1-2-1-69*''),SCNARG2=#(''C11'' ''L11'' ''1'' ''1'' ''SimTestPM1'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=RunflowPort12.atc}Parameters {}'
'Test Case Name {Wafer1Picked.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Wafer1Pick, SCNSPEC1=''SchedulerMaterialProcessingStarted'',SCNSPEC2=300} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=Wafer1Picked.atc}Parameters {}'
'Test Case Name {PMPreConEnded.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Recipe to Start, SCNSPEC1=''PM1RecipeEnded'',SCNSPEC2=300} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PMPreConEnded.atc}Parameters {}'
'Test Case Name {PM1Step1Ended.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Step1 to end, SCNSPEC1=''PM1StepEnded'',SCNSPEC2=120} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PM1Step1Ended.atc}Parameters {}'
'Test Case Name {PMAbort.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=PM Abort Test, WSBARG3=#(''PM1''), SCNSPEC1=''PM1ProcessInterruptExceptionSet'',SCNSPEC2=60} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PMAbort.atc}Parameters {}'
'Test Case Name {CheckAlarmRecoveries.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=PM Recovery Test, WSBARG3=#(''PM1''),SCNSPEC1=''PM1StepStarted'',SCNSPEC2=120} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=CheckAlarmRecoveries.atc}Parameters {}'
'Test Case Name {Port1CarrierCompleted.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Port to Complete, SCNSPEC1=''Port1CarrierCompleted'',SCNSPEC2=600} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=Port1CarrierCompleted.atc}Parameters {}'
'Test Case Name {RunflowPort12.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Run WaferFlow Port1, SCNARG1=#(''1'' ''statePort1-1-1-*'' ''1'' ''donePortA-1-1-26*'' ''1'' ''carrierID-1-1-2-1-64'' ''1'' ''lotID-1-1-2-1-65'' ''1'' ''startFrom-1-1-2-1-75'' ''1'' ''stopAfter-1-1-2-1-76'' ''2'' ''Select...-1-1-2-1-67*'' ''2'' ''Start-1-1-2-1-69*''),SCNARG2=#(''C12'' ''L12'' ''1'' ''1'' ''SimTestPM2'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=RunflowPort12.atc}Parameters {}'
'Test Case Name {Wafer1Picked.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Wafer1Pick, SCNSPEC1=''SchedulerMaterialProcessingStarted'',SCNSPEC2=300} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=Wafer1Picked.atc}Parameters {}'
'Test Case Name {PMPreConEnded.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Recipe to Start, SCNSPEC1=''PM2RecipeEnded'',SCNSPEC2=300} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PMPreConEnded.atc}Parameters {}'
'Test Case Name {PM2Step1Ended.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Step1 to end, SCNSPEC1=''PM2StepEnded'',SCNSPEC2=120} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PM2Step1Ended.atc}Parameters {}'
'Test Case Name {PMAbort.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=PM Abort Test, WSBARG3=#(''PM2''), SCNSPEC1=''PM2ProcessInterruptExceptionSet'',SCNSPEC2=60} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PMAbort.atc}Parameters {}'
'Test Case Name {CheckAlarmRecoveries.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=PM Recovery Test, WSBARG3=#(''PM2''),SCNSPEC1=''PM2StepStarted'',SCNSPEC2=120} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=CheckAlarmRecoveries.atc}Parameters {}'
'Test Case Name {Port1CarrierCompleted.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Port to Complete, SCNSPEC1=''Port1CarrierCompleted'',SCNSPEC2=600} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=Port1CarrierCompleted.atc}Parameters {}'
'Test Case Name {RunflowPort12.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Run WaferFlow Port1, SCNARG1=#(''1'' ''statePort1-1-1-*'' ''1'' ''donePortA-1-1-26*'' ''1'' ''carrierID-1-1-2-1-64'' ''1'' ''lotID-1-1-2-1-65'' ''1'' ''startFrom-1-1-2-1-75'' ''1'' ''stopAfter-1-1-2-1-76'' ''2'' ''Select...-1-1-2-1-67*'' ''2'' ''Start-1-1-2-1-69*''),SCNARG2=#(''C13'' ''L13'' ''1'' ''1'' ''SimTestPM3'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=RunflowPort12.atc}Parameters {}'
'Test Case Name {Wafer1Picked.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Wafer1Pick, SCNSPEC1=''SchedulerMaterialProcessingStarted'',SCNSPEC2=300} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=Wafer1Picked.atc}Parameters {}'
'Test Case Name {PMPreConEnded.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Recipe to Start, SCNSPEC1=''PM3RecipeEnded'',SCNSPEC2=300} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PMPreConEnded.atc}Parameters {}'
'Test Case Name {PM3Step1Ended.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Step1 to end, SCNSPEC1=''PM3StepEnded'',SCNSPEC2=120} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PM3Step1Ended.atc}Parameters {}'
'Test Case Name {PMAbort.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=PM Abort Test, WSBARG3=#(''PM3''), SCNSPEC1=''PM3ProcessInterruptExceptionSet'',SCNSPEC2=60} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PMAbort.atc}Parameters {}'
'Test Case Name {CheckAlarmRecoveries.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=PM Recovery Test, WSBARG3=#(''PM3''),SCNSPEC1=''PM3StepStarted'',SCNSPEC2=120} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=CheckAlarmRecoveries.atc}Parameters {}'
'Test Case Name {Port1CarrierCompleted.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Port to Complete, SCNSPEC1=''Port1CarrierCompleted'',SCNSPEC2=600} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=Port1CarrierCompleted.atc}Parameters {}'
'Test Case Name {RunflowPort12.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Run WaferFlow Port1, SCNARG1=#(''1'' ''statePort1-1-1-*'' ''1'' ''donePortA-1-1-26*'' ''1'' ''carrierID-1-1-2-1-64'' ''1'' ''lotID-1-1-2-1-65'' ''1'' ''startFrom-1-1-2-1-75'' ''1'' ''stopAfter-1-1-2-1-76'' ''2'' ''Select...-1-1-2-1-67*'' ''2'' ''Start-1-1-2-1-69*''),SCNARG2=#(''C14'' ''L14'' ''1'' ''1'' ''SimTestPM4'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=RunflowPort12.atc}Parameters {}'
'Test Case Name {Wafer1Picked.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Wafer1Pick, SCNSPEC1=''SchedulerMaterialProcessingStarted'',SCNSPEC2=300} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=Wafer1Picked.atc}Parameters {}'
'Test Case Name {PMPreConEnded.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Recipe to Start, SCNSPEC1=''PM4RecipeEnded'',SCNSPEC2=300} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PMPreConEnded.atc}Parameters {}'
'Test Case Name {PM4Step1Ended.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Step1 to end, SCNSPEC1=''PM4StepEnded'',SCNSPEC2=120} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PM4Step1Ended.atc}Parameters {}'
'Test Case Name {PMAbort.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=PM Abort Test, WSBARG3=#(''PM4''), SCNSPEC1=''PM4ProcessInterruptExceptionSet'',SCNSPEC2=60} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PMAbort.atc}Parameters {}'
'Test Case Name {CheckAlarmRecoveries.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=PM Recovery Test, WSBARG3=#(''PM4''),SCNSPEC1=''PM4StepStarted'',SCNSPEC2=120} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=CheckAlarmRecoveries.atc}Parameters {}'
'Test Case Name {Port1CarrierCompleted.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Port to Complete, SCNSPEC1=''Port1CarrierCompleted'',SCNSPEC2=600} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=Port1CarrierCompleted.atc}Parameters {}'
'Test Case Name {RunflowPort12.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Run WaferFlow Port1, SCNARG1=#(''1'' ''statePort1-1-1-*'' ''1'' ''donePortA-1-1-26*'' ''1'' ''carrierID-1-1-2-1-64'' ''1'' ''lotID-1-1-2-1-65'' ''1'' ''startFrom-1-1-2-1-75'' ''1'' ''stopAfter-1-1-2-1-76'' ''2'' ''Select...-1-1-2-1-67*'' ''2'' ''Start-1-1-2-1-69*''),SCNARG2=#(''C15'' ''L15'' ''1'' ''1'' ''SimTestPM5'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=RunflowPort12.atc}Parameters {}'
'Test Case Name {Wafer1Picked.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Wafer1Pick, SCNSPEC1=''SchedulerMaterialProcessingStarted'',SCNSPEC2=300} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=Wafer1Picked.atc}Parameters {}'
'Test Case Name {PMPreConEnded.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Recipe to Start, SCNSPEC1=''PM5RecipeEnded'',SCNSPEC2=300} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PMPreConEnded.atc}Parameters {}'
'Test Case Name {PM5Step1Ended.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Step1 to end, SCNSPEC1=''PM5StepEnded'',SCNSPEC2=120} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PM5Step1Ended.atc}Parameters {}'
'Test Case Name {PMAbort.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=PM Abort Test, WSBARG3=#(''PM5''), SCNSPEC1=''PM5ProcessInterruptExceptionSet'',SCNSPEC2=60} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PMAbort.atc}Parameters {}'
'Test Case Name {CheckAlarmRecoveries.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=PM Recovery Test, WSBARG3=#(''PM5''),SCNSPEC1=''PM5StepStarted'',SCNSPEC2=120} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=CheckAlarmRecoveries.atc}Parameters {}'
'Test Case Name {Port1CarrierCompleted.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Port to Complete, SCNSPEC1=''Port1CarrierCompleted'',SCNSPEC2=600} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=Port1CarrierCompleted.atc}Parameters {}'
'Test Case Name {RunflowPort12.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Run WaferFlow Port1, SCNARG1=#(''1'' ''statePort1-1-1-*'' ''1'' ''donePortA-1-1-26*'' ''1'' ''carrierID-1-1-2-1-64'' ''1'' ''lotID-1-1-2-1-65'' ''1'' ''startFrom-1-1-2-1-75'' ''1'' ''stopAfter-1-1-2-1-76'' ''2'' ''Select...-1-1-2-1-67*'' ''2'' ''Start-1-1-2-1-69*''),SCNARG2=#(''C16'' ''L16'' ''1'' ''1'' ''SimTestPM6'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=RunflowPort12.atc}Parameters {}'
'Test Case Name {Wafer1Picked.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Wafer1Pick, SCNSPEC1=''SchedulerMaterialProcessingStarted'',SCNSPEC2=300} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=Wafer1Picked.atc}Parameters {}'
'Test Case Name {PMPreConEnded.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Recipe to Start, SCNSPEC1=''PM6RecipeEnded'',SCNSPEC2=300} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PMPreConEnded.atc}Parameters {}'
'Test Case Name {PM6Step1Ended.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Step1 to end, SCNSPEC1=''PM6StepEnded'',SCNSPEC2=120} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PM6Step1Ended.atc}Parameters {}'
'Test Case Name {PMAbort.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=PM Abort Test, WSBARG3=#(''PM6''), SCNSPEC1=''PM6ProcessInterruptExceptionSet'',SCNSPEC2=60} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PMAbort.atc}Parameters {}'
'Test Case Name {CheckAlarmRecoveries.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=PM Recovery Test, WSBARG3=#(''PM6''),SCNSPEC1=''PM6StepStarted'',SCNSPEC2=120} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=CheckAlarmRecoveries.atc}Parameters {}'
'Test Case Name {Port1CarrierCompleted.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Port to Complete, SCNSPEC1=''Port1CarrierCompleted'',SCNSPEC2=600} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=Port1CarrierCompleted.atc}Parameters {}'
'Test Case Name {RunflowPort12.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Run WaferFlow Port1, SCNARG1=#(''1'' ''statePort1-1-1-*'' ''1'' ''donePortA-1-1-26*'' ''1'' ''carrierID-1-1-2-1-64'' ''1'' ''lotID-1-1-2-1-65'' ''1'' ''startFrom-1-1-2-1-75'' ''1'' ''stopAfter-1-1-2-1-76'' ''2'' ''Select...-1-1-2-1-67*'' ''2'' ''Start-1-1-2-1-69*''),SCNARG2=#(''C17'' ''L17'' ''1'' ''1'' ''SimTestPM7'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=RunflowPort12.atc}Parameters {}'
'Test Case Name {Wafer1Picked.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Wafer1Pick, SCNSPEC1=''SchedulerMaterialProcessingStarted'',SCNSPEC2=300} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=Wafer1Picked.atc}Parameters {}'
'Test Case Name {PMPreConEnded.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Recipe to Start, SCNSPEC1=''PM7RecipeEnded'',SCNSPEC2=300} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PMPreConEnded.atc}Parameters {}'
'Test Case Name {PM7Step1Ended.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Step1 to end, SCNSPEC1=''PM7StepEnded'',SCNSPEC2=120} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PM7Step1Ended.atc}Parameters {}'
'Test Case Name {PMAbort.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=PM Abort Test, WSBARG3=#(''PM7''), SCNSPEC1=''PM7ProcessInterruptExceptionSet'',SCNSPEC2=60} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PMAbort.atc}Parameters {}'
'Test Case Name {CheckAlarmRecoveries.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=PM Recovery Test, WSBARG3=#(''PM7''),SCNSPEC1=''PM7StepStarted'',SCNSPEC2=120} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=CheckAlarmRecoveries.atc}Parameters {}'
'Test Case Name {Port1CarrierCompleted.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Port to Complete, SCNSPEC1=''Port1CarrierCompleted'',SCNSPEC2=600} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=Port1CarrierCompleted.atc}Parameters {}'
'Test Case Name {RunflowPort12.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Run WaferFlow Port1, SCNARG1=#(''1'' ''statePort1-1-1-*'' ''1'' ''donePortA-1-1-26*'' ''1'' ''carrierID-1-1-2-1-64'' ''1'' ''lotID-1-1-2-1-65'' ''1'' ''startFrom-1-1-2-1-75'' ''1'' ''stopAfter-1-1-2-1-76'' ''2'' ''Select...-1-1-2-1-67*'' ''2'' ''Start-1-1-2-1-69*''),SCNARG2=#(''C18'' ''L18'' ''1'' ''1'' ''SimTestPM8'')} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=RunflowPort12.atc}Parameters {}'
'Test Case Name {Wafer1Picked.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Wafer1Pick, SCNSPEC1=''SchedulerMaterialProcessingStarted'',SCNSPEC2=300} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=Wafer1Picked.atc}Parameters {}'
'Test Case Name {PMPreConEnded.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Recipe to Start, SCNSPEC1=''PM8RecipeEnded'',SCNSPEC2=300} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PMPreConEnded.atc}Parameters {}'
'Test Case Name {PM8Step1Ended.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Step1 to end, SCNSPEC1=''PM8StepEnded'',SCNSPEC2=120} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PM8Step1Ended.atc}Parameters {}'
'Test Case Name {PMAbort.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=PM Abort Test, WSBARG3=#(''PM8''), SCNSPEC1=''PM8ProcessInterruptExceptionSet'',SCNSPEC2=60} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=PMAbort.atc}Parameters {}'
'Test Case Name {CheckAlarmRecoveries.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=PM Recovery Test, WSBARG3=#(''PM8''),SCNSPEC1=''PM8StepStarted'',SCNSPEC2=120} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=CheckAlarmRecoveries.atc}Parameters {}'
'Test Case Name {Port1CarrierCompleted.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=Waiting for Port to Complete, SCNSPEC1=''Port1CarrierCompleted'',SCNSPEC2=600} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=Port1CarrierCompleted.atc}Parameters {}'
'Test Case Name {AutomaticPageFlipper.atc} Spec Name {DART_Test_Result_Hash_Table} Option Keys {} Known Values {VERSION=1.0, INTRODUCTIONTEXT=AutomaticPageFlipper} Sort Keys {VERSION} Write to Options Table {} Prerequisites {} Hash Keys {HASH_TESTCASE_NAME=AutomaticPageFlipper.atc}Parameters {}'



).

^goldenArray asOrderedCollection.</body>

<body package="RPSApplications" selector="hiddenOp:">hiddenOp: anObject
	hiddenOp := anObject</body>

<body package="RPSApplications" selector="productCheck">productCheck
                | productTypeContents z myProduct z1  |
                productTypeContents := productType contentsOfEntireFile.
                z := productTypeContents 
                                                                findIndexesOfSubString: 'ProductType: #CVDProduct'.
                z isNotEmpty ifTrue: [myProduct := 'CVD'].
                z isNotEmpty 
                                ifFalse: 
                                                [z1 := productTypeContents 
                                                                                                findIndexesOfSubString: 'ProductType: #EtchProduct'.
                                                z1 isNotEmpty ifTrue: [myProduct := 'Etch'].
                                                z1 isNotEmpty 
                                                                ifFalse: [Dialog warn: 'This product is not support by ATAC.']].
                ^myProduct</body>

<body package="RPSApplications" selector="scnDir:">scnDir: anObject
	scnDir := anObject</body>

<body package="RPSApplications" selector="aATMCVName">aATMCVName
	^aATMCVName</body>

<body package="RPSApplications" selector="file2">file2
	^file2</body>

<body package="RPSApplications" selector="goldenATC:">goldenATC: anObject
	goldenATC := anObject</body>

<body package="RPSApplications" selector="file1:">file1: anObject
	file1 := anObject</body>

<body package="RPSApplications" selector="pm:">pm: anObject
	pm := anObject</body>

<body package="RPSApplications" selector="port">port
	^port</body>

<body package="RPSApplications" selector="aHostName">aHostName
	^aHostName</body>

<body package="RPSApplications" selector="flwDest:">flwDest: anObject
	flwDest := anObject</body>

<body package="RPSApplications" selector="port:">port: anObject
	port := anObject</body>

<body package="RPSApplications" selector="pm">pm
	^pm</body>

<body package="RPSApplications" selector="file3:">file3: anObject
	file3 := anObject</body>

<body package="RPSApplications" selector="scnName">scnName
	^scnName</body>

<body package="RPSApplications" selector="scnName:">scnName: anObject
	scnName := anObject</body>

<body package="RPSApplications" selector="file5:">file5: anObject
	file5 := anObject</body>

<body package="RPSApplications" selector="file4">file4
	^file4</body>

<body package="RPSApplications" selector="file4:">file4: anObject
	file4 := anObject</body>

<body package="RPSApplications" selector="file1">file1
	^file1</body>

<body package="RPSApplications" selector="flws:">flws: anObject
	flws := anObject</body>

<body package="RPSApplications" selector="flws">flws
	^flws</body>

<body package="RPSApplications" selector="flowsCopyDir">flowsCopyDir
	^flowsCopyDir</body>

<body package="RPSApplications" selector="aTMCVName">aTMCVName
	^aTMCVName</body>

<body package="RPSApplications" selector="hiddenOp">hiddenOp
	^hiddenOp</body>

<body package="RPSApplications" selector="file2:">file2: anObject
	file2 := anObject</body>

<body package="RPSApplications" selector="aATMCVName:">aATMCVName: anObject
	aATMCVName := anObject</body>

<body package="RPSApplications" selector="developSet:">developSet: anObject
	developSet := anObject</body>

<body package="RPSApplications" selector="developSet">developSet
	^developSet</body>

<body package="RPSApplications" selector="tmFilename">tmFilename
	^tmFilename</body>

<body package="RPSApplications" selector="aHostName:">aHostName: anObject
	aHostName := anObject</body>

<body package="RPSApplications" selector="scnDir">scnDir
	^scnDir</body>

<body package="RPSApplications" selector="tmFilename:">tmFilename: anObject
	tmFilename := anObject</body>

<body package="RPSApplications" selector="file3">file3
	^file3</body>

<body package="RPSApplications" selector="goldenATC">goldenATC

^goldenATC</body>
</methods>

<methods>
<class-id>SimSetupATAC</class-id> <category>initialize-release</category>

<body package="RPSApplications" selector="initialize">initialize
	"Initialize a newly created instance. This method must answer the receiver."

	" *** Edit the following to properly initialize instance variables ***"

	aHostName := 'D:\Lam\data\UI\hostImageConstants.cv' asFilename.
	aTMCVName := 'D:\Lam\data\TransferChamber\TransferChamber.cv' asFilename.
	aATMCVName := 'D:\Lam\data\AtmArm\AtmArm.cv' asFilename.
	pm := #('PM1' 'PM2' 'PM3' 'PM4' 'PM5' 'PM6' 'PM7' 'PM8').
	port := #('Port1' 'Port2' 'Port3' 'Port4' 'Port5').
	file1 := 'D:\Lam\data\UI\security.bos' asFilename.
	file2 := 'D:\Lam\data\UI\winaccess.bos' asFilename.
	file3 := 'D:\Lam\data\AutoPMTimeSetup.txt' asFilename.
	file4 := 'D:\Lam\data\PTS\PTSDB.mos' asFilename.
	file5 := 'D:\Lam\data\PTS\PTSDB.bak' asFilename.
	hiddenOp := 'D:\Lam\data\config\HiddenOption.txt' asFilename.
	developSet := 'C:\Lam\Install\sysconfig.txt' asFilename.
	tmFilename := 'D:\Lam\data\TransferChamber\configoptions.txt' asFilename.
	goldenATC := 'D:\RPSATACScenarioCreator\GoldenScenarioCreator_RevA.txt' 
				asFilename.
	scnDir := 'C:\ATAC_Runtime\DART\SCENARIOS\'.
	flowsCopyDir := 'D:\RPSATACScenarioCreator\Flows'.
	flwDest := 'D:\Lam\data\Flows'.
	flws := #('SimTestPM1.flw' 'SimTestPM2.flw' 'SimTestPM3.flw' 'SimTestPM4.flw' 'SimTestPM5.flw' 'SimTestPM6.flw' 'SimTestPM7.flw' 'SimTestPM8.flw').
	productType := 'D:\Lam\data\Lam2300Product\ConfigOptions.txt' asFilename.

	^self</body>
</methods>

<methods>
<class-id>SimSetupATAC</class-id> <category>actions</category>

<body package="RPSApplications" selector="createScenario">createScenario
	| pmCollection goldenContents checkGoldenATC orderGoldenATCContents almClear tmInitial tmPump count pmFilename gasConfigFilePM maint1 gasConfigTable gasCheck gasCheckCollection a b c fileStream3 pmxContents z maint2 pmFilename2 afviFilename afvCheck afv1 tmContents tmCheck tmOrderCheck t1 newCount myCNT scnSize writeStream1 scenarioFile |
	scnName := Dialog 
				request: 'Please enter scenario title in this format: CustomerCode_ToolID'
				initialAnswer: 'Generic_ToolID'.
	pmCollection := OrderedCollection new. 
	"pmExists := OrderedCollection new."
	goldenATC exists 
		ifFalse: 
			[Dialog 
				warn: 'Golden Scenario File does not exist! Please check your file location!'].
	goldenATC exists 
		ifTrue: 
			[goldenContents := goldenATC contentsOfEntireFile.
			checkGoldenATC := goldenContents 
						asArrayOfSubstringsDelimitedBy: Character cr.
			orderGoldenATCContents := checkGoldenATC asOrderedCollection.



			"add alarm clear, TM initialize, and TM pump to scenario collection"
			almClear := orderGoldenATCContents at: 1.
			tmInitial := orderGoldenATCContents at: 2.
			tmPump := orderGoldenATCContents at: 3.
			pmCollection add: almClear.
			pmCollection add: tmInitial.
			pmCollection add: tmPump.
			count := 4.

			"This loops through adding generic maintenance checks to scenario file collection for each PM if they exist"
			
			[pm do: 
					[:each | 
					pmFilename := ('D:\Lam\data\' , each , '\configoptions.txt') asFilename.
					gasConfigFilePM := ('D:\Lam\data\' , each , '\Gas\GasTable.txt') 
								asFilename.	"Gas Config File"
					pmFilename exists 
						ifTrue: 
							[maint1 := orderGoldenATCContents at: count.
							pmCollection add: maint1.
							count := count + 1.
							gasConfigFilePM exists 
								ifTrue: 
									["Brings in GasConfig and checks to make sure Gas2 is not empty"

									gasConfigTable := gasConfigFilePM contentsOfEntireFile.
									gasCheck := gasConfigTable 
												findIndexesOfSubString: 'Gas2: (
		MaxFlow: 0.0
		Name: ''NotUsed'''.
									gasCheckCollection := gasCheck asOrderedCollection.
									gasCheck isEmpty 
										ifFalse: 
											[a := gasCheck at: 1.
											b := a at: 1.
											c := a at: 2.
											gasConfigTable := gasConfigTable 
														copyReplaceFrom: b
														to: c
														with: 'Gas2: (
		MaxFlow: 100.0
		Name: ''Ar'''.
											fileStream3 := gasConfigFilePM asFilename writeStream.
											[fileStream3 nextPutAll: gasConfigTable] 
												valueNowOrOnUnwindDo: [fileStream3 close]]]].
					pmFilename exists ifFalse: [count := count + 1]].
			count &lt; 44] 
					whileTrue.


			"adds WAP conductance to scenario file for each PM if DFC"
			
			[pm do: 
					[:each | 
					pmFilename := ('D:\Lam\data\' , each , '\configoptions.txt') asFilename.
					pmFilename exists 
						ifTrue: 
							[pmxContents := pmFilename contentsOfEntireFile.
							z := pmxContents findIndexesOfSubString: 'ModuleType: #(#DFC #Poly)'.
							z isNotEmpty 
								ifTrue: 
									[maint2 := orderGoldenATCContents at: count.
									pmCollection add: maint2.
									count := count + 1].
							z isNotEmpty ifFalse: [count := count + 1]].
					pmFilename exists ifFalse: [count := count + 1]].
			count &lt; 52] 
					whileTrue.


			"adds Dual Gas Orifice test to scenario file"
			
			[pm do: 
					[:each | 
					pmFilename := ('D:\Lam\data\' , each , '\configoptions.txt') asFilename.
					pmFilename exists 
						ifTrue: 
							[pmxContents := pmFilename contentsOfEntireFile.
							z := pmxContents findIndexesOfSubString: 'DualGasFeedInstalled: true'.
							z isNotEmpty 
								ifTrue: 
									[maint2 := orderGoldenATCContents at: count.
									pmCollection add: maint2.
									count := count + 1].
							z isNotEmpty ifFalse: [count := count + 1]].
					pmFilename exists ifFalse: [count := count + 1]].
			count &lt; 60] 
					whileTrue.


			"adds Tri Gas Orifice test to scenario file"
			
			[pm do: 
					[:each | 
					pmFilename := ('D:\Lam\data\' , each , '\configoptions.txt') asFilename.
					pmFilename exists 
						ifTrue: 
							[pmxContents := pmFilename contentsOfEntireFile.
							z := pmxContents findIndexesOfSubString: 'TriGasFeedInstalled: true'.
							z isNotEmpty 
								ifTrue: 
									[maint2 := orderGoldenATCContents at: count.
									pmCollection add: maint2.
									count := count + 1].
							z isNotEmpty ifFalse: [count := count + 1]].
					pmFilename exists ifFalse: [count := count + 1]].
			count &lt; 68] 
					whileTrue.

			"adds AFVi test to scenario file"
			
			[pm do: 
					[:each | 
					pmFilename := ('D:\Lam\data\' , each , '\configoptions.txt') asFilename.
					pmFilename2 := ('D:\Lam\data\' , each , '\AbsoluteFlowVerifier.dat') 
								asFilename.
					afviFilename := 'D:\RPSATACScenarioCreator\AbsoluteFlowVerifier.dat' 
								asFilename.
					pmFilename exists 
						ifTrue: 
							[pmxContents := pmFilename contentsOfEntireFile.
							z := pmxContents 
										findIndexesOfSubString: 'AbsoluteFlowVerifier: #Installed'.
							z isNotEmpty 
								ifTrue: 
									[maint2 := orderGoldenATCContents at: count.
									pmCollection add: maint2.
									count := count + 1.
									pmFilename2 exists 
										ifTrue: 
											[afvCheck := MOSS getObjectFromFile: pmFilename2.
											afv1 := afvCheck at: #Setpoints ifAbsent: [nil].
											afv1 = nil ifFalse: [afv1 at: #Gas1 put: 50.0].
											MOSS putObject: afvCheck onFile: pmFilename2]
										ifFalse: [afviFilename copyTo: pmFilename2]].
							z isNotEmpty ifFalse: [count := count + 1]].
					pmFilename exists ifFalse: [count := count + 1]].
			count &lt; 76] 
					whileTrue.

			"Add alarm clear after maintenance checks complete"
			pmCollection add: almClear.


			"loop through and add in Flow recoveries for V2"
			
			[pm do: 
					[:each | 
					pmFilename := ('D:\Lam\data\' , each , '\configoptions.txt') asFilename.
					tmContents := tmFilename contentsOfEntireFile.
					tmCheck := tmContents asArrayOfSubstringsDelimitedBy: Character cr.
					tmOrderCheck := tmCheck asOrderedCollection.
					t1 := tmOrderCheck findIfNoneNil: 'platform: #Domino3Ports'.
					t1 isNil ifTrue: [count := 118	"118 is end of V2 RunFlows"].
					t1 isNil 
						ifFalse: 
							[pmFilename exists 
								ifTrue: 
									[newCount := count + 7.
									
									[maint2 := orderGoldenATCContents at: count.
									pmCollection add: maint2.
									count := count + 1.
									count &lt; newCount] 
											whileTrue].
							pmFilename exists ifFalse: [count := count + 7]]].
			count &lt; 118] 
					whileTrue.


			"loop through and add in Flow recoveries for eSeries"
			
			[pm do: 
					[:each | 
					pmFilename := ('D:\Lam\data\' , each , '\configoptions.txt') asFilename.
					tmContents := tmFilename contentsOfEntireFile.
					tmCheck := tmContents asArrayOfSubstringsDelimitedBy: Character cr.
					tmOrderCheck := tmCheck asOrderedCollection.
					t1 := tmOrderCheck findIfNoneNil: 'platform: #Domino3Ports'.
					t1 isNil 
						ifFalse: 
							[count := 174	"174 is the line item for the end of eSeries RunFlow's"].
					t1 isNil 
						ifTrue: 
							[pmFilename exists 
								ifTrue: 
									[newCount := count + 7.
									
									[maint2 := orderGoldenATCContents at: count.
									pmCollection add: maint2.
									count := count + 1.
									count &lt; newCount] 
											whileTrue].
							pmFilename exists ifFalse: [count := count + 7]]].
			count &lt; 174] 
					whileTrue.

			"Add automatic page flipper"
			maint2 := orderGoldenATCContents at: count.
			pmCollection add: maint2.
			scnDir := 'C:\ATAC_Runtime\DART\SCENARIOS\'.
			scnDir asFilename exists ifFalse: [scnDir asFilename makeDirectory].
			scenarioFile := ('C:\ATAC_Runtime\DART\SCENARIOS\' , scnName , '.scn') 
						asFilename.
			myCNT := 1.
			scnSize := pmCollection size.
			
			[writeStream1 := scenarioFile asFilename appendStream.
			
			[writeStream1
				nextPutAll: (pmCollection at: myCNT);
				nextPutAll: ' ';
				cr] 
					valueNowOrOnUnwindDo: [writeStream1 close].
			myCNT := myCNT + 1.
			myCNT &lt;= scnSize] 
					whileTrue].

	"This section copies over the SimTestPMx flows for ease of simulation"
	flws := #('SimTestPM1.flw' 'SimTestPM2.flw' 'SimTestPM3.flw' 'SimTestPM4.flw' 'SimTestPM5.flw' 'SimTestPM6.flw' 'SimTestPM7.flw' 'SimTestPM8.flw').
	flwDest asFilename exists &amp; flowsCopyDir asFilename exists 
		ifTrue: 
			[flws 
				do: [:each | (flowsCopyDir , '\' , each) asFilename copyTo: flwDest , '\' , each]]
		ifFalse: [Dialog warn: 'Flows directory does not exist on D:\Lam\data']</body>

<body package="RPSApplications" selector="changeAllWidgets">changeAllWidgets
     "setupAllBox value gives aValueHolder value at initialization"
     "self setupAllBox value gives you the actual value of the widget at runTime"
	self setupAllBox value 
		ifTrue: [
				(self builder componentAt: #atmCV) disable.
				(self builder componentAt: #tmCV) disable.
				(self builder componentAt: #portCV) disable.
				(self builder componentAt: #security) disable.
				(self builder componentAt: #hiddenOptions) disable.
				(self builder componentAt: #development) disable.
				(self builder componentAt: #pmCV) disable.
				(self builder componentAt: #host) disable.
				(self builder componentAt: #configOptions) disable.
		]
		ifFalse: [
		(self builder componentAt: #atmCV) enable.
		(self builder componentAt: #tmCV) enable.
		(self builder componentAt: #portCV) enable.
		(self builder componentAt: #security) enable.
		(self builder componentAt: #hiddenOptions) enable.
		(self builder componentAt: #development) enable.
		(self builder componentAt: #pmCV) enable.
		(self builder componentAt: #host) enable.
		(self builder componentAt: #configOptions) enable.
		
		]</body>

<body package="RPSApplications" selector="createScenario2">createScenario2
	| pmCollection almClear tmInitial tmPump count pmFilename gasConfigFilePM maint1 gasConfigTable gasCheck gasCheckCollection a b c fileStream3 pmxContents z maint2 pmFilename2 afviFilename afvCheck afv1 tmContents tmCheck tmOrderCheck t1 newCount myCNT scnSize writeStream1 scenarioFile goldenArray |
	scnName := Dialog 
				request: 'Please enter scenario title in this format: CustomerCode_ToolID'
				initialAnswer: 'Generic_ToolID'.
	pmCollection := OrderedCollection new. 
	"pmExists := OrderedCollection new."
	
	self goldenATC
		ifTrue: 
			[

        		goldenArray := self goldenReadIn.

			"add alarm clear, TM initialize, and TM pump to scenario collection"
			almClear := goldenArray at: 1.
			tmInitial := goldenArray at: 2.
			tmPump := goldenArray at: 3.
			pmCollection add: almClear.
			pmCollection add: tmInitial.
			pmCollection add: tmPump.
			count := 4.

			"This loops through adding generic maintenance checks to scenario file collection for each PM if they exist"
			
			[pm do: 
					[:each | 
					pmFilename := ('D:\Lam\data\' , each , '\configoptions.txt') asFilename.
					gasConfigFilePM := ('D:\Lam\data\' , each , '\Gas\GasTable.txt') 
								asFilename.	"Gas Config File"
					pmFilename exists 
						ifTrue: 
							[maint1 := goldenArray at: count.
							pmCollection add: maint1.
							count := count + 1.
							gasConfigFilePM exists 
								ifTrue: 
									["Brings in GasConfig and checks to make sure Gas2 is not empty"

									gasConfigTable := gasConfigFilePM contentsOfEntireFile.
									gasCheck := gasConfigTable 
												findIndexesOfSubString: 'Gas2: (
		MaxFlow: 0.0
		Name: ''NotUsed'''.
									gasCheckCollection := gasCheck asOrderedCollection.
									gasCheck isEmpty 
										ifFalse: 
											[a := gasCheck at: 1.
											b := a at: 1.
											c := a at: 2.
											gasConfigTable := gasConfigTable 
														copyReplaceFrom: b
														to: c
														with: 'Gas2: (
		MaxFlow: 100.0
		Name: ''Ar'''.
											fileStream3 := gasConfigFilePM asFilename writeStream.
											[fileStream3 nextPutAll: gasConfigTable] 
												valueNowOrOnUnwindDo: [fileStream3 close]]]].
					pmFilename exists ifFalse: [count := count + 1]].
			count &lt; 44] 
					whileTrue.


			"adds WAP conductance to scenario file for each PM if DFC"
			
			[pm do: 
					[:each | 
					pmFilename := ('D:\Lam\data\' , each , '\configoptions.txt') asFilename.
					pmFilename exists 
						ifTrue: 
							[pmxContents := pmFilename contentsOfEntireFile.
							z := pmxContents findIndexesOfSubString: 'ModuleType: #(#DFC #Poly)'.
							z isNotEmpty 
								ifTrue: 
									[maint2 := goldenArray at: count.
									pmCollection add: maint2.
									count := count + 1].
							z isNotEmpty ifFalse: [count := count + 1]].
					pmFilename exists ifFalse: [count := count + 1]].
			count &lt; 52] 
					whileTrue.


			"adds Dual Gas Orifice test to scenario file"
			
			[pm do: 
					[:each | 
					pmFilename := ('D:\Lam\data\' , each , '\configoptions.txt') asFilename.
					pmFilename exists 
						ifTrue: 
							[pmxContents := pmFilename contentsOfEntireFile.
							z := pmxContents findIndexesOfSubString: 'DualGasFeedInstalled: true'.
							z isNotEmpty 
								ifTrue: 
									[maint2 := goldenArray at: count.
									pmCollection add: maint2.
									count := count + 1].
							z isNotEmpty ifFalse: [count := count + 1]].
					pmFilename exists ifFalse: [count := count + 1]].
			count &lt; 60] 
					whileTrue.


			"adds Tri Gas Orifice test to scenario file"
			
			[pm do: 
					[:each | 
					pmFilename := ('D:\Lam\data\' , each , '\configoptions.txt') asFilename.
					pmFilename exists 
						ifTrue: 
							[pmxContents := pmFilename contentsOfEntireFile.
							z := pmxContents findIndexesOfSubString: 'TriGasFeedInstalled: true'.
							z isNotEmpty 
								ifTrue: 
									[maint2 := goldenArray at: count.
									pmCollection add: maint2.
									count := count + 1].
							z isNotEmpty ifFalse: [count := count + 1]].
					pmFilename exists ifFalse: [count := count + 1]].
			count &lt; 68] 
					whileTrue.

			"adds AFVi test to scenario file"
			
			[pm do: 
					[:each | 
					pmFilename := ('D:\Lam\data\' , each , '\configoptions.txt') asFilename.
					pmFilename2 := ('D:\Lam\data\' , each , '\AbsoluteFlowVerifier.dat') 
								asFilename.
					afviFilename := 'D:\RPSATACScenarioCreator\AbsoluteFlowVerifier.dat' 
								asFilename.
					pmFilename exists 
						ifTrue: 
							[pmxContents := pmFilename contentsOfEntireFile.
							z := pmxContents 
										findIndexesOfSubString: 'AbsoluteFlowVerifier: #Installed'.
							z isNotEmpty 
								ifTrue: 
									[maint2 := goldenArray at: count.
									pmCollection add: maint2.
									count := count + 1.
									pmFilename2 exists 
										ifTrue: 
											[afvCheck := MOSS getObjectFromFile: pmFilename2.
											afv1 := afvCheck at: #Setpoints ifAbsent: [nil].
											afv1 = nil ifFalse: [afv1 at: #Gas1 put: 50.0].
											MOSS putObject: afvCheck onFile: pmFilename2]
										ifFalse: [afviFilename copyTo: pmFilename2]].
							z isNotEmpty ifFalse: [count := count + 1]].
					pmFilename exists ifFalse: [count := count + 1]].
			count &lt; 76] 
					whileTrue.

			"Add alarm clear after maintenance checks complete"
			pmCollection add: almClear.


			"loop through and add in Flow recoveries for V2"
			
			[pm do: 
					[:each | 
					pmFilename := ('D:\Lam\data\' , each , '\configoptions.txt') asFilename.
					tmContents := tmFilename contentsOfEntireFile.
					tmCheck := tmContents asArrayOfSubstringsDelimitedBy: Character cr.
					tmOrderCheck := tmCheck asOrderedCollection.
					t1 := tmOrderCheck findIfNoneNil: 'platform: #Domino3Ports'.
					t1 isNil ifTrue: [count := 118	"118 is end of V2 RunFlows"].
					t1 isNil 
						ifFalse: 
							[pmFilename exists 
								ifTrue: 
									[newCount := count + 7.
									
									[maint2 := goldenArray at: count.
									pmCollection add: maint2.
									count := count + 1.
									count &lt; newCount] 
											whileTrue].
							pmFilename exists ifFalse: [count := count + 7]]].
			count &lt; 118] 
					whileTrue.


			"loop through and add in Flow recoveries for eSeries"
			
			[pm do: 
					[:each | 
					pmFilename := ('D:\Lam\data\' , each , '\configoptions.txt') asFilename.
					tmContents := tmFilename contentsOfEntireFile.
					tmCheck := tmContents asArrayOfSubstringsDelimitedBy: Character cr.
					tmOrderCheck := tmCheck asOrderedCollection.
					t1 := tmOrderCheck findIfNoneNil: 'platform: #Domino3Ports'.
					t1 isNil 
						ifFalse: 
							[count := 174	"174 is the line item for the end of eSeries RunFlow's"].
					t1 isNil 
						ifTrue: 
							[pmFilename exists 
								ifTrue: 
									[newCount := count + 7.
									
									[maint2 := goldenArray at: count.
									pmCollection add: maint2.
									count := count + 1.
									count &lt; newCount] 
											whileTrue].
							pmFilename exists ifFalse: [count := count + 7]]].
			count &lt; 174] 
					whileTrue.

			"Add automatic page flipper"
			maint2 := goldenArray at: count.
			pmCollection add: maint2.
		
			scnDir asFilename exists ifFalse: [scnDir asFilename makeDirectory].
			scenarioFile := ('C:\ATAC_Runtime\DART\SCENARIOS\' , scnName , '.scn') 
						asFilename.
			myCNT := 1.
			scnSize := pmCollection size.
			
			[writeStream1 := scenarioFile asFilename appendStream.
			
			[writeStream1
				nextPutAll: (pmCollection at: myCNT);
				nextPutAll: ' ';
				cr] 
					valueNowOrOnUnwindDo: [writeStream1 close].
			myCNT := myCNT + 1.
			myCNT &lt;= scnSize] 
					whileTrue].

	"This section copies over the SimTestPMx flows for ease of simulation"
	flws := #('SimTestPM1.flw' 'SimTestPM2.flw' 'SimTestPM3.flw' 'SimTestPM4.flw' 'SimTestPM5.flw' 'SimTestPM6.flw' 'SimTestPM7.flw' 'SimTestPM8.flw').
	flwDest asFilename exists &amp; flowsCopyDir asFilename exists 
		ifTrue: 
			[flws 
				do: [:each | (flowsCopyDir , '\' , each) asFilename copyTo: flwDest , '\' , each]]
		ifFalse: [Dialog warn: 'Flows directory does not exist on D:\Lam\data']</body>

<body package="RPSApplications" selector="createATACScenario">createATACScenario
	| pmCollection almClear tmInitial tmPump count pmFilename gasConfigFilePM maint1 gasConfigTable gasCheck gasCheckCollection a b c fileStream3 pmxContents z maint2 pmFilename2 afviFilename afvCheck afv1 tmContents tmCheck tmOrderCheck t1 newCount myCNT scnSize writeStream1 scenarioFile goldenArray |
	scnName := Dialog 
				request: 'Please enter scenario title in this format: CustomerCode_ToolID'
				initialAnswer: 'Generic_ToolID' onCancel: ['Blank'].
				
 (scnName = 'Blank') ifTrue: [Dialog warn: 'Your scenario was not created!']
 
 	ifFalse:[
	pmCollection := OrderedCollection new. 
	"pmExists := OrderedCollection new."
	
	"self goldenATC"
		"ifTrue:["

        		goldenArray := self goldenReadIn.

			"add alarm clear, TM initialize, and TM pump to scenario collection"
			almClear := goldenArray at: 1.
			tmInitial := goldenArray at: 2.
			tmPump := goldenArray at: 3.
			pmCollection add: almClear.
			pmCollection add: tmInitial.
			pmCollection add: tmPump.
			count := 4.

			"This loops through adding generic maintenance checks to scenario file collection for each PM if they exist"
			
			[pm do: 
					[:each | 
					pmFilename := ('D:\Lam\data\' , each , '\configoptions.txt') asFilename.
					gasConfigFilePM := ('D:\Lam\data\' , each , '\Gas\GasTable.txt') 
								asFilename.	"Gas Config File"
					pmFilename exists 
						ifTrue: 
							[maint1 := goldenArray at: count.
							pmCollection add: maint1.
							count := count + 1.
							gasConfigFilePM exists 
								ifTrue: 
									["Brings in GasConfig and checks to make sure Gas2 is not empty"

									gasConfigTable := gasConfigFilePM contentsOfEntireFile.
									gasCheck := gasConfigTable 
												findIndexesOfSubString: 'Gas2: (
		MaxFlow: 0.0
		Name: ''NotUsed'''.
									gasCheckCollection := gasCheck asOrderedCollection.
									gasCheck isEmpty 
										ifFalse: 
											[a := gasCheck at: 1.
											b := a at: 1.
											c := a at: 2.
											gasConfigTable := gasConfigTable 
														copyReplaceFrom: b
														to: c
														with: 'Gas2: (
		MaxFlow: 100.0
		Name: ''Ar'''.
											fileStream3 := gasConfigFilePM asFilename writeStream.
											[fileStream3 nextPutAll: gasConfigTable] 
												valueNowOrOnUnwindDo: [fileStream3 close]]]].
					pmFilename exists ifFalse: [count := count + 1]].
			count &lt; 44] 
					whileTrue.


			"adds WAP conductance to scenario file for each PM if DFC"
			
			[pm do: 
					[:each | 
					pmFilename := ('D:\Lam\data\' , each , '\configoptions.txt') asFilename.
					pmFilename exists 
						ifTrue: 
							[pmxContents := pmFilename contentsOfEntireFile.
							z := pmxContents findIndexesOfSubString: 'ModuleType: #(#DFC #Poly)'.
							z isNotEmpty 
								ifTrue: 
									[maint2 := goldenArray at: count.
									pmCollection add: maint2.
									count := count + 1].
							z isNotEmpty ifFalse: [count := count + 1]].
					pmFilename exists ifFalse: [count := count + 1]].
			count &lt; 52] 
					whileTrue.


			"adds Dual Gas Orifice test to scenario file"
			
			[pm do: 
					[:each | 
					pmFilename := ('D:\Lam\data\' , each , '\configoptions.txt') asFilename.
					pmFilename exists 
						ifTrue: 
							[pmxContents := pmFilename contentsOfEntireFile.
							z := pmxContents findIndexesOfSubString: 'DualGasFeedInstalled: true'.
							z isNotEmpty 
								ifTrue: 
									[maint2 := goldenArray at: count.
									pmCollection add: maint2.
									count := count + 1].
							z isNotEmpty ifFalse: [count := count + 1]].
					pmFilename exists ifFalse: [count := count + 1]].
			count &lt; 60] 
					whileTrue.


			"adds Tri Gas Orifice test to scenario file"
			
			[pm do: 
					[:each | 
					pmFilename := ('D:\Lam\data\' , each , '\configoptions.txt') asFilename.
					pmFilename exists 
						ifTrue: 
							[pmxContents := pmFilename contentsOfEntireFile.
							z := pmxContents findIndexesOfSubString: 'TriGasFeedInstalled: true'.
							z isNotEmpty 
								ifTrue: 
									[maint2 := goldenArray at: count.
									pmCollection add: maint2.
									count := count + 1].
							z isNotEmpty ifFalse: [count := count + 1]].
					pmFilename exists ifFalse: [count := count + 1]].
			count &lt; 68] 
					whileTrue.

			"adds AFVi test to scenario file"
			
			[pm do: 
					[:each | 
					pmFilename := ('D:\Lam\data\' , each , '\configoptions.txt') asFilename.
					pmFilename2 := ('D:\Lam\data\' , each , '\AbsoluteFlowVerifier.dat') 
								asFilename.
					afviFilename := 'D:\RPSATACScenarioCreator\AbsoluteFlowVerifier.dat' 
								asFilename.
					pmFilename exists 
						ifTrue: 
							[pmxContents := pmFilename contentsOfEntireFile.
							z := pmxContents 
										findIndexesOfSubString: 'AbsoluteFlowVerifier: #Installed'.
							z isNotEmpty 
								ifTrue: 
									[maint2 := goldenArray at: count.
									pmCollection add: maint2.
									count := count + 1.
									pmFilename2 exists 
										ifTrue: 
											[afvCheck := MOSS getObjectFromFile: pmFilename2.
											afv1 := afvCheck at: #Setpoints ifAbsent: [nil].
											afv1 = nil ifFalse: [afv1 at: #Gas1 put: 50.0].
											MOSS putObject: afvCheck onFile: pmFilename2]
										ifFalse: [afviFilename copyTo: pmFilename2]].
							z isNotEmpty ifFalse: [count := count + 1]].
					pmFilename exists ifFalse: [count := count + 1]].
			count &lt; 76] 
					whileTrue.

			"Add alarm clear after maintenance checks complete"
			pmCollection add: almClear.


			"loop through and add in Flow recoveries for V2"
			
			[pm do: 
					[:each | 
					pmFilename := ('D:\Lam\data\' , each , '\configoptions.txt') asFilename.
					tmContents := tmFilename contentsOfEntireFile.
					tmCheck := tmContents asArrayOfSubstringsDelimitedBy: Character cr.
					tmOrderCheck := tmCheck asOrderedCollection.
					t1 := tmOrderCheck findIfNoneNil: 'platform: #Domino3Ports'.
					t1 isNil ifTrue: [count := 118	"118 is end of V2 RunFlows"].
					t1 isNil 
						ifFalse: 
							[pmFilename exists 
								ifTrue: 
									[newCount := count + 7.
									
									[maint2 := goldenArray at: count.
									pmCollection add: maint2.
									count := count + 1.
									count &lt; newCount] 
											whileTrue].
							pmFilename exists ifFalse: [count := count + 7]]].
			count &lt; 118] 
					whileTrue.


			"loop through and add in Flow recoveries for eSeries"
			
			[pm do: 
					[:each | 
					pmFilename := ('D:\Lam\data\' , each , '\configoptions.txt') asFilename.
					tmContents := tmFilename contentsOfEntireFile.
					tmCheck := tmContents asArrayOfSubstringsDelimitedBy: Character cr.
					tmOrderCheck := tmCheck asOrderedCollection.
					t1 := tmOrderCheck findIfNoneNil: 'platform: #Domino3Ports'.
					t1 isNil 
						ifFalse: 
							[count := 174	"174 is the line item for the end of eSeries RunFlow's"].
					t1 isNil 
						ifTrue: 
							[pmFilename exists 
								ifTrue: 
									[newCount := count + 7.
									
									[maint2 := goldenArray at: count.
									pmCollection add: maint2.
									count := count + 1.
									count &lt; newCount] 
											whileTrue].
							pmFilename exists ifFalse: [count := count + 7]]].
			count &lt; 174] 
					whileTrue.

			"Add automatic page flipper"
			maint2 := goldenArray at: count.
			pmCollection add: maint2.
		
			scnDir asFilename exists ifFalse: [scnDir asFilename makeDirectory].
			scenarioFile := ('C:\ATAC_Runtime\DART\SCENARIOS\' , scnName , '.scn') 
						asFilename.
			myCNT := 1.
			scnSize := pmCollection size.
			
			[writeStream1 := scenarioFile asFilename appendStream.
			
			[writeStream1
				nextPutAll: (pmCollection at: myCNT);
				nextPutAll: ' ';
				cr] 
					valueNowOrOnUnwindDo: [writeStream1 close].
			myCNT := myCNT + 1.
			myCNT &lt;= scnSize] 
					whileTrue."]"

    Dialog warn: 'Your scenario can be found in the ', scnDir printString, ' directory'.
    
	"This section copies over the SimTestPMx flows for ease of simulation"
	flws := #('SimTestPM1.flw' 'SimTestPM2.flw' 'SimTestPM3.flw' 'SimTestPM4.flw' 'SimTestPM5.flw' 'SimTestPM6.flw' 'SimTestPM7.flw' 'SimTestPM8.flw').
	flwDest asFilename exists &amp; flowsCopyDir asFilename exists 
		ifTrue: 
			[flws 
				do: [:each | (flowsCopyDir , '\' , each) asFilename copyTo: flwDest , '\' , each]]
		ifFalse: [Dialog warn: 'Flows directory does not exist on D:\Lam\data']
		].</body>

<body package="RPSApplications" selector="setupSim">setupSim
	
	
	| a b c d e f g h i j checkBoxes |
	a := atmCVBox value.
	b := configOptionsBox value.
	c := pmCVBox value.
	d := hiddenOptionsBox value.
	e := hostBox value.
	f :=  portCVBox value.
	g := securityBox value.
	h := setDevelopmentBox value.
	i :=  tmCVBox value.
	j := setupAllBox value.
	
	checkBoxes := (a | b | c | d | e | f | g | h | i |j).
	
	checkBoxes ifFalse:[ Dialog warn: 'Please check at least one box']
	
	ifTrue:[
	
	setupAllBox value 
		ifTrue: 
			[
			self atmCVSetup.
			self configOptionsSetup.
			self pmCVSetup.
			self hiddenOptionsSetup. 
			self hostCVSetup.
			self portCVSetup.
			self securityCleanup.
			self setDevelopmentMode. 
			self tmCVSetup.
			]
		ifFalse: 
			[
			atmCVBox value ifTrue: [self atmCVSetup].
			configOptionsBox value ifTrue: [self configOptionsSetup].
			pmCVBox value ifTrue: [self pmCVSetup].
			hiddenOptionsBox value ifTrue: [self hiddenOptionsSetup].
			hostBox value ifTrue: [self hostCVSetup].
			portCVBox value ifTrue: [self portCVSetup].
			securityBox value ifTrue: [self securityCleanup].
			setDevelopmentBox value ifTrue: [self setDevelopmentMode].
			tmCVBox value ifTrue: [self tmCVSetup]]	
			]</body>

<body package="RPSApplications" selector="changeSetupAllBox">changeSetupAllBox
	| a b c d e f g h i j checkBoxes |
	a := self atmCVBox value.
	b := self configOptionsBox value.
	c := self etchPMCVBox value.
	d := self hiddenOptionsBox value.
	e := self hostBox value.
	f := self portCVBox value.
	g := self securityBox value.
	h := self setDevelopmentBox value.
	i := self tmCVBox value.
	j := self setupAllBox value.
	checkBoxes := a | b | c | d | e | f | g | h | i | j.
	checkBoxes 
		ifTrue: [(self builder componentAt: #setupAllBox) disable]
		ifFalse: [(self builder componentAt: #setupAllBox) enable]</body>
</methods>


<methods>
<class-id>RPSTools class</class-id> <category>As yet unclassified</category>

<body package="RPSApplications" selector="stackChecker">stackChecker
	| tab cr space stackString newStackString contextString newContextString entryString newEntryString pcString newPCString count initialDir foundStacksDir foundStacks fileChecking readStream writeStream lineStream lineString |
	Dialog warn: 'Please place your eventlogs into the D:\StackCheck folder'.
	tab := Character tab.
	cr := Character cr.
	space := Character space.
	stackString := 'Stack dump:'.
	newStackString := (String with: cr) , stackString.
	contextString := (String with: space) , (String with: tab) , 'CONTEXT:'.
	newContextString := (String with: cr) , (String with: tab) , 'CONTEXT:'.
	entryString := (String with: space) , (String with: tab) 
				, (String with: tab) , 'STACK ENTRY '.
	newEntryString := (String with: cr) , (String with: tab) 
				, (String with: tab) , 'STACK ENTRY '.
	pcString := (String with: space) , (String with: tab) , (String with: tab) 
				, 'PC:'.
	newPCString := (String with: cr) , (String with: tab) , (String with: tab) 
				, 'PC:'.
	count := 0.
	" Folder where you put eventlogs for parsing"
	initialDir := 'D:\StackCheck'.
	foundStacks := 'D:\StackCheck\Found\foundStacks.txt' asFilename.

	"Folder where the copied original files are put along with the foundStacks file"
	" This is the directory where the found stack files are placed"
	foundStacksDir := 'D:\StackCheck\Found'.
	foundStacksDir asFilename exists 
		ifFalse: [foundStacksDir asFilename makeDirectory].
	"foundStacks := 'D:\StackCheck\Found\foundStacks.txt' asFilename."
	initialDir asFilename exists 
		ifFalse: [Dialog warn: initialDir printString , ' folder is missing']
		ifTrue: 
			[
			fileChecking := initialDir asFilename directoryContentsAsFilenames.
			fileChecking do: 
					[:filename | 
					filename isDirectory 
						ifFalse: 
							[
							readStream := filename asFilename readStream.
							writeStream := foundStacks asFilename appendStream.
							[readStream atEnd] whileFalse: 
									[
									lineStream := readStream nextLine readStream.
									lineString := lineStream contents.
									((lineString findString: stackString startingAt: 1) &gt; 0 )
										ifTrue: 
											[
										"filename copyTo: foundStacksDir , '\' , filename tail printString."
											writeStream
												nextPutAll: '';
												cr.
											lineString := lineString copyReplaceAll: stackString with: newStackString.
											lineString := lineString copyReplaceAll: contextString
														with: newContextString.
											lineString := lineString copyReplaceAll: entryString with: newEntryString.
											lineString := lineString copyReplaceAll: pcString with: newPCString.
											count := count + 1.
											writeStream
												nextPutAll: '(**) ' , lineString;
												nextPut: cr]
									"writeStream nextPutAll: lineString; nextPut: cr."].
									readStream close.
									writeStream close.
									]]].
	
	(count &gt; 0)
		ifTrue: [Dialog warn: 'Please check the foundStacks.txt file in the D:\StackCheck\Found folder'].</body>
</methods>


<methods>
<class-id>RPSTools</class-id> <category>initialize-release</category>

<body package="RPSApplications" selector="initialize">initialize
	"Initialize a newly created instance. This method must answer the receiver."

	super initialize.
	" *** Replace this comment with the appropriate initialization code *** "
	^self</body>
</methods>



</st-source>
