" Vim syntax file
" Language: Autodesk MAXScript
" Last change: 2009-03-23
" File Types: .ms

if exists("b:current_syntax")
    finish
endif

syn region maxComment start=/--/ end=/$/ keepend
syn region maxCComment start=/\/\*/ end=/\*\// extend contains=NONE

syn match maxEnumerator /#\w\+/ display

syn keyword maxPredefined red green blue white black orange yellow brown gray
syn keyword maxPredefined x_axis y_axis z_axis
syn keyword maxPredefined ok undefined unsupplied dontcollect
syn keyword maxPredefinedFloat pi e
syn region maxString start=/"/ end=/"/ skip=/\\"/ contains=maxSpecialChar
syn keyword maxBoolean true false on off

syn keyword maxGlobals activeGrid ambientColor ambientColorController animationRange animButtonEnabled animButtonState autoBackup
syn keyword maxGlobals backgroundColor backgroundColorController backgroundImageFileName
syn keyword maxGlobals cui currentMaterialLibrary
syn keyword maxGlobals displayGamma fileInGamma fileOutGamma displaySafeFrames
syn keyword maxGlobals environmentMap flyOffTime frameRate
syn keyword maxGlobals globalTracks hardwareLockID hotspotAngleSeparation
syn keyword maxGlobals keyboard lightTintColor lightTintColorController lightLevel lightLevelController listener localTime logsystem
syn keyword maxGlobals macroRecorder manipulateMode maxFileName maxFilePath maxOps meditMaterials
syn keyword maxGlobals numEffects numAtmospherics numSubObjectLevels
syn keyword maxGlobals playActiveOnly preferences
syn keyword maxGlobals realTimePlayback renderer renderDisplacements renderEffects renderHeight renderPixelAspect renderWidth rendOutputFilename rendSimplifyAreaLights rootNode
syn keyword maxGlobals sceneMaterials scriptsPath selectionSets showEndResult skipRenderedFrames sliderTime snapMode subObjectLevel sysInfo
syn keyword maxGlobals ticksPerFrame timeConfiguration timeDisplayMode toolMode trackbar trackViewNodes
syn keyword maxGlobals units useEnvironmentMap
syn keyword maxGlobals videoPostTracks viewport
syn keyword maxGlobals scanlineRender

syn keyword maxGlobals currentTime editorFont editorFontSize editorShowPath editorTabWidth escapeEnable heapFree inputTextColor messageTextColor outputTextColor options stackLimit

syn keyword maxStatement exit with function fn
syn keyword maxConditional if then else case of default
syn keyword maxRepeat for in do while continue collect
" XXX do something about ranges in for loops: to by where
syn keyword maxException try catch throw

syn keyword maxInclude include

syn keyword maxDecl local global mapped

syn match maxSpecialChar /\\./ contained display

syn match maxPositionalArgument /\<\w\+:/ display

hi def link maxComment Comment
hi def link maxCComment Comment

hi def link maxEnumerator Constant
hi def link maxPredefined Constant
hi def link maxString String
hi def link maxBoolean Boolean
hi def link maxPredefinedFloat Float

hi def link maxGlobals Identifier

hi def link maxStatement Statement
hi def link maxConditional Conditional
hi def link maxRepeat Repeat
hi def link maxException Exception

hi def link maxInclude Include

hi def link maxDecl StorageClass

hi def link maxSpecialChar SpecialChar

hi def link maxPositionalArgument Delimiter
