<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks®, 7.4 of December 5, 2005 on October 19, 2017 at 10:34:16 am</time-stamp>


<class>
<name>LamUIFileBackup</name>
<environment>Smalltalk</environment>
<super>LamUIFileManagementSuperPage</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>accessSemaphore backupCommand backupDirectory backupList backupScripts buttonState destinationFileName driveSelectChoice excludedFileList helpText progress restoreCommand restoreDriveSelect restoreList sourceFileName updateDriveSelectChoice useAA status </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>LamUIFileManagementApp</category>
<attributes>
<package>LamUIFileManagementApp</package>
</attributes>
</class>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>LamUIFileBackup class</class-id> <category>interface specs</category>

<body package="LamUIFileManagementApp" selector="windowSpec">windowSpec
	"Tools.UIPainter new openOnClass: self andSelector: #windowSpec"

	&lt;resource: #canvas&gt;
	^#(#{UI.FullSpec} 
		#window: 
		#(#{UI.WindowSpec} 
			#label: 'Backup' 
			#min: #(#{Core.Point} 20 20 ) 
			#max: #(#{Core.Point} 0 0 ) 
			#bounds: #(#{Graphics.Rectangle} 576 289 1855 970 ) 
			#isEventDriven: true ) 
		#component: 
		#(#{UI.SpecCollection} 
			#collection: #(
				#(#{UI.GroupBoxSpec} 
					#layout: #(#{Graphics.LayoutFrame} 0 0.00498504 0 0.0130597 0 0.282154 0 0.0802239 ) ) 
				#(#{UI.GroupBoxSpec} 
					#layout: #(#{Graphics.LayoutFrame} 0 0.00469116 0 0.0910273 0 0.282252 0 0.690507 ) 
					#label: 'Backup' ) 
				#(#{UI.LabelSpec} 
					#layout: #(#{Graphics.LayoutOrigin} 0 0.300235 0 0.030837 ) 
					#label: 'Restore Drive:' 
					#style: #pixelDefault ) 
				#(#{UI.ComboBoxSpec} 
					#layout: #(#{Graphics.LayoutFrame} 0 0.362783 0 0.0264317 0 0.506646 0 0.0660793 ) 
					#name: #restoreDriveSelect 
					#colors: 
					#(#{UI.LookPreferences} 
						#setBackgroundColor: #(#{Graphics.ColorValue} 7700 7700 7700 ) ) 
					#callbacksSpec: 
					#(#{UI.UIEventCallbackSubSpec} 
						#valueChangeSelector: #changedRestoreDrive 
						#requestValueChangeSelector: 
						#validateDrive: ) 
					#model: #restoreDriveSelect 
					#style: #pixelDefault 
					#comboList: #driveSelectChoice ) 
				#(#{UI.LabelSpec} 
					#layout: #(#{Graphics.LayoutOrigin} 0 0.299453 0 0.13069 ) 
					#label: 'Available Backup in Drive:' 
					#style: #pixelDefault ) 
				#(#{UI.SequenceViewSpec} 
					#layout: #(#{Graphics.LayoutFrame} 0 0.300235 0 0.163849 0 0.565285 0 0.373212 ) 
					#name: #restoreList 
					#flags: 15 
					#colors: 
					#(#{UI.LookPreferences} 
						#setBackgroundColor: #(#{Graphics.ColorValue} 7700 7700 7700 ) ) 
					#callbacksSpec: 
					#(#{UI.UIEventCallbackSubSpec} 
						#valueChangeSelector: 
						#restorationPointSelected: ) 
					#model: #restoreList 
					#style: #pixelDefault 
					#useModifierKeys: true 
					#selectionType: #highlight ) 
				#(#{UI.LabelSpec} 
					#layout: #(#{Graphics.LayoutOrigin} 0 0.00860047 0 0.030837 ) 
					#label: 'Backup Drive:' 
					#style: #pixelDefault ) 
				#(#{UI.ActionButtonSpec} 
					#layout: #(#{Graphics.LayoutFrame} 0 0.510555 0 0.110132 0 0.56294 0 0.161527 ) 
					#name: #deleteSelected 
					#model: #deleteSelected 
					#label: 'Delete' 
					#style: #pixelDefault 
					#defaultable: true ) 
				#(#{UI.GroupBoxSpec} 
					#layout: #(#{Graphics.LayoutFrame} 0 0.293198 0 0.0910273 0 0.570758 0 0.689207 ) 
					#label: 'Restore' ) 
				#(#{UI.GroupBoxSpec} 
					#layout: #(#{Graphics.LayoutFrame} 0 0.293121 0 0.0130597 0 0.570289 0 0.0802239 ) ) 
				#(#{UI.GroupBoxSpec} 
					#layout: #(#{Graphics.LayoutFrame} 0 0.00469116 0 0.443433 0 0.282252 0 0.689207 ) ) 
				#(#{UI.ActionButtonSpec} 
					#layout: #(#{Graphics.LayoutFrame} 0 0.452697 0 0.110132 0 0.505082 0 0.161527 ) 
					#name: #refresh 
					#model: #refresh 
					#label: 'Refresh' 
					#style: #pixelDefault 
					#defaultable: true ) 
				#(#{UI.RadioButtonSpec} 
					#layout: #(#{Graphics.LayoutOrigin} 0 0.00938233 0 0.457737 ) 
					#name: #backupConfig 
					#callbacksSpec: 
					#(#{UI.UIEventCallbackSubSpec} 
						#valueChangeSelector: #changedBackupSelect ) 
					#model: #backupCommand 
					#label: 'Backup Config' 
					#select: #config ) 
				#(#{UI.RadioButtonSpec} 
					#layout: #(#{Graphics.LayoutOrigin} 0 0.00938233 0 0.498049 ) 
					#name: #backupRecipes 
					#callbacksSpec: 
					#(#{UI.UIEventCallbackSubSpec} 
						#valueChangeSelector: #changedBackupSelect ) 
					#model: #backupCommand 
					#label: 'Backup Recipes' 
					#select: #recipe ) 
				#(#{UI.RadioButtonSpec} 
					#layout: #(#{Graphics.LayoutOrigin} 0 0.00938233 0 0.538361 ) 
					#name: #backupData 
					#callbacksSpec: 
					#(#{UI.UIEventCallbackSubSpec} 
						#valueChangeSelector: #changedBackupSelect ) 
					#model: #backupCommand 
					#label: 'Backup Data' 
					#select: #data ) 
				#(#{UI.ActionButtonSpec} 
					#layout: #(#{Graphics.LayoutFrame} 0 0.136826 0 0.622887 0 0.264269 0 0.678804 ) 
					#name: #backupSelect 
					#model: #backupSelect 
					#label: 'Execute Backup' 
					#defaultable: true ) 
				#(#{UI.GroupBoxSpec} 
					#layout: #(#{Graphics.LayoutFrame} 0 0.293198 0 0.443433 0 0.570758 0 0.687906 ) ) 
				#(#{UI.RadioButtonSpec} 
					#layout: #(#{Graphics.LayoutOrigin} 0 0.301016 0 0.455137 ) 
					#name: #restoreConfig 
					#callbacksSpec: 
					#(#{UI.UIEventCallbackSubSpec} 
						#valueChangeSelector: #changedRestoreSelect ) 
					#model: #restoreCommand 
					#label: 'Show Config' 
					#select: #config ) 
				#(#{UI.RadioButtonSpec} 
					#layout: #(#{Graphics.LayoutOrigin} 0 0.301016 0 0.496749 ) 
					#name: #restoreRecipes 
					#callbacksSpec: 
					#(#{UI.UIEventCallbackSubSpec} 
						#valueChangeSelector: #changedRestoreSelect ) 
					#model: #restoreCommand 
					#label: 'Show Recipe' 
					#select: #recipe ) 
				#(#{UI.RadioButtonSpec} 
					#layout: #(#{Graphics.LayoutOrigin} 0 0.301798 0 0.537061 ) 
					#name: #restoreData 
					#callbacksSpec: 
					#(#{UI.UIEventCallbackSubSpec} 
						#valueChangeSelector: #changedRestoreSelect ) 
					#model: #restoreCommand 
					#label: 'Show Data' 
					#select: #data ) 
				#(#{UI.ActionButtonSpec} 
					#layout: #(#{Graphics.LayoutFrame} 0 0.422987 0 0.621586 0 0.551212 0 0.677503 ) 
					#name: #restoreSelect 
					#model: #restoreSelect 
					#securityTagName: #_RestoreExecute 
					#label: 'Execute Restore' 
					#defaultable: true ) 
				#(#{UI.ActionButtonSpec} 
					#layout: #(#{Graphics.LayoutFrame} 0 0.513683 0 0.0190896 0 0.566067 0 0.0704846 ) 
					#name: #refreshDrives 
					#model: #refreshDrives 
					#label: 'Refresh' 
					#style: #pixelDefault 
					#defaultable: true ) 
				#(#{UI.LabelSpec} 
					#layout: #(#{Graphics.LayoutOrigin} 0 0.580141 0 0.0264317 ) 
					#name: #backupListLabel 
					#label: 'Backup File List:' 
					#style: #pixelDefault ) 
				#(#{UI.ActionButtonSpec} 
					#layout: #(#{Graphics.LayoutFrame} 0 0.893667 0 0.00587371 0 0.992181 0 0.0572687 ) 
					#name: #clearList 
					#model: #clearList 
					#label: 'Clear List' 
					#defaultable: true ) 
				#(#{UI.SequenceViewSpec} 
					#layout: #(#{Graphics.LayoutFrame} 0 0.580259 0 0.0597015 0 0.994018 0 0.992537 ) 
					#name: #backyupList 
					#colors: 
					#(#{UI.LookPreferences} 
						#setBackgroundColor: #(#{Graphics.ColorValue} 7700 7700 7700 ) ) 
					#model: #backupList 
					#tabable: true 
					#selectionType: #highlight ) 
				#(#{UI.RadioButtonSpec} 
					#layout: #(#{Graphics.LayoutOrigin} 0 0.301798 0 0.578674 ) 
					#name: #restoreAll 
					#callbacksSpec: 
					#(#{UI.UIEventCallbackSubSpec} 
						#valueChangeSelector: #changedRestoreSelect ) 
					#model: #restoreCommand 
					#label: 'Show All' 
					#select: #all ) 
				#(#{UI.RadioButtonSpec} 
					#layout: #(#{Graphics.LayoutOrigin} 0 0.00938233 0 0.579974 ) 
					#name: #backupAll 
					#callbacksSpec: 
					#(#{UI.UIEventCallbackSubSpec} 
						#valueChangeSelector: #changedBackupSelect ) 
					#model: #backupCommand 
					#label: 'Backup All' 
					#select: #all ) 
				#(#{UI.TextEditorSpec} 
					#layout: #(#{Graphics.LayoutFrame} 0 0.0269192 0 0.152985 0 0.264207 0 0.582089 ) 
					#name: #helpText 
					#flags: 4 
					#model: #helpText 
					#isReadOnly: true ) 
				#(#{UI.InputFieldSpec} 
					#layout: #(#{Graphics.LayoutFrame} 0 0.0719312 0 0.0323054 0 0.274433 0 0.0631424 ) 
					#name: #driveSelect 
					#colors: 
					#(#{UI.LookPreferences} 
						#setBackgroundColor: #(#{Graphics.ColorValue} 7700 7700 7700 ) ) 
					#model: #driveSelect 
					#tabable: false 
					#style: #pixelDefault 
					#isReadOnly: true ) 
				#(#{UI.CheckBoxSpec} 
					#layout: #(#{Graphics.LayoutOrigin} 0 0.00938233 0 0.630689 ) 
					#name: #useAA 
					#model: #useAA 
					#label: 'Use Auto Archiver' 
					#style: #pixelDefault ) 
				#(#{UI.LabelSpec} 
					#layout: #(#{Graphics.LayoutOrigin} 0 0.301016 0 0.381014 ) 
					#label: 'The License Key file will not be restored automatically.' 
					#style: #pixelDefault ) 
				#(#{UI.LabelSpec} 
					#layout: #(#{Graphics.LayoutOrigin} 0 0.301016 0 0.405722 ) 
					#label: 'Manually restore the License Key file from the backup.' 
					#style: #pixelDefault ) 
				#(#{UI.GroupBoxSpec} 
					#layout: #(#{Graphics.LayoutFrame} 7 0 0 0.703377 0 0.573104 0 0.876652 ) 
					#name: #GroupBox1 ) 
				#(#{UI.ProgressWidgetSpec} 
					#layout: #(#{Graphics.LayoutFrame} 12 0 0 0.786863 0 0.567187 0 0.819035 ) 
					#name: #progress 
					#isOpaque: true 
					#colors: 
					#(#{UI.LookPreferences} 
						#setForegroundColor: #(#{Graphics.ColorValue} 1624 1087 5488 ) 
						#setBackgroundColor: #(#{Graphics.ColorValue} #white ) ) 
					#model: #progress 
					#direction: #horizontal 
					#position: #topLeft 
					#area: true 
					#reverse: false ) 
				#(#{UI.InputFieldSpec} 
					#layout: #(#{Graphics.LayoutFrame} 12 0 0 0.751625 0 0.566067 0 0.784135 ) 
					#name: #destinationFileName 
					#isOpaque: true 
					#colors: 
					#(#{UI.LookPreferences} 
						#setBackgroundColor: #(#{Graphics.ColorValue} 7700 7700 7700 ) 
						#setSelectionBackgroundColor: #(#{Graphics.ColorValue} 7700 7700 7700 ) ) 
					#model: #destinationFileName 
					#tabable: false 
					#style: #pixelDefault 
					#isReadOnly: true ) 
				#(#{UI.InputFieldSpec} 
					#layout: #(#{Graphics.LayoutFrame} 12 0 0 0.716515 0 0.566067 0 0.749025 ) 
					#name: #sourceFileName 
					#colors: 
					#(#{UI.LookPreferences} 
						#setBackgroundColor: #(#{Graphics.ColorValue} 7700 7700 7700 ) 
						#setSelectionBackgroundColor: #(#{Graphics.ColorValue} 7700 7700 7700 ) ) 
					#model: #sourceFileName 
					#tabable: false 
					#style: #pixelDefault 
					#isReadOnly: true ) 
				#(#{UI.RadioButtonSpec} 
					#layout: #(#{Graphics.LayoutOrigin} 0 0.126661 0 0.457737 ) 
					#name: #backupCVInText 
					#callbacksSpec: 
					#(#{UI.UIEventCallbackSubSpec} 
						#valueChangeSelector: #changedBackupSelect ) 
					#model: #backupCommand 
					#label: 'Backup CV in Text' 
					#select: #cvInText ) 
				#(#{UI.ActionButtonSpec} 
					#layout: #(#{Graphics.LayoutFrame} 0 0.120407 0 0.913363 0 0.288507 0 0.975037 ) 
					#name: #systemSnapshot 
					#model: #backupAllToolFiles 
					#securityTagName: #_SystemSnapshot 
					#label: 'Take System Snapshot' 
					#defaultable: true ) 
				#(#{UI.GroupBoxSpec} 
					#layout: #(#{Graphics.LayoutFrame} 0 0.00547303 0 0.882526 0 0.572322 0 0.989721 ) 
					#name: #GroupBox2 
					#label: 'Prepare For Software Upgrade' ) 
				#(#{UI.InputFieldSpec} 
					#layout: #(#{Graphics.LayoutFrame} 12 0 0 0.829662 0 0.566067 0 0.861968 ) 
					#name: #status 
					#flags: 0 
					#model: #status 
					#tabable: false 
					#style: #pixelDefault 
					#isReadOnly: false ) 
				#(#{UI.ActionButtonSpec} 
					#layout: #(#{Graphics.LayoutFrame} 0 0.290852 0 0.913363 0 0.458952 0 0.975037 ) 
					#name: #exportAllRecipes 
					#model: #exportAllRecipes 
					#tabable: false 
					#label: 'Export All Recipes To Text' 
					#isDefault: false 
					#defaultable: true ) 
				#(#{UI.RadioButtonSpec} 
					#layout: #(#{Graphics.LayoutOrigin} 0 0.126661 0 0.502203 ) 
					#name: #backupStartup 
					#callbacksSpec: 
					#(#{UI.UIEventCallbackSubSpec} 
						#valueChangeSelector: #changedBackupSelect ) 
					#model: #backupCommand 
					#label: 'Backup For Startup' 
					#select: #startup ) ) ) )</body>
