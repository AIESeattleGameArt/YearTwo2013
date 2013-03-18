//Maya ASCII 2013 scene
//Name: kw_ReferenceHero.ma
//Last modified: Mon, Mar 18, 2013 11:59:31 AM
//Codeset: 1252
file -rdi 1 -ns "kw_Hair" -rfn "kw_HairRN" "C:/Users/Student/Documents/GitHub/YearTwo2013/ReferenceHero/Source/kw_Hair.ma";
file -rdi 1 -ns "mt_Glasses" -rfn "mt_GlassesRN" "C:/Users/Student/Documents/GitHub/YearTwo2013/ReferenceHero/Source/mt_Glasses.ma";
file -rdi 1 -ns "mt_Pouch" -rfn "mt_PouchRN" "C:/Users/Student/Documents/GitHub/YearTwo2013/ReferenceHero/Source/mt_Pouch.ma";
file -rdi 1 -ns "SK_shoulder_pads" -rfn "SK_shoulder_padsRN" "C:/Users/Student/Documents/GitHub/YearTwo2013/ReferenceHero/Source/SK_shoulder_pads.ma";
file -rdi 1 -ns "Hero_Body" -rfn "Hero_BodyRN" "C:/Users/Student/Documents/GitHub/YearTwo2013/ReferenceHero/Source/Hero_Body.ma";
file -rdi 1 -ns "sw_boots" -rfn "sw_bootsRN" "C:/Users/Student/Documents/GitHub/YearTwo2013/ReferenceHero/Source/sw_boots.ma";
file -rdi 1 -ns "ei_helmet" -rfn "ei_helmetRN1" "C:/Users/Student/Documents/GitHub/YearTwo2013/ReferenceHero/Source/ei_helmet.fbx";
file -r -ns "kw_Hair" -dr 1 -rfn "kw_HairRN" "C:/Users/Student/Documents/GitHub/YearTwo2013/ReferenceHero/Source/kw_Hair.ma";
file -r -ns "mt_Glasses" -dr 1 -rfn "mt_GlassesRN" "C:/Users/Student/Documents/GitHub/YearTwo2013/ReferenceHero/Source/mt_Glasses.ma";
file -r -ns "mt_Pouch" -dr 1 -rfn "mt_PouchRN" "C:/Users/Student/Documents/GitHub/YearTwo2013/ReferenceHero/Source/mt_Pouch.ma";
file -r -ns "SK_shoulder_pads" -dr 1 -rfn "SK_shoulder_padsRN" "C:/Users/Student/Documents/GitHub/YearTwo2013/ReferenceHero/Source/SK_shoulder_pads.ma";
file -r -ns "Hero_Body" -dr 1 -rfn "Hero_BodyRN" "C:/Users/Student/Documents/GitHub/YearTwo2013/ReferenceHero/Source/Hero_Body.ma";
file -r -ns "sw_boots" -dr 1 -rfn "sw_bootsRN" "C:/Users/Student/Documents/GitHub/YearTwo2013/ReferenceHero/Source/sw_boots.ma";
file -r -ns "ei_helmet" -dr 1 -rfn "ei_helmetRN1" "C:/Users/Student/Documents/GitHub/YearTwo2013/ReferenceHero/Source/ei_helmet.fbx";
requires maya "2013";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2013";
fileInfo "version" "2013 x64";
fileInfo "cutIdentifier" "201202220241-825136";
fileInfo "osv" "Microsoft Windows 7 Business Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "education";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.0527498994934752 15.097487042086156 19.868242003526589 ;
	setAttr ".r" -type "double3" -7.538352729614604 -7.8000000000000798 -1.0032051520641157e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 29.462426183725015;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode reference -n "kw_HairRN";
	setAttr ".ed" -type "dataReferenceEdits" 
		"kw_HairRN"
		"kw_HairRN" 0
		"kw_HairRN" 38
		2 "|kw_Hair:pCube1" "miDeriveFromMaya" " 1"
		2 "|kw_Hair:pCube1" "miHide" " 0"
		2 "|kw_Hair:pCube1" "miVisible" " 2"
		2 "|kw_Hair:pCube1" "miTrace" " 2"
		2 "|kw_Hair:pCube1" "miShadow" " 2"
		2 "|kw_Hair:pCube1" "miCaustic" " 5"
		2 "|kw_Hair:pCube1" "miGlobillum" " 5"
		2 "|kw_Hair:pCube1" "miExportGeoShader" " 0"
		2 "|kw_Hair:pCube1" "miProxyRenderable" " 1"
		2 "|kw_Hair:pCube1|kw_Hair:pCubeShape1" "miOverrideCaustics" " 0"
		2 "|kw_Hair:pCube1|kw_Hair:pCubeShape1" "miCausticAccuracy" " 64"
		2 "|kw_Hair:pCube1|kw_Hair:pCubeShape1" "miCausticRadius" " 0"
		2 "|kw_Hair:pCube1|kw_Hair:pCubeShape1" "miOverrideGlobalIllumination" " 0"
		
		2 "|kw_Hair:pCube1|kw_Hair:pCubeShape1" "miGlobillumAccuracy" " 64"
		2 "|kw_Hair:pCube1|kw_Hair:pCubeShape1" "miGlobillumRadius" " 0"
		2 "|kw_Hair:pCube1|kw_Hair:pCubeShape1" "miOverrideFinalGather" " 0"
		2 "|kw_Hair:pCube1|kw_Hair:pCubeShape1" "miFinalGatherRays" " 1000"
		2 "|kw_Hair:pCube1|kw_Hair:pCubeShape1" "miFinalGatherMinRadius" " 0"
		2 "|kw_Hair:pCube1|kw_Hair:pCubeShape1" "miFinalGatherMaxRadius" " 0"
		2 "|kw_Hair:pCube1|kw_Hair:pCubeShape1" "miFinalGatherFilter" " 1"
		2 "|kw_Hair:pCube1|kw_Hair:pCubeShape1" "miFinalGatherView" " 0"
		2 "|kw_Hair:pCube1|kw_Hair:pCubeShape1" "miOverrideSamples" " 0"
		2 "|kw_Hair:pCube1|kw_Hair:pCubeShape1" "miMinSamples" " 0"
		2 "|kw_Hair:pCube1|kw_Hair:pCubeShape1" "miMaxSamples" " 2"
		2 "|kw_Hair:pCube1|kw_Hair:pCubeShape1" "miFinalGatherCast" " 1"
		2 "|kw_Hair:pCube1|kw_Hair:pCubeShape1" "miFinalGatherReceive" " 1"
		2 "|kw_Hair:pCube1|kw_Hair:pCubeShape1" "miTransparencyCast" " 1"
		2 "|kw_Hair:pCube1|kw_Hair:pCubeShape1" "miTransparencyReceive" " 1"
		2 "|kw_Hair:pCube1|kw_Hair:pCubeShape1" "miReflectionReceive" " 1"
		2 "|kw_Hair:pCube1|kw_Hair:pCubeShape1" "miRefractionReceive" " 1"
		2 "|kw_Hair:pCube1|kw_Hair:pCubeShape1" "miUpdateProxyBoundingBoxMode" " 0"
		
		2 "|kw_Hair:pCube1|kw_Hair:pCubeShape1" "miProxyBoundingBoxMin" " -type \"double3\" 0 0 0"
		
		2 "|kw_Hair:pCube1|kw_Hair:pCubeShape1" "miProxyBoundingBoxMax" " -type \"double3\" 0 0 0"
		
		2 "|kw_Hair:pCube1|kw_Hair:pCubeShape1" "miShadingSamplesOverride" " 0"
		2 "|kw_Hair:pCube1|kw_Hair:pCubeShape1" "miShadingSamples" " 0"
		2 "|kw_Hair:pCube1|kw_Hair:pCubeShape1" "miMaxDisplaceOverride" " 0"
		2 "|kw_Hair:pCube1|kw_Hair:pCubeShape1" "miMaxDisplace" " 0"
		2 "kw_Hair:defaultRenderLayer" "globalIllum" " 0";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "mt_GlassesRN";
	setAttr ".ed" -type "dataReferenceEdits" 
		"mt_GlassesRN"
		"mt_GlassesRN" 0
		"mt_GlassesRN" 76
		2 "|mt_Glasses:glasses" "miDeriveFromMaya" " 1"
		2 "|mt_Glasses:glasses" "miHide" " 0"
		2 "|mt_Glasses:glasses" "miVisible" " 2"
		2 "|mt_Glasses:glasses" "miTrace" " 2"
		2 "|mt_Glasses:glasses" "miShadow" " 2"
		2 "|mt_Glasses:glasses" "miCaustic" " 5"
		2 "|mt_Glasses:glasses" "miGlobillum" " 5"
		2 "|mt_Glasses:glasses" "miExportGeoShader" " 0"
		2 "|mt_Glasses:glasses" "miProxyRenderable" " 1"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1" "translate" " -type \"double3\" 0 17.09025 1.455005"
		
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1" "miDeriveFromMaya" " 1"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1" "miHide" " 0"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1" "miVisible" " 2"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1" "miTrace" " 2"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1" "miShadow" " 2"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1" "miCaustic" " 5"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1" "miGlobillum" " 5"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1" "miExportGeoShader" " 0"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1" "miProxyRenderable" " 1"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:pCubeShape1" "miOverrideCaustics" 
		" 0"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:pCubeShape1" "miCausticAccuracy" 
		" 64"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:pCubeShape1" "miCausticRadius" 
		" 0"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:pCubeShape1" "miOverrideGlobalIllumination" 
		" 0"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:pCubeShape1" "miGlobillumAccuracy" 
		" 64"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:pCubeShape1" "miGlobillumRadius" 
		" 0"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:pCubeShape1" "miOverrideFinalGather" 
		" 0"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:pCubeShape1" "miFinalGatherRays" 
		" 1000"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:pCubeShape1" "miFinalGatherMinRadius" 
		" 0"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:pCubeShape1" "miFinalGatherMaxRadius" 
		" 0"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:pCubeShape1" "miFinalGatherFilter" 
		" 1"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:pCubeShape1" "miFinalGatherView" 
		" 0"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:pCubeShape1" "miOverrideSamples" 
		" 0"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:pCubeShape1" "miMinSamples" 
		" 0"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:pCubeShape1" "miMaxSamples" 
		" 2"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:pCubeShape1" "miFinalGatherCast" 
		" 1"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:pCubeShape1" "miFinalGatherReceive" 
		" 1"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:pCubeShape1" "miTransparencyCast" 
		" 1"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:pCubeShape1" "miTransparencyReceive" 
		" 1"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:pCubeShape1" "miReflectionReceive" 
		" 1"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:pCubeShape1" "miRefractionReceive" 
		" 1"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:pCubeShape1" "miUpdateProxyBoundingBoxMode" 
		" 0"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:pCubeShape1" "miProxyBoundingBoxMin" 
		" -type \"double3\" 0 0 0"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:pCubeShape1" "miProxyBoundingBoxMax" 
		" -type \"double3\" 0 0 0"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:pCubeShape1" "miShadingSamplesOverride" 
		" 0"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:pCubeShape1" "miShadingSamples" 
		" 0"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:pCubeShape1" "miMaxDisplaceOverride" 
		" 0"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:pCubeShape1" "miMaxDisplace" 
		" 0"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:polySurfaceShape1" "miOverrideCaustics" 
		" 0"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:polySurfaceShape1" "miCausticAccuracy" 
		" 64"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:polySurfaceShape1" "miCausticRadius" 
		" 0"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:polySurfaceShape1" "miOverrideGlobalIllumination" 
		" 0"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:polySurfaceShape1" "miGlobillumAccuracy" 
		" 64"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:polySurfaceShape1" "miGlobillumRadius" 
		" 0"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:polySurfaceShape1" "miOverrideFinalGather" 
		" 0"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:polySurfaceShape1" "miFinalGatherRays" 
		" 1000"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:polySurfaceShape1" "miFinalGatherMinRadius" 
		" 0"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:polySurfaceShape1" "miFinalGatherMaxRadius" 
		" 0"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:polySurfaceShape1" "miFinalGatherFilter" 
		" 1"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:polySurfaceShape1" "miFinalGatherView" 
		" 0"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:polySurfaceShape1" "miOverrideSamples" 
		" 0"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:polySurfaceShape1" "miMinSamples" 
		" 0"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:polySurfaceShape1" "miMaxSamples" 
		" 2"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:polySurfaceShape1" "miFinalGatherCast" 
		" 1"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:polySurfaceShape1" "miFinalGatherReceive" 
		" 1"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:polySurfaceShape1" "miTransparencyCast" 
		" 1"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:polySurfaceShape1" "miTransparencyReceive" 
		" 1"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:polySurfaceShape1" "miReflectionReceive" 
		" 1"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:polySurfaceShape1" "miRefractionReceive" 
		" 1"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:polySurfaceShape1" "miUpdateProxyBoundingBoxMode" 
		" 0"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:polySurfaceShape1" "miProxyBoundingBoxMin" 
		" -type \"double3\" 0 0 0"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:polySurfaceShape1" "miProxyBoundingBoxMax" 
		" -type \"double3\" 0 0 0"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:polySurfaceShape1" "miShadingSamplesOverride" 
		" 0"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:polySurfaceShape1" "miShadingSamples" 
		" 0"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:polySurfaceShape1" "miMaxDisplaceOverride" 
		" 0"
		2 "|mt_Glasses:glasses|mt_Glasses:pCube1|mt_Glasses:polySurfaceShape1" "miMaxDisplace" 
		" 0"
		2 "mt_Glasses:defaultRenderLayer" "globalIllum" " 0";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "mt_PouchRN";
	setAttr ".ed" -type "dataReferenceEdits" 
		"mt_PouchRN"
		"mt_PouchRN" 0
		"mt_PouchRN" 38
		2 "|mt_Pouch:pCube1" "miDeriveFromMaya" " 1"
		2 "|mt_Pouch:pCube1" "miHide" " 0"
		2 "|mt_Pouch:pCube1" "miVisible" " 2"
		2 "|mt_Pouch:pCube1" "miTrace" " 2"
		2 "|mt_Pouch:pCube1" "miShadow" " 2"
		2 "|mt_Pouch:pCube1" "miCaustic" " 5"
		2 "|mt_Pouch:pCube1" "miGlobillum" " 5"
		2 "|mt_Pouch:pCube1" "miExportGeoShader" " 0"
		2 "|mt_Pouch:pCube1" "miProxyRenderable" " 1"
		2 "|mt_Pouch:pCube1|mt_Pouch:pCubeShape1" "miOverrideCaustics" " 0"
		2 "|mt_Pouch:pCube1|mt_Pouch:pCubeShape1" "miCausticAccuracy" " 64"
		2 "|mt_Pouch:pCube1|mt_Pouch:pCubeShape1" "miCausticRadius" " 0"
		2 "|mt_Pouch:pCube1|mt_Pouch:pCubeShape1" "miOverrideGlobalIllumination" 
		" 0"
		2 "|mt_Pouch:pCube1|mt_Pouch:pCubeShape1" "miGlobillumAccuracy" " 64"
		2 "|mt_Pouch:pCube1|mt_Pouch:pCubeShape1" "miGlobillumRadius" " 0"
		2 "|mt_Pouch:pCube1|mt_Pouch:pCubeShape1" "miOverrideFinalGather" " 0"
		2 "|mt_Pouch:pCube1|mt_Pouch:pCubeShape1" "miFinalGatherRays" " 1000"
		2 "|mt_Pouch:pCube1|mt_Pouch:pCubeShape1" "miFinalGatherMinRadius" " 0"
		2 "|mt_Pouch:pCube1|mt_Pouch:pCubeShape1" "miFinalGatherMaxRadius" " 0"
		2 "|mt_Pouch:pCube1|mt_Pouch:pCubeShape1" "miFinalGatherFilter" " 1"
		2 "|mt_Pouch:pCube1|mt_Pouch:pCubeShape1" "miFinalGatherView" " 0"
		2 "|mt_Pouch:pCube1|mt_Pouch:pCubeShape1" "miOverrideSamples" " 0"
		2 "|mt_Pouch:pCube1|mt_Pouch:pCubeShape1" "miMinSamples" " 0"
		2 "|mt_Pouch:pCube1|mt_Pouch:pCubeShape1" "miMaxSamples" " 2"
		2 "|mt_Pouch:pCube1|mt_Pouch:pCubeShape1" "miFinalGatherCast" " 1"
		2 "|mt_Pouch:pCube1|mt_Pouch:pCubeShape1" "miFinalGatherReceive" " 1"
		2 "|mt_Pouch:pCube1|mt_Pouch:pCubeShape1" "miTransparencyCast" " 1"
		2 "|mt_Pouch:pCube1|mt_Pouch:pCubeShape1" "miTransparencyReceive" " 1"
		2 "|mt_Pouch:pCube1|mt_Pouch:pCubeShape1" "miReflectionReceive" " 1"
		2 "|mt_Pouch:pCube1|mt_Pouch:pCubeShape1" "miRefractionReceive" " 1"
		2 "|mt_Pouch:pCube1|mt_Pouch:pCubeShape1" "miUpdateProxyBoundingBoxMode" 
		" 0"
		2 "|mt_Pouch:pCube1|mt_Pouch:pCubeShape1" "miProxyBoundingBoxMin" " -type \"double3\" 0 0 0"
		
		2 "|mt_Pouch:pCube1|mt_Pouch:pCubeShape1" "miProxyBoundingBoxMax" " -type \"double3\" 0 0 0"
		
		2 "|mt_Pouch:pCube1|mt_Pouch:pCubeShape1" "miShadingSamplesOverride" " 0"
		
		2 "|mt_Pouch:pCube1|mt_Pouch:pCubeShape1" "miShadingSamples" " 0"
		2 "|mt_Pouch:pCube1|mt_Pouch:pCubeShape1" "miMaxDisplaceOverride" " 0"
		2 "|mt_Pouch:pCube1|mt_Pouch:pCubeShape1" "miMaxDisplace" " 0"
		2 "mt_Pouch:defaultRenderLayer" "globalIllum" " 0";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "SK_shoulder_padsRN";
	setAttr ".ed" -type "dataReferenceEdits" 
		"SK_shoulder_padsRN"
		"SK_shoulder_padsRN" 0
		"SK_shoulder_padsRN" 38
		2 "|SK_shoulder_pads:pCube1" "miDeriveFromMaya" " 1"
		2 "|SK_shoulder_pads:pCube1" "miHide" " 0"
		2 "|SK_shoulder_pads:pCube1" "miVisible" " 2"
		2 "|SK_shoulder_pads:pCube1" "miTrace" " 2"
		2 "|SK_shoulder_pads:pCube1" "miShadow" " 2"
		2 "|SK_shoulder_pads:pCube1" "miCaustic" " 5"
		2 "|SK_shoulder_pads:pCube1" "miGlobillum" " 5"
		2 "|SK_shoulder_pads:pCube1" "miExportGeoShader" " 0"
		2 "|SK_shoulder_pads:pCube1" "miProxyRenderable" " 1"
		2 "|SK_shoulder_pads:pCube1|SK_shoulder_pads:pCubeShape1" "miOverrideCaustics" 
		" 0"
		2 "|SK_shoulder_pads:pCube1|SK_shoulder_pads:pCubeShape1" "miCausticAccuracy" 
		" 64"
		2 "|SK_shoulder_pads:pCube1|SK_shoulder_pads:pCubeShape1" "miCausticRadius" 
		" 0"
		2 "|SK_shoulder_pads:pCube1|SK_shoulder_pads:pCubeShape1" "miOverrideGlobalIllumination" 
		" 0"
		2 "|SK_shoulder_pads:pCube1|SK_shoulder_pads:pCubeShape1" "miGlobillumAccuracy" 
		" 64"
		2 "|SK_shoulder_pads:pCube1|SK_shoulder_pads:pCubeShape1" "miGlobillumRadius" 
		" 0"
		2 "|SK_shoulder_pads:pCube1|SK_shoulder_pads:pCubeShape1" "miOverrideFinalGather" 
		" 0"
		2 "|SK_shoulder_pads:pCube1|SK_shoulder_pads:pCubeShape1" "miFinalGatherRays" 
		" 1000"
		2 "|SK_shoulder_pads:pCube1|SK_shoulder_pads:pCubeShape1" "miFinalGatherMinRadius" 
		" 0"
		2 "|SK_shoulder_pads:pCube1|SK_shoulder_pads:pCubeShape1" "miFinalGatherMaxRadius" 
		" 0"
		2 "|SK_shoulder_pads:pCube1|SK_shoulder_pads:pCubeShape1" "miFinalGatherFilter" 
		" 1"
		2 "|SK_shoulder_pads:pCube1|SK_shoulder_pads:pCubeShape1" "miFinalGatherView" 
		" 0"
		2 "|SK_shoulder_pads:pCube1|SK_shoulder_pads:pCubeShape1" "miOverrideSamples" 
		" 0"
		2 "|SK_shoulder_pads:pCube1|SK_shoulder_pads:pCubeShape1" "miMinSamples" 
		" 0"
		2 "|SK_shoulder_pads:pCube1|SK_shoulder_pads:pCubeShape1" "miMaxSamples" 
		" 2"
		2 "|SK_shoulder_pads:pCube1|SK_shoulder_pads:pCubeShape1" "miFinalGatherCast" 
		" 1"
		2 "|SK_shoulder_pads:pCube1|SK_shoulder_pads:pCubeShape1" "miFinalGatherReceive" 
		" 1"
		2 "|SK_shoulder_pads:pCube1|SK_shoulder_pads:pCubeShape1" "miTransparencyCast" 
		" 1"
		2 "|SK_shoulder_pads:pCube1|SK_shoulder_pads:pCubeShape1" "miTransparencyReceive" 
		" 1"
		2 "|SK_shoulder_pads:pCube1|SK_shoulder_pads:pCubeShape1" "miReflectionReceive" 
		" 1"
		2 "|SK_shoulder_pads:pCube1|SK_shoulder_pads:pCubeShape1" "miRefractionReceive" 
		" 1"
		2 "|SK_shoulder_pads:pCube1|SK_shoulder_pads:pCubeShape1" "miUpdateProxyBoundingBoxMode" 
		" 0"
		2 "|SK_shoulder_pads:pCube1|SK_shoulder_pads:pCubeShape1" "miProxyBoundingBoxMin" 
		" -type \"double3\" 0 0 0"
		2 "|SK_shoulder_pads:pCube1|SK_shoulder_pads:pCubeShape1" "miProxyBoundingBoxMax" 
		" -type \"double3\" 0 0 0"
		2 "|SK_shoulder_pads:pCube1|SK_shoulder_pads:pCubeShape1" "miShadingSamplesOverride" 
		" 0"
		2 "|SK_shoulder_pads:pCube1|SK_shoulder_pads:pCubeShape1" "miShadingSamples" 
		" 0"
		2 "|SK_shoulder_pads:pCube1|SK_shoulder_pads:pCubeShape1" "miMaxDisplaceOverride" 
		" 0"
		2 "|SK_shoulder_pads:pCube1|SK_shoulder_pads:pCubeShape1" "miMaxDisplace" 
		" 0"
		2 "SK_shoulder_pads:defaultRenderLayer" "globalIllum" " 0";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "ei_helmetRN";
	setAttr ".ed" -type "dataReferenceEdits" 
		"ei_helmetRN"
		"ei_helmetRN" 1
		2 "|ei_helmet:helmet_01" "translate" " -type \"double3\" 0.00777189 16.953161 0.921036";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "Hero_BodyRN";
	setAttr ".ed" -type "dataReferenceEdits" 
		"Hero_BodyRN"
		"Hero_BodyRN" 0
		"Hero_BodyRN" 81
		2 "|Hero_Body:ReferenceHero" "miDeriveFromMaya" " 1"
		2 "|Hero_Body:ReferenceHero" "miHide" " 0"
		2 "|Hero_Body:ReferenceHero" "miVisible" " 2"
		2 "|Hero_Body:ReferenceHero" "miTrace" " 2"
		2 "|Hero_Body:ReferenceHero" "miShadow" " 2"
		2 "|Hero_Body:ReferenceHero" "miCaustic" " 5"
		2 "|Hero_Body:ReferenceHero" "miGlobillum" " 5"
		2 "|Hero_Body:ReferenceHero" "miExportGeoShader" " 0"
		2 "|Hero_Body:ReferenceHero" "miProxyRenderable" " 1"
		2 "|Hero_Body:ReferenceHero|Hero_Body:Template" "miDeriveFromMaya" " 1"
		2 "|Hero_Body:ReferenceHero|Hero_Body:Template" "miHide" " 0"
		2 "|Hero_Body:ReferenceHero|Hero_Body:Template" "miVisible" " 2"
		2 "|Hero_Body:ReferenceHero|Hero_Body:Template" "miTrace" " 2"
		2 "|Hero_Body:ReferenceHero|Hero_Body:Template" "miShadow" " 2"
		2 "|Hero_Body:ReferenceHero|Hero_Body:Template" "miCaustic" " 5"
		2 "|Hero_Body:ReferenceHero|Hero_Body:Template" "miGlobillum" " 5"
		2 "|Hero_Body:ReferenceHero|Hero_Body:Template" "miExportGeoShader" " 0"
		2 "|Hero_Body:ReferenceHero|Hero_Body:Template" "miProxyRenderable" " 1"
		2 "|Hero_Body:ReferenceHero|Hero_Body:Template|Hero_Body:TemplateShape" "miOverrideCaustics" 
		" 0"
		2 "|Hero_Body:ReferenceHero|Hero_Body:Template|Hero_Body:TemplateShape" "miCausticAccuracy" 
		" 64"
		2 "|Hero_Body:ReferenceHero|Hero_Body:Template|Hero_Body:TemplateShape" "miCausticRadius" 
		" 0"
		2 "|Hero_Body:ReferenceHero|Hero_Body:Template|Hero_Body:TemplateShape" "miOverrideGlobalIllumination" 
		" 0"
		2 "|Hero_Body:ReferenceHero|Hero_Body:Template|Hero_Body:TemplateShape" "miGlobillumAccuracy" 
		" 64"
		2 "|Hero_Body:ReferenceHero|Hero_Body:Template|Hero_Body:TemplateShape" "miGlobillumRadius" 
		" 0"
		2 "|Hero_Body:ReferenceHero|Hero_Body:Template|Hero_Body:TemplateShape" "miOverrideFinalGather" 
		" 0"
		2 "|Hero_Body:ReferenceHero|Hero_Body:Template|Hero_Body:TemplateShape" "miFinalGatherRays" 
		" 1000"
		2 "|Hero_Body:ReferenceHero|Hero_Body:Template|Hero_Body:TemplateShape" "miFinalGatherMinRadius" 
		" 0"
		2 "|Hero_Body:ReferenceHero|Hero_Body:Template|Hero_Body:TemplateShape" "miFinalGatherMaxRadius" 
		" 0"
		2 "|Hero_Body:ReferenceHero|Hero_Body:Template|Hero_Body:TemplateShape" "miFinalGatherFilter" 
		" 1"
		2 "|Hero_Body:ReferenceHero|Hero_Body:Template|Hero_Body:TemplateShape" "miFinalGatherView" 
		" 0"
		2 "|Hero_Body:ReferenceHero|Hero_Body:Template|Hero_Body:TemplateShape" "miOverrideSamples" 
		" 0"
		2 "|Hero_Body:ReferenceHero|Hero_Body:Template|Hero_Body:TemplateShape" "miMinSamples" 
		" 0"
		2 "|Hero_Body:ReferenceHero|Hero_Body:Template|Hero_Body:TemplateShape" "miMaxSamples" 
		" 2"
		2 "|Hero_Body:ReferenceHero|Hero_Body:Template|Hero_Body:TemplateShape" "miFinalGatherCast" 
		" 1"
		2 "|Hero_Body:ReferenceHero|Hero_Body:Template|Hero_Body:TemplateShape" "miFinalGatherReceive" 
		" 1"
		2 "|Hero_Body:ReferenceHero|Hero_Body:Template|Hero_Body:TemplateShape" "miTransparencyCast" 
		" 1"
		2 "|Hero_Body:ReferenceHero|Hero_Body:Template|Hero_Body:TemplateShape" "miTransparencyReceive" 
		" 1"
		2 "|Hero_Body:ReferenceHero|Hero_Body:Template|Hero_Body:TemplateShape" "miReflectionReceive" 
		" 1"
		2 "|Hero_Body:ReferenceHero|Hero_Body:Template|Hero_Body:TemplateShape" "miRefractionReceive" 
		" 1"
		2 "|Hero_Body:ReferenceHero|Hero_Body:Template|Hero_Body:TemplateShape" "miUpdateProxyBoundingBoxMode" 
		" 0"
		2 "|Hero_Body:ReferenceHero|Hero_Body:Template|Hero_Body:TemplateShape" "miProxyBoundingBoxMin" 
		" -type \"double3\" 0 0 0"
		2 "|Hero_Body:ReferenceHero|Hero_Body:Template|Hero_Body:TemplateShape" "miProxyBoundingBoxMax" 
		" -type \"double3\" 0 0 0"
		2 "|Hero_Body:ReferenceHero|Hero_Body:Template|Hero_Body:TemplateShape" "miShadingSamplesOverride" 
		" 0"
		2 "|Hero_Body:ReferenceHero|Hero_Body:Template|Hero_Body:TemplateShape" "miShadingSamples" 
		" 0"
		2 "|Hero_Body:ReferenceHero|Hero_Body:Template|Hero_Body:TemplateShape" "miMaxDisplaceOverride" 
		" 0"
		2 "|Hero_Body:ReferenceHero|Hero_Body:Template|Hero_Body:TemplateShape" "miMaxDisplace" 
		" 0"
		2 "Hero_Body:defaultRenderLayer" "globalIllum" " 0"
		2 "Hero_Body:stickFigure_Hero:defaultMat" "miExportMrMaterial" " 0"
		2 "Hero_Body:stickFigure_Hero:defaultMat" "miOpaque" " 0"
		2 "Hero_Body:stickFigure_Hero:defaultMat" "miCutAwayOpacity" " 0"
		2 "Hero_Body:stickFigure_Hero:defaultMat" "miExportShadingEngine" " 1"
		2 "Hero_Body:stickFigure_Hero:defaultMat" "miExportVolumeSampler" " 0"
		2 "Hero_Body:stickFigure_Hero:defaultMat" "miContourEnable" " 0"
		2 "Hero_Body:stickFigure_Hero:defaultMat" "miContourColor" " -type \"float3\" 1 1 1"
		
		2 "Hero_Body:stickFigure_Hero:defaultMat" "miContourAlpha" " 1"
		2 "Hero_Body:stickFigure_Hero:defaultMat" "miContourWidth" " 1.25"
		2 "Hero_Body:stickFigure_Hero:defaultMat" "miContourRelativeWidth" " 0"
		2 "Hero_Body:stickFigure_Hero:defaultMat1" "miRefractionBlur" " 0"
		2 "Hero_Body:stickFigure_Hero:defaultMat1" "miRefractionRays" " 1"
		2 "Hero_Body:stickFigure_Hero:defaultMat1" "miIrradiance" " -type \"float3\" 0 0 0"
		
		2 "Hero_Body:stickFigure_Hero:defaultMat1" "miIrradianceColor" " -type \"float3\" 1 1 1"
		
		2 "Hero_Body:stickFigure_Hero:defaultMat1" "miDeriveFromMaya" " 1"
		2 "Hero_Body:stickFigure_Hero:defaultMat1" "miRefractiveIndex" " 1"
		2 "Hero_Body:stickFigure_Hero:defaultMat1" "miRefractions" " 1"
		2 "Hero_Body:stickFigure_Hero:defaultMat1" "miAbsorbs" " 1"
		2 "Hero_Body:stickFigure_Hero:defaultMat1" "miDiffuse" " 0.8"
		2 "Hero_Body:stickFigure_Hero:defaultMat1" "miColor" " -type \"float3\" 0.5 0.5 0.5"
		
		2 "Hero_Body:stickFigure_Hero:defaultMat1" "miTransparency" " -type \"float3\" 0 0 0"
		
		2 "Hero_Body:stickFigure_Hero:defaultMat1" "miTranslucence" " 0"
		2 "Hero_Body:stickFigure_Hero:defaultMat1" "miTranslucenceFocus" " 0.5"
		2 "Hero_Body:stickFigure_Hero:defaultMat1" "miNormalCamera" " -type \"float3\" 0 0 0"
		
		2 "Hero_Body:stickFigure_Hero:defaultMat1" "miFrameBufferWriteOperation" 
		" 1"
		2 "Hero_Body:stickFigure_Hero:defaultMat1" "miFrameBufferWriteFlags" " 0"
		
		2 "Hero_Body:stickFigure_Hero:defaultMat1" "miFrameBufferWriteFactor" " 1"
		
		2 "Hero_Body:stickFigure_Hero:defaultMat1" "miRefractionBlurLimit" " 1"
		2 "Hero_Body:stickFigure_Hero:defaultMat1" "miScatterRadius" " 0"
		2 "Hero_Body:stickFigure_Hero:defaultMat1" "miScatterColor" " -type \"float3\" 0.5 0.5 0.5"
		
		2 "Hero_Body:stickFigure_Hero:defaultMat1" "miScatterAccuracy" " 97"
		2 "Hero_Body:stickFigure_Hero:defaultMat1" "miScatterFalloff" " 0"
		2 "Hero_Body:stickFigure_Hero:defaultMat1" "miScatterLimit" " 1"
		2 "Hero_Body:stickFigure_Hero:defaultMat1" "miScatterCache" " 0";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "sw_bootsRN";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sw_bootsRN"
		"sw_boots:Hero_BodyRN" 2
		2 "|sw_boots:Hero_Body:ReferenceHero|sw_boots:Hero_Body:Template|sw_boots:Hero_Body:TemplateShape" 
		"instObjGroups.objectGroups" " -s 2"
		2 "|sw_boots:Hero_Body:ReferenceHero|sw_boots:Hero_Body:Template|sw_boots:Hero_Body:TemplateShape" 
		"instObjGroups.objectGroups[0].objectGroupId" " -av"
		"sw_bootsRN" 0
		"sw_bootsRN" 121
		2 "|sw_boots:Hero_BodyRNfosterParent1" "miDeriveFromMaya" " 1"
		2 "|sw_boots:Hero_BodyRNfosterParent1" "miHide" " 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1" "miVisible" " 2"
		2 "|sw_boots:Hero_BodyRNfosterParent1" "miTrace" " 2"
		2 "|sw_boots:Hero_BodyRNfosterParent1" "miShadow" " 2"
		2 "|sw_boots:Hero_BodyRNfosterParent1" "miCaustic" " 5"
		2 "|sw_boots:Hero_BodyRNfosterParent1" "miGlobillum" " 5"
		2 "|sw_boots:Hero_BodyRNfosterParent1" "miExportGeoShader" " 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1" "miProxyRenderable" " 1"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:transform1" "miDeriveFromMaya" 
		" 1"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:transform1" "miHide" " 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:transform1" "miVisible" " 2"
		
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:transform1" "miTrace" " 2"
		
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:transform1" "miShadow" " 2"
		
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:transform1" "miCaustic" " 5"
		
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:transform1" "miGlobillum" 
		" 5"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:transform1" "miExportGeoShader" 
		" 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:transform1" "miProxyRenderable" 
		" 1"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface2" "miDeriveFromMaya" 
		" 1"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface2" "miHide" " 0"
		
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface2" "miVisible" 
		" 2"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface2" "miTrace" " 2"
		
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface2" "miShadow" " 2"
		
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface2" "miCaustic" 
		" 5"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface2" "miGlobillum" 
		" 5"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface2" "miExportGeoShader" 
		" 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface2" "miProxyRenderable" 
		" 1"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface2|sw_boots:polySurfaceShape2" 
		"miOverrideCaustics" " 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface2|sw_boots:polySurfaceShape2" 
		"miCausticAccuracy" " 64"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface2|sw_boots:polySurfaceShape2" 
		"miCausticRadius" " 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface2|sw_boots:polySurfaceShape2" 
		"miOverrideGlobalIllumination" " 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface2|sw_boots:polySurfaceShape2" 
		"miGlobillumAccuracy" " 64"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface2|sw_boots:polySurfaceShape2" 
		"miGlobillumRadius" " 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface2|sw_boots:polySurfaceShape2" 
		"miOverrideFinalGather" " 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface2|sw_boots:polySurfaceShape2" 
		"miFinalGatherRays" " 1000"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface2|sw_boots:polySurfaceShape2" 
		"miFinalGatherMinRadius" " 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface2|sw_boots:polySurfaceShape2" 
		"miFinalGatherMaxRadius" " 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface2|sw_boots:polySurfaceShape2" 
		"miFinalGatherFilter" " 1"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface2|sw_boots:polySurfaceShape2" 
		"miFinalGatherView" " 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface2|sw_boots:polySurfaceShape2" 
		"miOverrideSamples" " 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface2|sw_boots:polySurfaceShape2" 
		"miMinSamples" " 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface2|sw_boots:polySurfaceShape2" 
		"miMaxSamples" " 2"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface2|sw_boots:polySurfaceShape2" 
		"miFinalGatherCast" " 1"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface2|sw_boots:polySurfaceShape2" 
		"miFinalGatherReceive" " 1"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface2|sw_boots:polySurfaceShape2" 
		"miTransparencyCast" " 1"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface2|sw_boots:polySurfaceShape2" 
		"miTransparencyReceive" " 1"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface2|sw_boots:polySurfaceShape2" 
		"miReflectionReceive" " 1"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface2|sw_boots:polySurfaceShape2" 
		"miRefractionReceive" " 1"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface2|sw_boots:polySurfaceShape2" 
		"miUpdateProxyBoundingBoxMode" " 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface2|sw_boots:polySurfaceShape2" 
		"miProxyBoundingBoxMin" " -type \"double3\" 0 0 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface2|sw_boots:polySurfaceShape2" 
		"miProxyBoundingBoxMax" " -type \"double3\" 0 0 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface2|sw_boots:polySurfaceShape2" 
		"miShadingSamplesOverride" " 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface2|sw_boots:polySurfaceShape2" 
		"miShadingSamples" " 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface2|sw_boots:polySurfaceShape2" 
		"miMaxDisplaceOverride" " 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface2|sw_boots:polySurfaceShape2" 
		"miMaxDisplace" " 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface1" "miDeriveFromMaya" 
		" 1"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface1" "miHide" " 0"
		
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface1" "miVisible" 
		" 2"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface1" "miTrace" " 2"
		
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface1" "miShadow" " 2"
		
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface1" "miCaustic" 
		" 5"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface1" "miGlobillum" 
		" 5"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface1" "miExportGeoShader" 
		" 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface1" "miProxyRenderable" 
		" 1"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface1|sw_boots:polySurfaceShape1" 
		"miOverrideCaustics" " 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface1|sw_boots:polySurfaceShape1" 
		"miCausticAccuracy" " 64"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface1|sw_boots:polySurfaceShape1" 
		"miCausticRadius" " 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface1|sw_boots:polySurfaceShape1" 
		"miOverrideGlobalIllumination" " 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface1|sw_boots:polySurfaceShape1" 
		"miGlobillumAccuracy" " 64"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface1|sw_boots:polySurfaceShape1" 
		"miGlobillumRadius" " 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface1|sw_boots:polySurfaceShape1" 
		"miOverrideFinalGather" " 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface1|sw_boots:polySurfaceShape1" 
		"miFinalGatherRays" " 1000"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface1|sw_boots:polySurfaceShape1" 
		"miFinalGatherMinRadius" " 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface1|sw_boots:polySurfaceShape1" 
		"miFinalGatherMaxRadius" " 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface1|sw_boots:polySurfaceShape1" 
		"miFinalGatherFilter" " 1"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface1|sw_boots:polySurfaceShape1" 
		"miFinalGatherView" " 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface1|sw_boots:polySurfaceShape1" 
		"miOverrideSamples" " 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface1|sw_boots:polySurfaceShape1" 
		"miMinSamples" " 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface1|sw_boots:polySurfaceShape1" 
		"miMaxSamples" " 2"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface1|sw_boots:polySurfaceShape1" 
		"miFinalGatherCast" " 1"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface1|sw_boots:polySurfaceShape1" 
		"miFinalGatherReceive" " 1"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface1|sw_boots:polySurfaceShape1" 
		"miTransparencyCast" " 1"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface1|sw_boots:polySurfaceShape1" 
		"miTransparencyReceive" " 1"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface1|sw_boots:polySurfaceShape1" 
		"miReflectionReceive" " 1"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface1|sw_boots:polySurfaceShape1" 
		"miRefractionReceive" " 1"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface1|sw_boots:polySurfaceShape1" 
		"miUpdateProxyBoundingBoxMode" " 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface1|sw_boots:polySurfaceShape1" 
		"miProxyBoundingBoxMin" " -type \"double3\" 0 0 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface1|sw_boots:polySurfaceShape1" 
		"miProxyBoundingBoxMax" " -type \"double3\" 0 0 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface1|sw_boots:polySurfaceShape1" 
		"miShadingSamplesOverride" " 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface1|sw_boots:polySurfaceShape1" 
		"miShadingSamples" " 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface1|sw_boots:polySurfaceShape1" 
		"miMaxDisplaceOverride" " 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:polySurface1|sw_boots:polySurfaceShape1" 
		"miMaxDisplace" " 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:Hero_Body:polySurfaceShape1" 
		"miOverrideCaustics" " 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:Hero_Body:polySurfaceShape1" 
		"miCausticAccuracy" " 64"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:Hero_Body:polySurfaceShape1" 
		"miCausticRadius" " 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:Hero_Body:polySurfaceShape1" 
		"miOverrideGlobalIllumination" " 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:Hero_Body:polySurfaceShape1" 
		"miGlobillumAccuracy" " 64"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:Hero_Body:polySurfaceShape1" 
		"miGlobillumRadius" " 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:Hero_Body:polySurfaceShape1" 
		"miOverrideFinalGather" " 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:Hero_Body:polySurfaceShape1" 
		"miFinalGatherRays" " 1000"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:Hero_Body:polySurfaceShape1" 
		"miFinalGatherMinRadius" " 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:Hero_Body:polySurfaceShape1" 
		"miFinalGatherMaxRadius" " 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:Hero_Body:polySurfaceShape1" 
		"miFinalGatherFilter" " 1"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:Hero_Body:polySurfaceShape1" 
		"miFinalGatherView" " 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:Hero_Body:polySurfaceShape1" 
		"miOverrideSamples" " 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:Hero_Body:polySurfaceShape1" 
		"miMinSamples" " 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:Hero_Body:polySurfaceShape1" 
		"miMaxSamples" " 2"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:Hero_Body:polySurfaceShape1" 
		"miFinalGatherCast" " 1"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:Hero_Body:polySurfaceShape1" 
		"miFinalGatherReceive" " 1"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:Hero_Body:polySurfaceShape1" 
		"miTransparencyCast" " 1"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:Hero_Body:polySurfaceShape1" 
		"miTransparencyReceive" " 1"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:Hero_Body:polySurfaceShape1" 
		"miReflectionReceive" " 1"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:Hero_Body:polySurfaceShape1" 
		"miRefractionReceive" " 1"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:Hero_Body:polySurfaceShape1" 
		"miUpdateProxyBoundingBoxMode" " 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:Hero_Body:polySurfaceShape1" 
		"miProxyBoundingBoxMin" " -type \"double3\" 0 0 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:Hero_Body:polySurfaceShape1" 
		"miProxyBoundingBoxMax" " -type \"double3\" 0 0 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:Hero_Body:polySurfaceShape1" 
		"miShadingSamplesOverride" " 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:Hero_Body:polySurfaceShape1" 
		"miShadingSamples" " 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:Hero_Body:polySurfaceShape1" 
		"miMaxDisplaceOverride" " 0"
		2 "|sw_boots:Hero_BodyRNfosterParent1|sw_boots:Hero_Body:polySurfaceShape1" 
		"miMaxDisplace" " 0"
		2 "sw_boots:defaultRenderLayer" "globalIllum" " 0";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                $editorName;\nstereoCameraView -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n"
		+ "                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                $editorName;\nstereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n"
		+ "                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n"
		+ "            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n"
		+ "            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n"
		+ "                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n"
		+ "            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n"
		+ "                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n"
		+ "                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n"
		+ "            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n"
		+ "                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n"
		+ "                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n"
		+ "                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -shadows 0\n            $editorName;\n"
		+ "modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n"
		+ "            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 1\n                -preSelectionHighlight 0\n                -constrainDrag 0\n"
		+ "                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n"
		+ "                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n"
		+ "                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 1\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n"
		+ "                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n"
		+ "                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n"
		+ "                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n"
		+ "                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n"
		+ "                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -island 0\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode reference -n "ei_helmetRN1";
	setAttr ".ed" -type "dataReferenceEdits" 
		"ei_helmetRN1"
		"ei_helmetRN1" 0;
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 4 ".st";
select -ne :initialShadingGroup;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
	setAttr -s 7 ".r";
select -ne :renderGlobalsList1;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "mentalRay";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of kw_ReferenceHero.ma
