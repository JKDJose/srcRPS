<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks®, 7.4 of December 5, 2005 on October 30, 2017 at 11:04:52 pm</time-stamp>


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

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>RPSTools class</class-id> <category>As yet unclassified</category>

<body package="RPSApplications" selector="stackChecker">stackChecker
	| tab cr space stackString newStackString contextString newContextString entryString newEntryString pcString newPCString count initialDir foundStacksDir foundStacks fileChecking readStream writeStream lineStream lineString test|
	test := Dialog confirm: 'This will parse your eventlogs D:\StackCheck folder. Do you wish to continue?' initialAnswer: false.
(test) ifTrue:[
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
		[fileChecking := initialDir asFilename directoryContentsAsFilenames.
		fileChecking do: 
				[:filename | 
				filename isDirectory 
					ifFalse: 
						[readStream := filename asFilename readStream.
						writeStream := foundStacks asFilename appendStream.
						[readStream atEnd] whileFalse: 
								[lineStream := readStream nextLine readStream.
								lineString := lineStream contents.
								((lineString findString: stackString startingAt: 1) &gt; 0 )
									ifTrue: 
										[
										
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
count &gt; 0 
	ifTrue: 
		[Dialog 
			warn: 'Please check the foundStacks.txt file in the D:\StackCheck\Found folder.']
			ifFalse:[Dialog warn: 'No stack dumps were found or there are no files in the D:\StackCheck folder.']
			].</body>
</methods>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>RPSTools</class-id> <category>initialize-release</category>

<body package="RPSApplications" selector="initialize">initialize
	"Initialize a newly created instance. This method must answer the receiver."

	super initialize.
	" *** Replace this comment with the appropriate initialization code *** "
	^self</body>
</methods>

</st-source>