</methods>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>LamUIFileBackup</class-id> <category>accessing</category>

<body package="LamUIFileManagementApp" selector="accessSemaphore">accessSemaphore
	"Answer a mutual exclusion Semaphore that guards access to thread-sensitive information."

	^accessSemaphore isNil
		ifTrue: [ accessSemaphore := Semaphore forMutualExclusion ]
		ifFalse: [ accessSemaphore ].</body>

<body package="LamUIFileManagementApp" selector="actionType">actionType

	^#'File Backup'</body>

<body package="LamUIFileManagementApp" selector="backupDirectory">backupDirectory

	^backupDirectory</body>

<body package="LamUIFileManagementApp" selector="backupScripts">backupScripts

	^(backupScripts := self fileServer backupScripts)</body>

<body package="LamUIFileManagementApp" selector="buttonState">buttonState

	^buttonState isNil
		ifTrue: [buttonState := Dictionary new]
		ifFalse: [ buttonState]</body>

<body package="LamUIFileManagementApp" selector="dataDirectorySpec">dataDirectorySpec

	| aDir aDrive aSpec |
	aDir := self dataDirectory.
	aDrive := aDir asFilename volume.
	aSpec := (aDir copyFrom: (aDrive size + 1) to: (aDir size)), '\*'.

	^aSpec</body>

<body package="LamUIFileManagementApp" selector="errorList">errorList

	| errorList |
	(errorList := HandlerList new)
		on: (self signals ioErrorSignal) handle: [:ex | self cleanUp: backupDirectory. ];
		on: (self signals busyActionSignal) handle: [:ex | 
								self cleanUp: backupDirectory.
								self transferBusy.];
		on: (self signals failedOperationSignal) handle: [:ex | 
								self cleanUp: backupDirectory.
								self backupFailed. ].

	^errorList</body>

<body package="LamUIFileManagementApp" selector="excludedFileList">excludedFileList
	^excludedFileList</body>

<body package="LamUIFileManagementApp" selector="excludedFileList:">excludedFileList: anObject
	excludedFileList := anObject</body>

<body package="LamUIFileManagementApp" selector="installDirectorySpec">installDirectorySpec

	| aDir aSpec |
	aDir := self installDirectory.
	aSpec := (aDir copyFrom: 2 to: (aDir size)) , '\*'.

	^aSpec</body>

<body package="LamUIFileManagementApp" selector="scriptButton">scriptButton

	^#(backupSelect restoreSelect clearList restoreList deleteSelected refresh refreshDrives systemSnapshot exportAllRecipes)</body>

<body package="LamUIFileManagementApp" selector="softwareVersion">softwareVersion

	^ScriptGen softwareVersion</body>
</methods>

<methods>
<class-id>LamUIFileBackup</class-id> <category>aspects</category>

<body package="LamUIFileManagementApp" selector="backupCommand">backupCommand
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	^backupCommand isNil
		ifTrue:
			[backupCommand := nil asValue]
		ifFalse:
			[backupCommand]</body>

<body package="LamUIFileManagementApp" selector="backupList">backupList
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	^backupList isNil
		ifTrue:
			[backupList := SelectionInList new]
		ifFalse:
			[backupList]</body>

<body package="LamUIFileManagementApp" selector="destinationFileName">destinationFileName
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	^destinationFileName isNil
		ifTrue:
			[destinationFileName := String new asValue]
		ifFalse:
			[destinationFileName]</body>

<body package="LamUIFileManagementApp" selector="driveSelect">driveSelect

	^((self dataDirectory), '\backup\')</body>

<body package="LamUIFileManagementApp" selector="driveSelectChoice">driveSelectChoice
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	| selectList |

	selectList := List new.
	(self updateDriveSelectChoice value) do: [ :ea |
		selectList add: (ea, 'Lam\data\backup\') asString.
	].

	^driveSelectChoice isNil
		ifTrue:
			[driveSelectChoice := selectList asValue]
		ifFalse:
			[driveSelectChoice value: selectList].</body>

<body package="LamUIFileManagementApp" selector="helpText">helpText
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	^helpText isNil
		ifTrue:
			[helpText := String new asValue]
		ifFalse:
			[helpText]</body>

<body package="LamUIFileManagementApp" selector="progress">progress
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	^progress isNil
		ifTrue:
			[progress := 0.0 asValue]
		ifFalse:
			[progress]</body>

<body package="LamUIFileManagementApp" selector="restoreCommand">restoreCommand
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	^restoreCommand isNil
		ifTrue:
			[restoreCommand := nil asValue]
		ifFalse:
			[restoreCommand]</body>

<body package="LamUIFileManagementApp" selector="restoreDriveSelect">restoreDriveSelect
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	^restoreDriveSelect isNil
		ifTrue:
			[restoreDriveSelect := String new asValue]
		ifFalse:
			[restoreDriveSelect]</body>

<body package="LamUIFileManagementApp" selector="restoreList">restoreList
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	^restoreList isNil
		ifTrue:
			[restoreList := SelectionInList new]
		ifFalse:
			[restoreList]</body>

<body package="LamUIFileManagementApp" selector="sourceFileName">sourceFileName
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	^sourceFileName isNil
		ifTrue:
			[sourceFileName := String new asValue]
		ifFalse:
			[sourceFileName]</body>

<body package="LamUIFileManagementApp" selector="status">status
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	^status isNil
		ifTrue:
			[status := String new asValue]
		ifFalse:
			[status]</body>

<body package="LamUIFileManagementApp" selector="updateDriveSelectChoice">updateDriveSelectChoice
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	| tempList |

	tempList := List new.
	(Filename volumes asList) do: [ :ea |
		"(('c:\' match: ea) or: ['d:\' match: ea]) ifFalse: [ tempList add: ea]"
		tempList add: ea
	].

	^updateDriveSelectChoice isNil
		ifTrue:
			[updateDriveSelectChoice := tempList asValue.]
		ifFalse:
			[updateDriveSelectChoice value: tempList].</body>

<body package="LamUIFileManagementApp" selector="useAA">useAA
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."

	^useAA isNil
		ifTrue:
			[useAA := false asValue]
		ifFalse:
			[useAA]</body>
</methods>

<methods>
<class-id>LamUIFileBackup</class-id> <category>actions</category>

<body package="LamUIFileManagementApp" selector="backupAllToolFiles">backupAllToolFiles

	(self machine scheduler isPaused) ifFalse: [^Dialog warn: 'Please pause the system' ].
	self checkOKToGo ifFalse: [^false].
	self disableBackup.
	self factoryInterface idFilesBackupManager doBackupFiles.
	self enableBackup.</body>

<body package="LamUIFileManagementApp" selector="backupSelect">backupSelect

	| command |

	(self isBackupAvailable) ifFalse: [^self warn: 'Please pause the system' ].
	
	command := self backupCommand value.
	self subscribeToEventsAtStartOfFileOperation.
	self backupUsing: command.</body>

<body package="LamUIFileManagementApp" selector="buildRecipeDict">buildRecipeDict
	| ret filter pmCollection|
	ret := Dictionary new.
	filter := '*PM*'.
	pmCollection := OrderedCollection new.
	"for now, export all recipes is for all online pm"
	""
	self uiModel machine onlineProcessResourceNames do: [ :each | 
		(filter match: each asString ignoreCase: false) ifTrue: [ pmCollection add: each].
	].
	
	pmCollection do: [ :aPM |  |typeCol subDict|
		typeCol := self getRecipeType: aPM.
		subDict := Dictionary new.
		ret at: aPM put: subDict.
		typeCol do: [ :aType | 
			subDict at: aType put: (self getRecipeCollection: aType module: aPM) .
		].
	].
	^ret.</body>

<body package="LamUIFileManagementApp" selector="clearList">clearList

	self clearBackupList.
	self clearProgressFields</body>

<body package="LamUIFileManagementApp" selector="deleteSelected">deleteSelected

	| path |

	((path := self restoreList selection) isNil) ifTrue: [ ^self warn: 'No file is selected for deletion.'].

	self fileServer backupPolicy deleteBackup: path.
	self updateRestoreList.</body>

<body package="LamUIFileManagementApp" selector="exportAllRecipes">exportAllRecipes
	|recipeInfoDict|
	(self isBackupAvailable) ifFalse: [^self warn: 'Please pause the system' ].

	self subscribeToEventsAtStartOfFileOperation.
	self disableBackup.
	self resetProgressFields.
	"A dictionary of all online PM clean and process recipes"
	recipeInfoDict := self buildRecipeDict.
	self fileServer exportAllRecipes: recipeInfoDict.</body>

<body package="LamUIFileManagementApp" selector="getRecipeCollection:module:">getRecipeCollection: aType module: pm
	"Return a filename to read or write material flow parameters to/from a file."
	| sequences recipeManager|

	recipeManager := self uiModel recipeManager.

	sequences :=
	(
		( self uiModel machine processResourceNames includes: pm)
		ifTrue: 
		[
			( sequences := aType = #recovery )
			ifTrue:
			[
				( self supportsRecipeSecurityGroups )
				ifTrue:
				[
					(
						( self recipeSecurityGroupManager )
							getRecipesFor: #export
							withResource: pm
							andType: aType
							andGroup: ( recipeManager currentSession recipeGroup )
							andAccess: ( self recipeSecurityGroupManager getLoginAccess: (recipeManager currentSession accountID ) toGroup: ( recipeManager currentSession recipeGroup ) )
							filesMatching: ( '*', self recoveryRecipeSuffix )
							filter: #both
					) at: #recipeNames.
				]
				ifFalse: [ recipeManager getRecoveryRecipeNamesForResource: pm ].
			]
			ifFalse:
			[
				( sequences := aType = #sequence )
				ifTrue:
				[
					( self supportsRecipeSecurityGroups )
					ifTrue:
					[
						(
							( self recipeSecurityGroupManager )
								getRecipesFor: #export
								withResource: pm
								andType: aType
								andGroup: ( recipeManager currentSession recipeGroup )
								andAccess: ( self recipeSecurityGroupManager getLoginAccess: ( recipeManager currentSession accountID ) toGroup: (recipeManager currentSession recipeGroup ) )
								filesMatching: ( '*', self recipeSuffix )
								filter: #both
						) at: #recipeNames.
					]
					ifFalse: [ recipeManager getSequenceNamesForResource: pm].
				]
				ifFalse:
				[
					( self supportsRecipeSecurityGroups )
					ifTrue:
					[
						(
							( self recipeSecurityGroupManager )
								getRecipesFor: #export
								withResource: pm
								andType: aType
								andGroup: ( recipeManager currentSession recipeGroup )
								andAccess: ( self recipeSecurityGroupManager getLoginAccess: ( recipeManager currentSession accountID ) toGroup: ( recipeManager currentSession recipeGroup ) )
								filesMatching: ( '*', self cleanSuffix )
								filter: #both
						) at: #recipeNames.
					]
					ifFalse: [ recipeManager getCleanRecipeNamesForResource: pm ].
				].
			].
		]
		ifFalse: [ OrderedCollection new ]
	) asSortedCollection.
	^sequences.</body>

<body package="LamUIFileManagementApp" selector="getRecipeType:">getRecipeType: aPM
		| tmpValues |
	(self recoveryRecipeEnable: aPM)
		ifTrue:[	
			tmpValues := #(#clean #sequence #recovery)] 
		ifFalse:[	
			tmpValues := #(#clean #sequence)].
	^tmpValues</body>

<body package="LamUIFileManagementApp" selector="recoveryRecipeEnable:">recoveryRecipeEnable: aPM
	^(self uiModel machine processResourceNames includes: aPM) and: [(self uiModel machine  resourceNamed: aPM) supportRecoveryRecipe]</body>

<body package="LamUIFileManagementApp" selector="refresh">refresh

	self updateRestoreListFor: (self restoreCommand value).
	self restorationPointSelected: nil</body>

<body package="LamUIFileManagementApp" selector="refreshDrives">refreshDrives

	self updateDriveSelectChoice.
	self driveSelectChoice.</body>

<body package="LamUIFileManagementApp" selector="restoreSelect">restoreSelect
	| command |
	self isBackupAvailable ifFalse: [^self warn: 'Please pause the system'].
	command := self restoreCommand value.
	self subscribeToEventsAtStartOfFileOperation.
	[self restore: command with: self getRestoreDirectory] 
		on: Object errorSignal
		do: [:ex | self warn: 'Restore failed']</body>

<body package="LamUIFileManagementApp" selector="supportsRecipeSecurityGroups">supportsRecipeSecurityGroups

	^ (self isRecipeSecurityGroupsEnabled)</body>
</methods>

<methods>
<class-id>LamUIFileBackup</class-id> <category>open-close</category>

<body package="LamUIFileManagementApp" selector="becomeActiveIn:at:">becomeActiveIn: aBuilder at: subcanvasSym

	super becomeActiveIn: aBuilder at: subcanvasSym.
	self updateRestoreList.
	(self dataArchiverModel isNil) ifTrue: [ self invisibleButton: #useAA ].
	self subscribeToEvents</body>

<body package="LamUIFileManagementApp" selector="postBuildWith:">postBuildWith: aBuilder

	super postBuildWith: aBuilder.

	self changedBackupSelect.
	self buttonState keysAndValuesDo: [:button :state |
		(self checkBuilder: button) ifTrue: [
			(self builder componentAt: button) perform: state.].
	].</body>
</methods>

<methods>
<class-id>LamUIFileBackup</class-id> <category>changeMessage</category>

<body package="LamUIFileManagementApp" selector="changedBackupSelect">changedBackupSelect

	| selection |

	selection := self backupCommand value.
	
	self updateHelpText: selection.</body>

<body package="LamUIFileManagementApp" selector="changedRestoreDrive">changedRestoreDrive

	self clearBackupList.
	self updateRestoreList.</body>

<body package="LamUIFileManagementApp" selector="changedRestoreSelect">changedRestoreSelect

	| selection |

	selection := self restoreCommand value.
	
	self updateRestoreListFor: selection.</body>

<body package="LamUIFileManagementApp" selector="restorationPointSelected:">restorationPointSelected: aController

	self clearBackupList.
	self restoreList selection
		ifNotNil: [:sel | | list |
			list := self fileServer contentsOfRestorationPointFromDirectory: sel.
			self updateLabel: 'Files stored in ', sel asFilename tail.
			self backupList list: list]</body>

<body package="LamUIFileManagementApp" selector="updateHelpText:">updateHelpText: aCommand

	| key text |
	key := (aCommand, #HelpText) asSymbol.
	text := self backupScripts at: key ifAbsentPut: [String new].

	self helpText value: text.</body>

<body package="LamUIFileManagementApp" selector="validateDrive:">validateDrive: aController
	"Check whether the number is in the right range. If not, warn the user."

	| entry answer |
	aController hasEditValue
		ifFalse: [
		 	aController view resetValue.
			^false].
	entry := aController editValue.
	(answer := self checkDriveExistNoError: entry asString)
		ifFalse: [aController view resetValue].
	^answer</body>
</methods>

<methods>
<class-id>LamUIFileBackup</class-id> <category>checking</category>

<body package="LamUIFileManagementApp" selector="checkDriveExistNoError:">checkDriveExistNoError: aPath

	(Filename volumes) do: [ :ea |
		((ea, '*') match: aPath) ifTrue: [ ^true].
	].

	self warn: 'Cannot access selected drive'.
	^false.</body>

<body package="LamUIFileManagementApp" selector="checkLastBackup:for:">checkLastBackup: aPath for: aScript
	| key lastBackup |

	key := (#lastBackup, aScript) asSymbol.
	lastBackup := (self backupScripts) at: key.

	^((lastBackup = '') or: [aPath = lastBackup])
	ifTrue: [ true ]
	ifFalse: [ 
		self confirmRestore: ('The selected file to restore is not the last backup.', (String with: (Character cr)), 'Continue with restore using the selected backup file?') 
	].</body>

<body package="LamUIFileManagementApp" selector="checkOffLine">checkOffLine

	Object errorSignal
		handle: [:ex | 
			Dialog warn:  'Error while checking offline resources.  ', ex errorString  for: Dialog defaultParentWindow.
			^nil.
		]
		do: [
			^(self factoryInterface idFilesBackupManager collectionToString: self cwImageCurrent offlineImageNames).
	].</body>

<body package="LamUIFileManagementApp" selector="checkOKToGo">checkOKToGo

	| offLineAnswer confirmMsg totalTime |
	self machine scheduler hasJobs ifTrue:[ 
		Dialog warn: 'System is busy, this operation can only be done when the machine is idle' for: Dialog defaultParentWindow.
		^false.
	].

	(offLineAnswer := self checkOffLine) isNil ifFalse: [
		totalTime := ' 10 to 30 seconds to complete.'.
		confirmMsg := 'Page switching is not allowed during this process. It may take up to', totalTime, (String with: Character cr).
		(offLineAnswer isEmpty) ifFalse:[
			confirmMsg := confirmMsg, 'The following resource(s) are offline:', (String with: Character cr),  offLineAnswer, (String with: Character cr), 'Their data will be missing from the files.', (String with: Character cr).
		].
		confirmMsg := confirmMsg, 'Do you want to continue?' .
		(Dialog confirm: confirmMsg
		initialAnswer: false for: Dialog defaultParentWindow) ifTrue:[
		^true.
		] .
	].
	^false.</body>

<body package="LamUIFileManagementApp" selector="confirmRestore:">confirmRestore: aString

	^(SimpleDialog new
		choose: aString
		labels: (Array with: 'Yes' with: 'No')
		values: #(true false)
		default: false asString asSymbol).</body>

<body package="LamUIFileManagementApp" selector="isBackupAvailable">isBackupAvailable

	((self optionHandler option: #Platform) == #StandAlone )
		ifTrue: [ ^true ]
		ifFalse: [ ^(self machine scheduler isPaused) ].</body>
</methods>

<methods>
<class-id>LamUIFileBackup</class-id> <category>private-list</category>

<body package="LamUIFileManagementApp" selector="addContentAndSubDirectoryToList:">addContentAndSubDirectoryToList: aPath

	| contents |
	(self excludedFileList includes: (aPath asFilename)) ifTrue: [^self ].
	contents := aPath directoryContentsAsFilenamesNoValidation.

	contents do: [:each |
		(each isDirectory) 
			ifFalse: [ self addFileToList: each]
			ifTrue: [ self addContentAndSubDirectoryToList: each].
	].</body>

<body package="LamUIFileManagementApp" selector="addFileToList:">addFileToList: aFile

	(self excludedFileList includes: (aFile asFilename)) ifTrue: [ ^nil ].

	self backupList list add: (aFile asString).

	self addBackupCopyFrom: aFile to: (self getDestinationFor: aFile).</body>

<body package="LamUIFileManagementApp" selector="checkWildCardAndAdd:">checkWildCardAndAdd: aFile

	| directory fileList |
	directory := aFile directory.
	fileList := List new.
	directory filesMatchingAccessList: (List new add: (aFile tail); yourself) into: fileList.

	fileList do: [:each |
		self addFileToList: each.
	]</body>

<body package="LamUIFileManagementApp" selector="clearBackupList">clearBackupList

	self backupList list: List new.
	self updateLabel: 'Backup File List'.</body>

<body package="LamUIFileManagementApp" selector="createListFrom:">createListFrom: aScript

	| emptyExclude |

	emptyExclude := OrderedCollection new.
	aScript keysAndValuesDo: [:directory :groups | | pathHead |
		pathHead := self getPathHeaderFor: directory.
		groups keysAndValuesDo: [ :group :paths |
			self excludedFileList: ((paths at: #exclude ifAbsent: [ emptyExclude ]) collect: [:exPath | (pathHead, exPath) asFilename]).
			(paths at: #include) do: [ :path | | fullPath |
				fullPath := (pathHead, path) asFilename.
				(fullPath exists)
				ifTrue: [
					(fullPath isDirectory)
						ifTrue: [ self addContentAndSubDirectoryToList: fullPath ]
						ifFalse: [ self addFileToList: fullPath ].
				]
				ifFalse: [ self checkWildCardAndAdd: fullPath ].
			].
		].
	].</body>

<body package="LamUIFileManagementApp" selector="loadSelectedLog">loadSelectedLog

	| file archive aList logStream |
	self clearBackupList.
	archive := (self restoreList selection) asFilename.
	self updateLabel: 'Files stored in ', (archive tail).
	aList := List new.
	file := ((archive asString), '\backuplog.txt') asFilename.
	((file exists) and: [file isReadable]) ifTrue: [ 
		logStream := file readStream.
		[
			aList add: logStream nextLine.
			logStream atEnd
		] whileFalse.
		aList sort.
		self backupList list: aList.
		logStream close.
	].</body>

<body package="LamUIFileManagementApp" selector="outputListAsText:">outputListAsText: aName

	| theFile theStream |

	theFile := aName asFilename.

	self accessSemaphore critical: [ | theWriteBlock |
		theStream := theFile writeStream.
		theWriteBlock := [ 
			theStream nextPutAll: (self softwareVersion);
					nextPut: Character cr.

			self backupList list do: [ :each |
				theStream nextPutAll: each;
					nextPut: Character cr ]].
		theWriteBlock valueNowOrOnUnwindDo: [ theStream close ]].</body>

<body package="LamUIFileManagementApp" selector="outputTSFile:">outputTSFile: aName

	| aDict |

	aDict := Dictionary new.
	self backupList list do: [ :each |
		| tsDict |
		tsDict := FileManageInterface current getFileTime: each.
		aDict at: each put: tsDict.
	].

	MOSS putObject: aDict onFile: aName.</body>

<body package="LamUIFileManagementApp" selector="saveBackupScriptSlashes:">saveBackupScriptSlashes: aFileNameNoExt

	| aDict stream |
	
	aDict := CTSystemConfigurationBrowser new privateReadFromFile: (aFileNameNoExt,'.cfg').
	stream := (Filename called: (aFileNameNoExt,'.txt')) writeStream.
	[ CTConfigTool storeDictionary: aDict named: '' on: stream ] valueNowOrOnUnwindDo: [stream close].</body>

<body package="LamUIFileManagementApp" selector="selectLastRestorationPoint">selectLastRestorationPoint

	| index |
	index := self restoreList list size.
	self restoreList selectionIndex: index.
	self restorationPointSelected: nil</body>

<body package="LamUIFileManagementApp" selector="updateLabel:">updateLabel: aString

	(self builder componentAt: #backupListLabel) labelString: aString</body>

<body package="LamUIFileManagementApp" selector="updateRestoreList">updateRestoreList

	| selection |

	selection := self restoreCommand value.
	self updateRestoreListFor: selection.</body>

<body package="LamUIFileManagementApp" selector="updateRestoreListFor:">updateRestoreListFor: aSelection

	| list |
	list := self fileServer restoreListFor: aSelection inDirectory: self restoreDriveSelect value.
	self restoreList list: list.</body>
</methods>

<methods>
<class-id>LamUIFileBackup</class-id> <category>private-operation</category>

<body package="LamUIFileManagementApp" selector="askAAToStoreContentsOf:">askAAToStoreContentsOf: aFilename

	(self dataArchiverModel isNil) ifTrue: [ ^nil ].
	[
	((aFilename exists) and: [ aFilename isDirectory])
	ifTrue: [
		aFilename directoryContents do: [ :eachFile |
			self dataArchiverModel newDataLogFile: (aFilename asString, '\', eachFile asString) for: #ALL.
		].
	].
	] fork.</body>

<body package="LamUIFileManagementApp" selector="backupUsing:">backupUsing: aCommand

	self disableBackup.
	self clearBackupList.
	self resetProgressFields.
	self subscribeToEventsAtStartOfFileOperation.
	self fileServer backupUsing: aCommand withArchive: self useAA value.</body>

<body package="LamUIFileManagementApp" selector="cleanUp:">cleanUp: aDirectory

	(aDirectory notNil and: [aDirectory exists]) ifTrue: [
		self fileServer backupPolicy deleteBackup: aDirectory.
	].</body>

<body package="LamUIFileManagementApp" selector="copyDirectoryCheck:to:">copyDirectoryCheck: aSourceDir to: aDestDir

	| destFilename |

	destFilename := aDestDir asFilename.
	(destFilename isWritable) ifFalse: [ 
		self warn: 'Cannot restore.  Destination is read only'.
		Object errorSignal raiseSignal.
	].
	aSourceDir asFilename directoryContentsAsFilenamesNoValidation do: [ :each |
		| newDest |
		newDest := (destFilename asString, '\', each tail) asFilename.
		each isDirectory
		ifTrue: [
			newDest exists ifFalse: [ self addMakeDirectory: newDest ].
			self copyDirectoryCheck: each to: newDest.
		]
		ifFalse: [ self addCopyFrom: each to: newDest ].
	].</body>

<body package="LamUIFileManagementApp" selector="restore:with:">restore: aScript with: aDirectory

	| path aZipFile aTSFile |

	((path := aDirectory) isNil) ifTrue: [ ^self].
	(self checkLastBackup: (path tail) for: aScript) ifFalse: [ ^self].

	self loadSelectedLog.
	
	aZipFile := path asString, '\', (path tail), '.zip'.

	aTSFile := path asFilename head asString, '\backupTS.mos'.
	self restoreFrom: aZipFile with: aTSFile.</body>

<body package="LamUIFileManagementApp" selector="restoreFrom:">restoreFrom: aZipFile

	self disableBackup.

	[[self errorList handleDo: [
		backupDirectory := nil.
		self fileServer unzip: aZipFile to: (self defaultDataDrive) withFileSpec: (self dataDirectorySpec) withAction: #'restore data directory'.
		self fileServer unzip: aZipFile to: (self defaultInstallDrive) withFileSpec: (self installDirectorySpec) withAction: #'restore install directory'.
	]] ensure: [self enableBackup]] forkAt: (Processor userBackgroundPriority - 1).</body>

<body package="LamUIFileManagementApp" selector="restoreFrom:with:">restoreFrom: aZipFile with: aTSFile

	self disableBackup.
	self resetProgressFields.
	
	(self fileServer isExternalApp)
	ifTrue:[
			self subscribeToEventsAtStartOfFileOperation.
			self fileServer unzip: aZipFile to: (self defaultDataDrive) withFileSpec: (self dataDirectorySpec) withAction: #'restore'.
		]
	ifFalse:[
		[[self errorList handleDo: [
			backupDirectory := nil.
			self fileServer unzip: aZipFile to: (self defaultDataDrive) withFileSpec: (self dataDirectorySpec) withAction: #'restore data directory'.
			self fileServer unzip: aZipFile to: (self defaultInstallDrive) withFileSpec: (self installDirectorySpec) withAction: #'restore install directory'.
			(aTSFile asFilename exists) ifTrue: [ self updateFileTSUsing: aTSFile ].
			self unsubscribeFromEventsAtEndOfFileOperation.
		]] ensure: [
			(aTSFile asFilename exists) ifTrue: [ aTSFile asFilename delete ].
			self enableBackup]] forkAt: (Processor userBackgroundPriority - 1).
	].</body>

<body package="LamUIFileManagementApp" selector="updateFileTSUsing:">updateFileTSUsing: aTSFile

	| aDict |

	aDict := MOSS getObjectFromFile: aTSFile.
	aDict keysAndValuesDo: [:file :tsDict |
		FileManageInterface current setFileTime: (file asString) with: tsDict.
	].</body>
</methods>

<methods>
<class-id>LamUIFileBackup</class-id> <category>enable-disable</category>

<body package="LamUIFileManagementApp" selector="clearProgressFields">clearProgressFields

	self sourceFileName value: String new.
	self destinationFileName value: String new.
	self progress value: 0.0.
	self status value: String new.</body>

<body package="LamUIFileManagementApp" selector="disableBackup">disableBackup

	self scriptButton do: [:ea |
		self disableButton: ea.
	].</body>

<body package="LamUIFileManagementApp" selector="disableButton:">disableButton: aButton

	self buttonBecomeDisabled: aButton.
	self buttonState at: aButton put: #disable.</body>

<body package="LamUIFileManagementApp" selector="enableBackup">enableBackup

	self scriptButton do: [:ea |
		self enableButton: ea.
	].</body>

<body package="LamUIFileManagementApp" selector="enableButton:">enableButton: aButton

	self buttonBecomeEnabled: aButton.
	self buttonState at: aButton put: #enable.</body>
</methods>

<methods>
<class-id>LamUIFileBackup</class-id> <category>utility</category>

<body package="LamUIFileManagementApp" selector="getDateFrom:">getDateFrom: aDate

	| index |

	index := aDate dayOfMonth.
	(index &lt; 10)
		ifFalse: [ ^index asString]
		ifTrue: [^('0', index asString) ].</body>

<body package="LamUIFileManagementApp" selector="getDestinationFor:">getDestinationFor: aFilename

	| thePath theVolume tailPath |
	thePath := aFilename asString.
	theVolume := (aFilename asFilename volume).

	tailPath := (thePath copyFrom: (theVolume size +1) to: thePath size).

	^(self backupDirectory asString), '\', tailPath</body>

<body package="LamUIFileManagementApp" selector="getHourFrom:">getHourFrom: aTime

	| index |
	index := aTime hours.
	(index &lt; 10)
		ifFalse: [ ^index asString]
		ifTrue: [^('0', index asString) ].</body>

<body package="LamUIFileManagementApp" selector="getKeywordFor:">getKeywordFor: aCommand

	(aCommand = #all) ifTrue: [ ^'*'].

	^'*', aCommand, '*'</body>

<body package="LamUIFileManagementApp" selector="getMinuteFrom:">getMinuteFrom: aTime

	| index |
	index := aTime minutes.
	(index &lt; 10)
		ifFalse: [ ^index asString]
		ifTrue: [^('0', index asString) ].</body>

<body package="LamUIFileManagementApp" selector="getMonthFrom:">getMonthFrom: aDate

	| index |

	index := aDate monthIndex.
	(index &lt; 10)
		ifFalse: [ ^index asString]
		ifTrue: [^('0', index asString) ].</body>

<body package="LamUIFileManagementApp" selector="getNewZipFilenameFor:">getNewZipFilenameFor: aDirectory

	^(aDirectory asString), '\', (aDirectory tail), '.zip'</body>

<body package="LamUIFileManagementApp" selector="getPathHeaderFor:">getPathHeaderFor: aSymbol

	(aSymbol = #lamInstall)
		ifTrue: [ ^self defaultInstallDirectory].

	(aSymbol = #lamData)
		ifTrue: [^self dataDirectory].

	(aSymbol = #ProgramFile)
		ifTrue: [^'C:'].

	^''.</body>

<body package="LamUIFileManagementApp" selector="getRestoreDirectory">getRestoreDirectory

	| path returnPath |

	returnPath := nil.
	(self restoreList selection notNil)
	ifTrue: [ 
		(self checkDriveExistNoError: (self restoreList selection)) ifFalse: [ ^returnPath ].
		path := self restoreList selection asFilename.

		(path exists) 
			ifTrue: [ returnPath := path]
			ifFalse: [ self warn: 'Selected file does not exist'].
	]
	ifFalse: [ 
		self warn: 'No restore file selected'.
	].

	^returnPath.</body>
</methods>

<methods>
<class-id>LamUIFileBackup</class-id> <category>initialize-release</category>

<body package="LamUIFileManagementApp" selector="initConfigSelection">initConfigSelection

	self backupCommand value: #all.
	self restoreCommand value: #all.

	self restoreDriveSelect value: (self dataDirectory, '\backup\').</body>

<body package="LamUIFileManagementApp" selector="initialize">initialize

	super initialize.
	self initConfigSelection.
	self transfer initTransferWith: 1.
	excludedFileList := OrderedCollection new.</body>

<body package="LamUIFileManagementApp" selector="subscribeToEvents">subscribeToEvents

	self fileServer 
		when: #backupComplete: send: #backupComplete: to: self;
		when: #backupFailed send: #backupFailed to: self;
		when: #noBackupFilesWarning send: #noBackupFilesWarning to: self;
		when: #schedulerPaused send: #schedulerPaused to: self</body>
</methods>

<methods>
<class-id>LamUIFileBackup</class-id> <category>notifications</category>

<body package="LamUIFileManagementApp" selector="backupComplete:">backupComplete: aSymbol

	self unsubscribeFromEventsAtEndOfFileOperation.
	self enableBackup.
	self updateRestoreList.
	self selectLastRestorationPoint.</body>

<body package="LamUIFileManagementApp" selector="backupFailed">backupFailed

	self unsubscribeFromEventsAtEndOfFileOperation.
	super backupFailed.
	self enableBackup.
	self updateRestoreList.
	self selectLastRestorationPoint.
	self clearProgressFields.</body>

<body package="LamUIFileManagementApp" selector="destinationFileName:">destinationFileName: aString

	self destinationFileName value: aString</body>

<body package="LamUIFileManagementApp" selector="noBackupFilesWarning">noBackupFilesWarning

	self warn: 'No files to backup!'</body>

<body package="LamUIFileManagementApp" selector="reportList:">reportList: anOrderedCollection

	self backupList list: anOrderedCollection</body>

<body package="LamUIFileManagementApp" selector="resetProgressFields">resetProgressFields


	self progress value: 0.	
	self sourceFileName value: String new.
	self destinationFileName value: String new.
	self status value: String new.</body>

<body package="LamUIFileManagementApp" selector="schedulerResumed">schedulerResumed

	"we need this to distinguish this callback from that of an instance of a different subclass of the superclass of this class"
	super schedulerResumed.</body>

<body package="LamUIFileManagementApp" selector="sourceFileName:">sourceFileName: aString

	self sourceFileName value: aString</body>

<body package="LamUIFileManagementApp" selector="transferProgressUpdate:">transferProgressUpdate: aNumber

	aNumber notNil
		ifTrue: [self progress value: aNumber]</body>

<body package="LamUIFileManagementApp" selector="transferStatus:">transferStatus: aStatus

	aStatus notNil
		ifTrue: [self status value: aStatus]</body>
</methods>

</st-source>
