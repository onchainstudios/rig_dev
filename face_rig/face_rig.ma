//Maya ASCII 2022 scene
//Name: face_rig.ma
//Last modified: Fri, Jan 27, 2023 04:00:28 PM
//Codeset: 1252
requires maya "2022";
requires -nodeType "weightDriver" "weightDriver" "3.6.1";
requires -nodeType "renderSetup" "renderSetup.py" "1.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202102181415-29bfc1879c";
fileInfo "osv" "Windows 10 Pro v2009 (Build: 22621)";
fileInfo "UUID" "3544ECA0-4EA3-7417-FBD1-2580384D4F16";
fileInfo "vrayBuild" "5.20.02 2341490";
createNode transform -s -n "persp";
	rename -uid "745D4883-43FF-6464-D201-40B5BAE724E1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 139.24193236125069 66.148791948859724 93.333862731436341 ;
	setAttr ".r" -type "double3" 364.46164624520031 -2463.7999999983299 0 ;
	setAttr ".rp" -type "double3" 0 1.7763568394002505e-15 3.5527136788005009e-15 ;
	setAttr ".rpt" -type "double3" -3.0678230245210937e-15 -5.3626563013428504e-17 -1.709379637054766e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "30ED8498-4A48-9C82-73BD-BB8C7D15C519";
	setAttr -k off ".v" no;
	setAttr ".fl" 80;
	setAttr ".coi" 167.98265753362813;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -7.4426999688148499 82.175586700439453 12.171980857849121 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "C14A8F9A-4801-EB77-C568-BEAA171E4EBF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 47.196981593479578 1002.4554127437776 0.8818583367041164 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "5DB8AD9F-4EBB-813B-E637-AAAA1613F199";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 939.48985804377583;
	setAttr ".ow" 12.37772186466534;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" 47.196981593479578 62.965554700001803 0.88185833670390812 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "EFF3D2E4-48E0-C426-EF5B-84A1941DD6F0";
	setAttr ".t" -type "double3" 12.853854391675908 75.188933290606286 1001.0911054966759 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "16851EEB-4BEE-9AAA-7AF0-6CBCAF462284";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 980.83557180145499;
	setAttr ".ow" 138.82203660373503;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 2.4101009368896484 71.815288543701172 20.255533695220947 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "E05E1367-496A-296A-B81F-E0B85D918AE9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1001.6528362400493 68.755837940916606 10.037207016371887 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "BA94FAF7-4BCD-A0AA-3781-4F8BCB7141A4";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 989.3011936314067;
	setAttr ".ow" 35.086384252361462;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 12.351642608642578 -0.016389265656471252 8.0504752993583679 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "eye_rig";
	rename -uid "3B664FDF-764D-F4E8-7DAB-318188D2D66D";
	setAttr ".t" -type "double3" -6.3108872417680944e-30 -1.4210854715202004e-14 -4.4408920985006262e-16 ;
createNode transform -n "eye_noxform" -p "eye_rig";
	rename -uid "69EE6C33-8E44-7FAA-EC3D-2B8700224766";
	setAttr ".it" no;
createNode transform -n "bindEyeJoint_L" -p "eye_noxform";
	rename -uid "E687455B-764E-DD21-9FC8-DF90BA7BAB88";
	setAttr ".v" no;
createNode locator -n "bindEyeJoint_LShape" -p "bindEyeJoint_L";
	rename -uid "2DC5168D-5A40-4E8B-C2AB-D7A1381F8519";
	setAttr -k off ".v";
createNode parentConstraint -n "locator1_parentConstraint1" -p "bindEyeJoint_L";
	rename -uid "33F57E46-7C48-0241-CEF0-2F8830DE7A83";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "left_place3dW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 11.142474630588985 90.952430713345507 20 ;
	setAttr -k on ".w0";
createNode transform -n "bindEyeJoint_R" -p "eye_noxform";
	rename -uid "B4FCEC75-3641-C849-23DE-E7A4E9E96C49";
	setAttr ".v" no;
createNode locator -n "bindEyeJoint_RShape" -p "bindEyeJoint_R";
	rename -uid "D25AC8EE-E047-5D1B-FE61-47AC9D6CD9EC";
	setAttr -k off ".v";
createNode parentConstraint -n "locator2_parentConstraint1" -p "bindEyeJoint_R";
	rename -uid "899DDDBC-534F-2F05-DAEF-0390D8155FBC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "right_place3dW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -11.142475 90.952430713345507 20 ;
	setAttr -k on ".w0";
createNode transform -n "left_eye_aim_grp" -p "eye_rig";
	rename -uid "5DC46E82-854D-A39D-C955-CEB9A346CC26";
	setAttr ".t" -type "double3" 8.5000000000000018 81.962981818860655 6.8787591925950871 ;
	setAttr ".r" -type "double3" -3.1805546814635302e-15 -4.1347210859025721e-14 3.4986101496098694e-14 ;
createNode joint -n "left_eye_aim1_jnt" -p "left_eye_aim_grp";
	rename -uid "A8A71C88-1D40-B0B3-5D4C-878D075DA9AC";
	setAttr ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "left_eye_aim2_jnt" -p "left_eye_aim1_jnt";
	rename -uid "9DC39172-E043-2C7D-5FDB-CDAF3BD5AF2D";
	setAttr ".t" -type "double3" 0 0 10 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode aimConstraint -n "left_eye_aim1_jnt_aimConstraint1" -p "left_eye_aim1_jnt";
	rename -uid "CA9E4E54-654A-0556-4704-D7B01D21E086";
	addAttr -dcb 0 -ci true -sn "w0" -ln "LeftEyeLookAtW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 0 1 ;
	setAttr ".wut" 2;
	setAttr -k on ".w0";
createNode transform -n "right_eye_aim_grp" -p "eye_rig";
	rename -uid "A6A605CE-2C48-DC6E-B11F-E796295BEB7E";
	setAttr ".t" -type "double3" -8.4999999999999982 81.962981818860655 6.8787591925950871 ;
	setAttr ".r" -type "double3" -3.1805546814635302e-15 -4.1347210859025721e-14 3.4986101496098694e-14 ;
createNode joint -n "right_eye_aim1_jnt" -p "right_eye_aim_grp";
	rename -uid "514E9281-CE43-3520-0D59-548573AE858B";
	setAttr ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "right_eye_aim2_jnt" -p "right_eye_aim1_jnt";
	rename -uid "E6B9A0BF-004E-0EE4-CFA2-9CA183E346BC";
	setAttr ".t" -type "double3" 0 0 10 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode aimConstraint -n "right_eye_aim1_jnt_aimConstraint1" -p "right_eye_aim1_jnt";
	rename -uid "8CB47AA0-5A4C-6A8D-34BF-50B79B48EC30";
	addAttr -dcb 0 -ci true -sn "w0" -ln "RightEyeLookAtW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 0 1 ;
	setAttr ".wut" 2;
	setAttr -k on ".w0";
createNode transform -n "EyeLookAt_grp" -p "eye_rig";
	rename -uid "17FAF310-2D4D-12E3-AF52-0D886B78C226";
createNode transform -n "EyeLookAt" -p "EyeLookAt_grp";
	rename -uid "ED68B7AF-3E46-A133-F3D3-D9BF0CBEB5BF";
	addAttr -ci true -sn "space" -ln "space" -min 0 -max 1 -en "head:world" -at "enum";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".space";
createNode nurbsCurve -n "EyeLookAtShape" -p "EyeLookAt";
	rename -uid "786A65DD-B04B-BCD2-EDA1-A1A4CDF2318F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".tw" yes;
	setAttr -s 19 ".cp[0:18]" -type "double3" 19.494281187453332 9.7070316603604745 
		0 4.2416060436458909e-15 9.3535304601817142 0 -19.494281187453339 9.7070316603604745 
		0 -23.909524410037918 7.4294403877266841 0 -25.937114942491256 4.020784164106332 
		0 -26.649110053790217 6.5223886552240542e-16 0 -25.937114942491252 -4.020784164106332 
		0 -23.909524410037918 -7.4294403877266859 0 -19.494281187453335 -9.707031660360478 
		0 2.7310459750519781e-15 -9.3535304601817142 0 19.494281187453339 -9.7070316603604745 
		0 23.909524410037911 -7.4294403877266806 0 25.937114942491267 -4.0207841641063293 
		0 26.649110053790189 2.9419113000202831e-15 0 25.937114942491256 4.0207841641063347 
		0 23.9095244100379 7.4294403877266841 0 0 0 0 0 0 0 0 0 0;
createNode transform -n "LeftEyeLookAt_grp" -p "EyeLookAt";
	rename -uid "EA321B2D-3545-AD56-D76F-969B134921F7";
	setAttr ".t" -type "double3" 8.5 0 0 ;
createNode transform -n "LeftEyeLookAt" -p "LeftEyeLookAt_grp";
	rename -uid "B41E8305-A34C-D3B7-6E68-9CAD9371F5B8";
createNode nurbsCurve -n "LeftEyeLookAtShape" -p "|eye_rig|EyeLookAt_grp|EyeLookAt|LeftEyeLookAt_grp|LeftEyeLookAt";
	rename -uid "4D6C2F83-E140-666D-5362-91B4F96BB140";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.53836483918223 5.5383648391822211 -1.5670881492150622e-16
		-8.9358668664345206e-16 7.8324306689417877 -3.1341762984301245e-16
		-5.538364839182222 5.5383648391822229 0
		-7.8324306689417877 2.2696424559155211e-15 -2.0877808138509416e-31
		-5.5383648391822247 -5.5383648391822229 0
		-2.3600642191960347e-15 -7.8324306689417877 3.1341762984301245e-16
		5.5383648391822211 -5.5383648391822229 0
		7.8324306689417877 -4.2068137912810947e-15 -1.3918538759006282e-31
		5.53836483918223 5.5383648391822211 -1.5670881492150622e-16
		-8.9358668664345206e-16 7.8324306689417877 -3.1341762984301245e-16
		-5.538364839182222 5.5383648391822229 0
		;
createNode transform -n "LeftEyeLookAt" -p "|eye_rig|EyeLookAt_grp|EyeLookAt|LeftEyeLookAt_grp|LeftEyeLookAt";
	rename -uid "603E3952-D647-7679-00BF-8CAF2013F530";
createNode transform -n "RightEyeLookAt_grp" -p "EyeLookAt";
	rename -uid "C52970BC-A842-80B0-AACF-12B73D27FC00";
	setAttr ".t" -type "double3" -8.5 0 0 ;
createNode transform -n "RightEyeLookAt" -p "RightEyeLookAt_grp";
	rename -uid "59F0F501-A44B-C79A-22E6-40BAD7AB254D";
createNode nurbsCurve -n "RightEyeLookAtShape" -p "|eye_rig|EyeLookAt_grp|EyeLookAt|RightEyeLookAt_grp|RightEyeLookAt";
	rename -uid "76ADA07A-344F-5FBD-BFF9-17AD3C4665FB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.53836483918223 5.5383648391822211 -1.5670881492150622e-16
		-8.9358668664345206e-16 7.8324306689417877 -3.1341762984301245e-16
		-5.538364839182222 5.5383648391822229 0
		-7.8324306689417877 2.2696424559155211e-15 -2.0877808138509416e-31
		-5.5383648391822247 -5.5383648391822229 0
		-2.3600642191960347e-15 -7.8324306689417877 3.1341762984301245e-16
		5.5383648391822211 -5.5383648391822229 0
		7.8324306689417877 -4.2068137912810947e-15 -1.3918538759006282e-31
		5.53836483918223 5.5383648391822211 -1.5670881492150622e-16
		-8.9358668664345206e-16 7.8324306689417877 -3.1341762984301245e-16
		-5.538364839182222 5.5383648391822229 0
		;
createNode transform -n "RightEyeLookAt" -p "|eye_rig|EyeLookAt_grp|EyeLookAt|RightEyeLookAt_grp|RightEyeLookAt";
	rename -uid "D31EBF39-D149-EBC9-37E5-18A707DBE4B0";
createNode parentConstraint -n "EyeLookAt_grp_parentConstraint3" -p "EyeLookAt_grp";
	rename -uid "43773023-404C-EEEC-49B2-FA813389B6E3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "eye_headW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "eye_worldW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" 0 -1.4210854715202004e-14 0 ;
	setAttr ".tg[1].tot" -type "double3" 0 -1.4210854715202004e-14 0 ;
	setAttr ".rst" -type "double3" 0 81.963 67.477450118360593 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "projectors" -p "eye_rig";
	rename -uid "08792A8C-D540-8026-558A-B78B547D5198";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 -4.4408920985006262e-16 ;
	setAttr ".r" -type "double3" 3.1805546814635049e-15 -4.7708320221952755e-14 2.8624992133171654e-14 ;
createNode place3dTexture -n "right_place3d" -p "projectors";
	rename -uid "C989780C-1344-F93E-29CC-9D91B2341FBF";
	setAttr ".t" -type "double3" -8.4999999999999982 81.962981818860655 20 ;
	setAttr ".s" -type "double3" 4 4 4 ;
createNode pointConstraint -n "right_place3d_pointConstraint1" -p "right_place3d";
	rename -uid "053542C8-A348-A7EF-9505-2AA435C59081";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "right_eye_aim2_jntW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -11.142475 90.952430713345507 16.878759192595087 ;
	setAttr -k on ".w0";
createNode place3dTexture -n "left_place3d" -p "projectors";
	rename -uid "CC83EBCE-F24E-80FA-AD22-919B66462DF7";
	setAttr ".t" -type "double3" 8.5000000000000018 81.962981818860655 20 ;
	setAttr ".s" -type "double3" 4 4 4 ;
createNode pointConstraint -n "left_place3d_pointConstraint1" -p "left_place3d";
	rename -uid "33D90FFE-CB43-6DD4-6AEE-339590302229";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "left_eye_aim2_jntW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 11.142474630588985 90.952430713345507 16.878759192595087 ;
	setAttr -k on ".w0";
createNode transform -n "rig_main";
	rename -uid "3709C2A6-2D4F-D7E0-3C21-95B3FEFF981D";
	addAttr -ci true -sn "build_data" -ln "build_data" -dt "string";
	setAttr ".r" -type "double3" -3.1805546814635302e-15 -4.1347210859025721e-14 3.4986101496098694e-14 ;
	setAttr ".build_data" -type "string" "{\"name\": \"rig\", \"top\": \"rig_main\", \"secondary_plugs\": [], \"secondary_sockets\": [], \"main_plugs\": [], \"main_sockets\": [], \"rig\": \"rig_rig\", \"pre_rig_top\": \"rig_pre_rig\", \"noXform\": \"rig_noxform\"}";
createNode transform -n "rig_pre_rig" -p "rig_main";
	rename -uid "E620B636-C749-AF38-AA8C-9AB824F9F4B7";
createNode transform -n "rig_noxform" -p "rig_main";
	rename -uid "0108EA29-3541-2378-9A16-DB990E4F1F6F";
	setAttr ".v" no;
	setAttr ".it" no;
createNode transform -n "transform1" -p "rig_noxform";
	rename -uid "15EEB3F5-A440-E17F-372B-969796610926";
createNode weightDriver -n "Corner_Driver_Lf_otDn_rig1_weightDriver" -p "transform1";
	rename -uid "0BE0C2F2-5A48-5CCA-E811-32812A4910A4";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
	setAttr ".typ" 1;
	setAttr -s 2 ".bc[0:1]"  0 0 3 1 1 3;
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr -s 9 ".ps";
	setAttr -s 9 ".ps";
	setAttr -s 2 ".ps[0].pi";
	setAttr -s 6 ".ps[0].pv";
	setAttr -s 2 ".ps[1].pi";
	setAttr -s 6 ".ps[1].pv";
	setAttr -s 2 ".ps[2].pi";
	setAttr -s 6 ".ps[2].pv";
	setAttr -s 2 ".ps[3].pi";
	setAttr -s 6 ".ps[3].pv";
	setAttr -s 2 ".ps[4].pi";
	setAttr -s 6 ".ps[4].pv";
	setAttr -s 2 ".ps[5].pi";
	setAttr -s 6 ".ps[5].pv";
	setAttr -s 2 ".ps[6].pi";
	setAttr -s 6 ".ps[6].pv";
	setAttr -s 2 ".ps[7].pi";
	setAttr -s 6 ".ps[7].pv";
	setAttr -s 2 ".ps[8].pi";
	setAttr -s 6 ".ps[8].pv";
	setAttr -s 6 ".o[0:5]"  0.28741001071090011 -0.79777634116394047 
		1.3785062438614357 0 -2.8421709430404007e-14 0;
	setAttr -s 6 ".o";
createNode transform -n "transform2" -p "rig_noxform";
	rename -uid "E445FCD1-124C-C729-9C23-2FA401139B68";
createNode weightDriver -n "Corner_Driver_Rt_otDn_rig1_weightDriver" -p "transform2";
	rename -uid "DA79A811-9D4C-6F7E-0784-E59F8544498D";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
	setAttr ".typ" 1;
	setAttr -s 2 ".bc[0:1]"  0 0 3 1 1 3;
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr -s 9 ".ps";
	setAttr -s 9 ".ps";
	setAttr -s 2 ".ps[0].pi";
	setAttr -s 6 ".ps[0].pv";
	setAttr -s 2 ".ps[1].pi";
	setAttr -s 6 ".ps[1].pv";
	setAttr -s 2 ".ps[2].pi";
	setAttr -s 6 ".ps[2].pv";
	setAttr -s 2 ".ps[3].pi";
	setAttr -s 6 ".ps[3].pv";
	setAttr -s 2 ".ps[4].pi";
	setAttr -s 6 ".ps[4].pv";
	setAttr -s 2 ".ps[5].pi";
	setAttr -s 6 ".ps[5].pv";
	setAttr -s 2 ".ps[6].pi";
	setAttr -s 6 ".ps[6].pv";
	setAttr -s 2 ".ps[7].pi";
	setAttr -s 6 ".ps[7].pv";
	setAttr -s 2 ".ps[8].pi";
	setAttr -s 6 ".ps[8].pv";
	setAttr -s 6 ".o[0:5]"  0.28741001071090366 -0.79777634116392271 
		1.3785062438614464 0 -2.8421709430404007e-14 0;
	setAttr -s 6 ".o";
createNode joint -n "dummy_jnt" -p "rig_noxform";
	rename -uid "B004C5CA-5B4A-552F-338E-16819D61D3F4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "Tongue1_grpw" -p "rig_noxform";
	rename -uid "B3A2022D-E841-0751-ADB1-6C883EFB7239";
createNode transform -n "Tongue1w" -p "Tongue1_grpw";
	rename -uid "0C418CE5-8D44-AFAE-515F-9AA82B6B4E7B";
createNode transform -n "Tongue2_grpw" -p "Tongue1w";
	rename -uid "E0836EBD-0A43-4032-EF58-0983589CFE5D";
createNode transform -n "Tongue2w" -p "Tongue2_grpw";
	rename -uid "C9D75206-5842-1185-236D-A2AB28D121B6";
createNode transform -n "Tongue3_grpw" -p "Tongue2w";
	rename -uid "B7A4B563-1E4E-1B54-2834-AA961EAA651C";
createNode transform -n "Tongue3w" -p "Tongue3_grpw";
	rename -uid "949004EF-EF4D-808D-7845-81A05F4A86D3";
createNode transform -n "Tongue4_grpw" -p "Tongue3w";
	rename -uid "6F03DAD7-3A4E-FE42-976D-CA975B1A15D7";
createNode transform -n "Tongue4w" -p "Tongue4_grpw";
	rename -uid "DC04AFD7-554D-8116-285F-F4B4FDF7060F";
createNode transform -n "LowerTeeth_grpw" -p "rig_noxform";
	rename -uid "D1533DC2-DB4D-0A88-0159-E39F02D09D4B";
createNode transform -n "LowerTeethw" -p "LowerTeeth_grpw";
	rename -uid "D3D5103E-4E4C-4284-31C3-10A0D7B3D5ED";
createNode joint -n "lower_teeth_jnt" -p "LowerTeethw";
	rename -uid "00A8AC66-DB46-5176-0BC2-79A19F077413";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 7.8886090522101181e-30 66.040383368226983 19.480570558077531 1;
createNode transform -n "UpperTeeth_grpw" -p "rig_noxform";
	rename -uid "6D3B4FD3-5D47-F411-149D-1299EE81F350";
createNode transform -n "UpperTeethw" -p "UpperTeeth_grpw";
	rename -uid "16B4F13F-5244-17C2-BA4F-BA9EE698BA63";
createNode joint -n "upper_teeth_jnt" -p "UpperTeethw";
	rename -uid "4C0BEDA1-B64B-7A9F-0353-A29509275381";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 69.131211967729371 20.023209415336396 1;
createNode joint -n "tongue1_jnt" -p "rig_noxform";
	rename -uid "EB4BE69F-7644-5D4C-78F3-528C4889EEEE";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90.000000000000085 -82.705639085450343 -90.000000000000085 ;
	setAttr ".bps" -type "matrix" -2.2204460492503131e-16 -0.12696698513207288 0.99190694356198172 0
		 6.9388939039072284e-17 0.9919069435619815 0.12696698513207291 0 -1.0000000000000002 8.3266726846886741e-17 -2.2204460492503131e-16 0
		 1.4602606776173181e-17 68.132233840350267 8.8853019549409051 1;
createNode joint -n "tongue2_jnt" -p "tongue1_jnt";
	rename -uid "60808C51-CD4D-6B95-FF63-8FA3DEF325AD";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -7.0547876639596403 ;
	setAttr ".bps" -type "matrix" -2.2888577893077929e-16 -0.24783014781842722 0.96880349804916421 0
		 4.1592446916859257e-17 0.96880349804916399 0.24783014781842727 0 -1.0000000000000002 8.3266726846886741e-17 -2.2204460492503131e-16 0
		 -8.1163321504420614e-16 67.932453456140919 11.926590737722634 1;
createNode joint -n "tongue3_jnt" -p "tongue2_jnt";
	rename -uid "4508D168-8B4E-7734-0040-528FB859533D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 0.86937618238826431 ;
	setAttr ".bps" -type "matrix" -2.2822835293384408e-16 -0.23310206550369292 0.97245227495127629 0
		 4.5060518798456161e-17 0.97245227495127606 0.23310206550369297 0 -1.0000000000000002 8.3266726846886741e-17 -2.2204460492503131e-16 0
		 -2.3415725738148125e-15 67.297770096335455 14.313953961421689 1;
createNode joint -n "tongue4_jnt" -p "tongue3_jnt";
	rename -uid "9507BF72-4B42-99C6-8523-11BC4D2551FC";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 4.1140547241735321 ;
	setAttr ".bps" -type "matrix" -2.244075204768627e-16 -0.16273562794701094 0.9866697093742629 0
		 6.1317992389736259e-17 0.98666970937426268 0.16273562794701096 0 -1.0000000000000002 8.3266726846886741e-17 -2.2204460492503131e-16 0
		 -4.4802468243012664e-15 66.722638793613768 16.242220128780549 1;
createNode joint -n "tongue5_jnt" -p "tongue4_jnt";
	rename -uid "7E7C71CA-9747-13ED-8B70-B785C79393EA";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 2.3400720708839131 -1.4210854715202004e-14 3.2856246814967222e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -2.244075204768627e-16 -0.16273562794701094 0.9866697093742629 0
		 6.1317992389736259e-17 0.98666970937426268 0.16273562794701096 0 -1.0000000000000002 8.3266726846886741e-17 -2.2204460492503131e-16 0
		 -5.3339390636151557e-15 66.341825695717205 18.551098358874405 1;
createNode parentConstraint -n "tongue4_jnt_parentConstraint1" -p "tongue4_jnt";
	rename -uid "DE0EDBF0-D44F-5A27-5A78-0EBD78D4EE03";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Tongue4wW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 0 1.033680271475643e-14 ;
	setAttr ".rst" -type "double3" 3.5358175257181936 1.4210854715202004e-14 2.1612707994814379e-15 ;
	setAttr ".rsrr" -type "double3" 0 0 1.1131941385122309e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "tongue3_jnt_parentConstraint1" -p "tongue3_jnt";
	rename -uid "D10F36E2-AF4E-3C5A-89F6-08BDA91E8479";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Tongue3wW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 0 2.0872390097104322e-15 ;
	setAttr ".rst" -type "double3" 4.0005536336123946 1.4210854715202004e-14 1.5525900262668211e-15 ;
	setAttr ".rsrr" -type "double3" 0 0 2.3854160110976372e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "tongue2_jnt_parentConstraint1" -p "tongue2_jnt";
	rename -uid "6DCF01F0-F84A-1C45-2C70-5FA5EB471122";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Tongue2wW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 0 -2.3854160110976376e-15 ;
	setAttr ".rst" -type "double3" 4.5610037375034267 0 8.1319210867044172e-16 ;
	setAttr ".rsrr" -type "double3" 0 0 -1.5902773407317584e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "tongue1_jnt_parentConstraint1" -p "tongue1_jnt";
	rename -uid "C0F119CA-9845-3F6B-FF09-C485A56EF209";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Tongue1wW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 7.9513867036587919e-15 1.326887656173061e-14 -7.951386703658783e-16 ;
	setAttr ".rst" -type "double3" 0 73.36064609302916 6.0950283922004678 ;
	setAttr -k on ".w0";
createNode transform -n "rig_rig" -p "rig_main";
	rename -uid "1372B3B5-9641-B357-768D-6AB783AE579A";
createNode transform -n "brows_top" -p "rig_rig";
	rename -uid "5E2169DE-A746-8A70-9E10-CE9ED5AB90CB";
	addAttr -ci true -sn "build_data" -ln "build_data" -dt "string";
	addAttr -ci true -k true -sn "rig_vis" -ln "rig_vis" -min 0 -max 1 -at "bool";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".build_data" -type "string" "{\"parent_to_rig\": [], \"lf_out_control\": null, \"rt_out_control\": null, \"pre_lf_in_up\": \"Brow_Lf_In_Up_pre_rig_pre_rig\", \"pre_lf_in\": \"Brow_Lf_In_pre_rig_pre_rig\", \"pre_lf_out\": \"Brow_Lf_Ot_pre_rig_pre_rig\", \"main_sockets\": [], \"rig\": \"brows_rig\", \"pre_rig_top\": \"brows_pre_rig\", \"top\": \"brows_top\", \"secondary_plugs\": [], \"controls\": \"brows_controls\", \"skin_joints\": \"brows_skin_joints\", \"world_controls\": \"brows_world_controls\", \"pre_rig_noxform\": \"brows_pre_rig_noxform\", \"lf_in_control\": null, \"secondary_sockets\": [], \"parent_to_noxform\": [], \"l_control_group\": \"brows_Lf_controls_group\", \"r_control_group\": \"brows_Rt_controls_group\", \"rt_mid_control\": null, \"name\": \"brows\", \"lf_mid_control\": null, \"rt_in_control\": null, \"main_plugs\": [], \"parent_to_joints\": [], \"noXform\": \"brows_noxform\"}";
	setAttr -k on ".rig_vis";
createNode transform -n "brows_rig" -p "brows_top";
	rename -uid "18C0B697-184E-AF50-ABEB-4796B74CAC3E";
createNode transform -n "brows_noxform" -p "brows_rig";
	rename -uid "FC87A941-2A4B-97E2-9115-E6929E1A95C2";
	setAttr ".it" no;
createNode transform -n "brows_world_controls" -p "brows_rig";
	rename -uid "4B3B6F58-144D-557F-4466-6CBA1D0FB707";
	setAttr ".it" no;
createNode transform -n "brows_controls" -p "brows_top";
	rename -uid "C8B4997F-1449-A3E3-9747-C18D852B279D";
createNode transform -n "brows_Lf_controls_group" -p "brows_controls";
	rename -uid "B872E1F4-9648-DBB5-00C5-3D80ED422812";
createNode transform -n "Brow_Lf_In_offset" -p "brows_Lf_controls_group";
	rename -uid "F125852A-7646-730C-666B-73BA745D2464";
	setAttr ".t" -type "double3" 3.7475293332344375 90.864645677582317 22.352583217625 ;
	setAttr ".r" -type "double3" -10.29407808465824 23.952486707288564 4.3503334764472514e-16 ;
	setAttr ".s" -type "double3" 0.5 0.5 0.5 ;
createNode transform -n "Brow_Lf_In" -p "Brow_Lf_In_offset";
	rename -uid "AB03197A-C946-26F8-314B-FC86E213A89A";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -2.7339241981394472e-15 0 -7.1054273576010019e-15 ;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mntl" -type "double3" -10 -10 -1 ;
	setAttr ".mxtl" -type "double3" 0 10 1 ;
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
createNode nurbsCurve -n "Brow_Lf_In1Shape" -p "Brow_Lf_In";
	rename -uid "2252685E-614E-FB3E-811F-65A9C6AA428E";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		-4.0619467616194216 5.5804111308809915e-12 1.3105268395829991e-13
		3.1214633270132599e-14 4.0619467616250313 1.3105268395829991e-13
		4.0619467616194784 5.5804111308809915e-12 1.3105268395829991e-13
		3.1214633270132599e-14 -4.0619467616138749 1.3105268395829991e-13
		-4.0619467616194216 5.5804111308809915e-12 1.3105268395829991e-13
		3.1214633270132599e-14 5.5804111308809915e-12 4.0619467616195815
		4.0619467616194784 5.5804111308809915e-12 1.3105268395829991e-13
		3.1214633270132599e-14 5.5804111308809915e-12 -4.0619467616193212
		-4.0619467616194216 5.5804111308809915e-12 1.3105268395829991e-13
		3.1214633270132599e-14 5.5804111308809915e-12 4.0619467616195815
		3.1214633270132599e-14 -4.0619467616138749 1.3105268395829991e-13
		3.1214633270132599e-14 5.5804111308809915e-12 -4.0619467616193212
		3.1214633270132599e-14 4.0619467616250313 1.3105268395829991e-13
		3.1214633270132599e-14 5.5804111308809915e-12 4.0619467616195815
		;
createNode transform -n "Brow_Lf_Ot_offset" -p "brows_Lf_controls_group";
	rename -uid "F0387B46-6944-6315-2398-DFB4887F0053";
	setAttr ".t" -type "double3" 16.271738725916144 93.279682286743181 16.694387292366869 ;
	setAttr ".r" -type "double3" -10.29407808465824 23.952486707288564 4.3503334764472514e-16 ;
	setAttr ".s" -type "double3" 0.5 0.5 0.5 ;
createNode transform -n "Brow_Lf_Ot" -p "Brow_Lf_Ot_offset";
	rename -uid "43C07FE7-D747-E68A-5814-E49FFEF9C3E4";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mntl" -type "double3" -10 -10 -1 ;
	setAttr ".mxtl" -type "double3" 0 10 1 ;
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
createNode nurbsCurve -n "Brow_Lf_Ot1Shape" -p "Brow_Lf_Ot";
	rename -uid "7BA2D77A-6E4B-BDAD-C202-ABAE5D49B81D";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		-4.06194676161945 5.0562003950477977e-12 1.3105268395829991e-13
		0 4.06194676162451 1.3105268395829991e-13
		4.06194676161945 5.0562003950477977e-12 1.3105268395829991e-13
		0 -4.0619467616143998 1.3105268395829991e-13
		-4.06194676161945 5.0562003950477977e-12 1.3105268395829991e-13
		0 5.0562003950477977e-12 4.0619467616195815
		4.06194676161945 5.0562003950477977e-12 1.3105268395829991e-13
		0 5.0562003950477977e-12 -4.0619467616193212
		-4.06194676161945 5.0562003950477977e-12 1.3105268395829991e-13
		0 5.0562003950477977e-12 4.0619467616195815
		0 -4.0619467616143998 1.3105268395829991e-13
		0 5.0562003950477977e-12 -4.0619467616193212
		0 4.06194676162451 1.3105268395829991e-13
		0 5.0562003950477977e-12 4.0619467616195815
		;
createNode transform -n "Brow_Lf_Md_offset" -p "brows_Lf_controls_group";
	rename -uid "F1F90B96-5645-EF8E-9327-C5BB358E19F2";
	setAttr ".s" -type "double3" 0.5 0.5 0.5 ;
createNode transform -n "Brow_Lf_Md" -p "Brow_Lf_Md_offset";
	rename -uid "B58B729B-E24B-1863-38F5-A79499C2A4EC";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mntl" -type "double3" -1 -10 -1 ;
	setAttr ".mxtl" -type "double3" 1 10 1 ;
	setAttr ".mtye" yes;
	setAttr ".xtye" yes;
createNode nurbsCurve -n "Brow_Lf_Md1Shape" -p "Brow_Lf_Md";
	rename -uid "36CD58C7-8D41-9134-F711-2CB88F3A6D94";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-3.8032983240387863 5.6528879157721526e-12 3.5227715694506043e-13
		4.6636696792498626e-14 3.8032983240444902 3.5227715694506043e-13
		3.8032983240388858 5.6528879157721526e-12 3.5227715694506043e-13
		4.6636696792498626e-14 -3.8032983240331824 3.5227715694506043e-13
		-3.8032983240387863 5.6528879157721526e-12 3.5227715694506043e-13
		;
createNode parentConstraint -n "Brow_Lf_Md_offset_parentConstraint1" -p "Brow_Lf_Md_offset";
	rename -uid "15FC156E-F04D-ABFD-3016-9C83B21B1B03";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Brow_Lf_InW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "Brow_Lf_OtW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" -10.294078084658242 23.952486707288564 0 ;
	setAttr ".rst" -type "double3" 10.00963402957529 92.072163982162763 19.523485254995933 ;
	setAttr ".rsrr" -type "double3" 0 23.952486707288546 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "brows_Rt_controls_group" -p "brows_controls";
	rename -uid "B38B5A42-034D-225D-F80A-70A15682E878";
	setAttr ".s" -type "double3" -1 1 1 ;
createNode transform -n "Brow_Rt_In_offset" -p "brows_Rt_controls_group";
	rename -uid "CDF6E696-E141-893D-D82E-C49ADF1BDF3D";
	setAttr ".t" -type "double3" 3.7475293332344375 90.864645677582317 22.352583217625 ;
	setAttr ".r" -type "double3" -10.29407808465824 23.952486707288564 4.3503334764472514e-16 ;
	setAttr ".s" -type "double3" 0.5 0.5 0.5 ;
createNode transform -n "Brow_Rt_In" -p "Brow_Rt_In_offset";
	rename -uid "5EC57291-A142-105A-6974-EFA219565B97";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 0 -7.1054273576010019e-15 ;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mntl" -type "double3" -10 -10 -1 ;
	setAttr ".mxtl" -type "double3" 0 10 1 ;
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
createNode nurbsCurve -n "Brow_Rt_InShape" -p "Brow_Rt_In";
	rename -uid "E7820726-3F4E-0433-1501-338AB9BA84D2";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		-4.0619467616194163 5.5796258708530194e-12 1.2826726139891999e-13
		3.3615353069172376e-14 4.0619467616249896 1.3628396523635248e-13
		4.0619467616194838 5.5475590555032901e-12 1.3628396523635248e-13
		3.3615353069172376e-14 -4.0619467616138945 1.3628396523635248e-13
		-4.0619467616194163 5.5796258708530194e-12 1.2826726139891999e-13
		3.5619529028530499e-14 5.5475590555032901e-12 4.0619467616195868
		4.0619467616194838 5.5475590555032901e-12 1.3628396523635248e-13
		3.5619529028530499e-14 5.5796258708530194e-12 -4.0619467616193141
		-4.0619467616194163 5.5796258708530194e-12 1.2826726139891999e-13
		3.5619529028530499e-14 5.5475590555032901e-12 4.0619467616195868
		3.3615353069172376e-14 -4.0619467616138945 1.3628396523635248e-13
		3.5619529028530499e-14 5.5796258708530194e-12 -4.0619467616193141
		3.3615353069172376e-14 4.0619467616249896 1.3628396523635248e-13
		3.5619529028530499e-14 5.5475590555032901e-12 4.0619467616195868
		;
createNode transform -n "Brow_Rt_Ot_offset" -p "brows_Rt_controls_group";
	rename -uid "96E5E18A-684D-1905-7847-71AFEDC1C699";
	setAttr ".t" -type "double3" 16.271738725916144 93.279682286743181 16.694387292366869 ;
	setAttr ".r" -type "double3" -10.29407808465824 23.952486707288564 4.3503334764472514e-16 ;
	setAttr ".s" -type "double3" 0.5 0.5 0.5 ;
createNode transform -n "Brow_Rt_Ot" -p "Brow_Rt_Ot_offset";
	rename -uid "A52136F5-8A42-53F8-BCAE-498FE43655AC";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -2.8858754850404223e-14 0 0 ;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mntl" -type "double3" -10 -10 -1 ;
	setAttr ".mxtl" -type "double3" 0 10 1 ;
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
createNode nurbsCurve -n "Brow_Rt_OtShape" -p "Brow_Rt_Ot";
	rename -uid "2B6CF13A-C047-460A-B0FD-99828CBC7A6D";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		-4.0619467616194447 5.0344900099076098e-12 1.1223385372405501e-13
		1.5485377194423759e-15 4.0619467616244771 1.1223385372405501e-13
		4.0619467616194482 5.0344900099076098e-12 1.1223385372405501e-13
		1.5485377194423759e-15 -4.0619467616144398 1.1223385372405501e-13
		-4.0619467616194447 5.0344900099076098e-12 1.1223385372405501e-13
		1.5485377194423759e-15 5.0344900099076098e-12 4.0619467616195708
		4.0619467616194482 5.0344900099076098e-12 1.1223385372405501e-13
		1.5485377194423759e-15 5.0344900099076098e-12 -4.0619467616193301
		-4.0619467616194447 5.0344900099076098e-12 1.1223385372405501e-13
		1.5485377194423759e-15 5.0344900099076098e-12 4.0619467616195708
		1.5485377194423759e-15 -4.0619467616144398 1.1223385372405501e-13
		1.5485377194423759e-15 5.0344900099076098e-12 -4.0619467616193301
		1.5485377194423759e-15 4.0619467616244771 1.1223385372405501e-13
		1.5485377194423759e-15 5.0344900099076098e-12 4.0619467616195708
		;
createNode transform -n "Brow_Rt_Md_offset" -p "brows_Rt_controls_group";
	rename -uid "EDC6378D-3444-E4EF-A789-56B06694DA07";
	setAttr ".s" -type "double3" 0.5 0.5 0.5 ;
createNode transform -n "Brow_Rt_Md" -p "Brow_Rt_Md_offset";
	rename -uid "2922B252-D548-83F2-9445-E6B8BB1A60A0";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mntl" -type "double3" -1 -10 -1 ;
	setAttr ".mxtl" -type "double3" 1 10 1 ;
	setAttr ".mtye" yes;
	setAttr ".xtye" yes;
createNode nurbsCurve -n "Brow_Rt_MdShape" -p "Brow_Rt_Md";
	rename -uid "86550EA5-B14F-DBEE-9AA0-459F63DCC935";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-3.8032983240387903 5.6437595015524798e-12 3.5273496884702999e-13
		4.7485269474776524e-14 3.8032983240444658 3.4471826500959749e-13
		3.8032983240388853 5.6437595015524798e-12 3.5273496884702999e-13
		4.7485269474776524e-14 -3.8032983240332103 3.4471826500959749e-13
		-3.8032983240387903 5.6437595015524798e-12 3.5273496884702999e-13
		;
createNode parentConstraint -n "Brow_Rt_Md_offset_parentConstraint1" -p "Brow_Rt_Md_offset";
	rename -uid "07A8416D-464F-93E3-F070-46AA14EB8573";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Brow_Lf_InW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "Brow_Lf_OtW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tpm" -type "matrix" 0.91388243530153268 0 -0.40597893350189984 0
		 0 1 0 0 0.40597893350189984 0 0.91388243530153268 0 3.7475293332344375 90.864645677582317 22.352583217625 1;
	setAttr ".tg[0].tt" -type "double3" 1.7763568394002505e-15 1.4210854715202004e-14 
		-7.1054273576010019e-15 ;
	setAttr ".tg[0].ts" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
	setAttr ".tg[1].tpm" -type "matrix" 0.91388243530153268 0 -0.40597893350189984 0
		 0 1 0 0 0.40597893350189984 0 0.91388243530153268 0 16.271738725916144 93.279682286743181 16.694387292366869 1;
	setAttr ".tg[1].tt" -type "double3" 1.7763568394002505e-15 1.4210854715202004e-14 
		0 ;
	setAttr ".tg[1].ts" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
	setAttr ".cpim" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".lr" -type "double3" 0 23.952486707288546 0 ;
	setAttr ".rst" -type "double3" 10.00963402957529 92.072163982162763 19.523485254995933 ;
	setAttr ".rsrr" -type "double3" 0 23.952486707288546 0 ;
createNode parentConstraint -n "Brow_Rt_Md_offset_parentConstraint2" -p "Brow_Rt_Md_offset";
	rename -uid "50D33D49-8943-99D2-3039-E8A8D5EF5E95";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Brow_Rt_InW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "Brow_Rt_OtW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" -10.294078084658242 23.952486707288564 0 ;
	setAttr ".rst" -type "double3" 10.00963402957529 92.072163982162749 19.523485254995933 ;
	setAttr ".rsrr" -type "double3" 0 23.952486707288546 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "brows_skin_joints" -p "brows_top";
	rename -uid "64964F93-EE47-D426-7076-C586D6852F96";
	setAttr ".v" no;
	setAttr ".it" no;
createNode transform -n "jaw_muzzle_top" -p "rig_rig";
	rename -uid "B1317E92-CB43-F1A9-EE20-BEA347ABBAD9";
	addAttr -ci true -sn "build_data" -ln "build_data" -dt "string";
	addAttr -ci true -k true -sn "rig_vis" -ln "rig_vis" -min 0 -max 1 -at "bool";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".build_data" -type "string" "{\"parent_to_rig\": [], \"corner_driver\": null, \"top_lip_driver\": null, \"jaw_joint\": \"Jaw_jnt\", \"main_sockets\": [], \"rig\": \"jaw_muzzle_rig\", \"pre_rig_top\": \"jaw_muzzle_pre_rig\", \"muzzle\": null, \"jaw\": null, \"top\": \"jaw_muzzle_top\", \"secondary_plugs\": [], \"controls\": \"jaw_muzzle_controls\", \"skin_joints\": \"jaw_muzzle_skin_joints\", \"world_controls\": \"jaw_muzzle_world_controls\", \"pre_rig_noxform\": \"jaw_muzzle_pre_rig_noxform\", \"pre_muzzle\": \"Muzzle_pre_rig_pre_rig\", \"secondary_sockets\": [], \"parent_to_noxform\": [], \"muzzle_joint\": \"Muzzle_jnt\", \"name\": \"jaw_muzzle\", \"main_plugs\": [], \"parent_to_joints\": [], \"pre_jaw\": \"Jaw_pre_rig_pre_rig\", \"noXform\": \"jaw_muzzle_noxform\"}";
	setAttr -k on ".rig_vis";
createNode transform -n "jaw_muzzle_rig" -p "jaw_muzzle_top";
	rename -uid "051DBF09-9F48-2602-5791-0B90841E9E61";
createNode transform -n "jaw_muzzle_noxform" -p "jaw_muzzle_rig";
	rename -uid "6852954D-5C43-3841-D764-FBAA01294877";
	setAttr ".it" no;
createNode parentConstraint -n "Muzzle_jnt_parentConstraint1" -p "jaw_muzzle_noxform";
	rename -uid "93966914-7F49-CFF4-89A4-4A95CEE0CC61";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Muzzle_worldW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 5.6249528108048489e-14 85.096976171403341 -1.9786965458418277 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 180 -89.999999999999986 0 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000004 1 1.0000000000000004 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.2204460492503131e-16 0 -6.3108872417680944e-30 ;
	setAttr ".tg[0].tor" -type "double3" -4.7044035846079415e-46 0 0 ;
	setAttr ".lr" -type "double3" 180 -89.999999999999986 0 ;
	setAttr ".rst" -type "double3" 5.6249528108048489e-14 85.096976171403341 -1.9786965458418277 ;
	setAttr ".rsrr" -type "double3" 180 -89.999999999999986 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Jaw_jnt_parentConstraint1" -p "jaw_muzzle_noxform";
	rename -uid "75D8221C-B445-FF55-7DEB-0EB1A5E4067C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Jaw_worldW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 5.4453037185952716e-14 77.151225115155896 0.80781299760903891 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -90.000000000000057 -64.286654601963576 -89.999999999999957 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 1.4210854715202004e-14 -1.8932661725304283e-29 ;
	setAttr ".tg[0].tor" -type "double3" -2.4806538741223882e-14 5.6617164282615445e-15 
		3.1805546814635176e-15 ;
	setAttr ".lr" -type "double3" -90.000000000000057 -64.286654601963576 -89.999999999999943 ;
	setAttr ".rst" -type "double3" 2.7865095434508653 7.9457510562474454 -1.4421464730056403e-15 ;
	setAttr ".rsrr" -type "double3" -90.000000000000057 -64.286654601963576 -89.999999999999929 ;
	setAttr -k on ".w0";
createNode transform -n "jaw_muzzle_world_controls" -p "jaw_muzzle_rig";
	rename -uid "A17A7B57-3242-D6FD-3A2F-B2A0A0A85E24";
createNode transform -n "Muzzle_offset_world" -p "jaw_muzzle_world_controls";
	rename -uid "71EB2621-214A-BA5E-4FC5-06BD5B0DDE5F";
createNode transform -n "Muzzle_world" -p "Muzzle_offset_world";
	rename -uid "C4B28CD3-AF43-AF21-C13A-2F9CDE3C5998";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
createNode transform -n "Jaw_offset_world" -p "Muzzle_world";
	rename -uid "08256E85-F544-D31B-065C-62821B3D50F5";
createNode transform -n "Jaw_world" -p "Jaw_offset_world";
	rename -uid "ACCD5042-CC43-DA4B-E791-6DAA69155FFE";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
createNode transform -n "jaw_muzzle_controls" -p "jaw_muzzle_top";
	rename -uid "EF40D721-5F46-422D-314E-66BB429A80B7";
createNode transform -n "Muzzle_offset" -p "jaw_muzzle_controls";
	rename -uid "87B37A8A-6545-BAD4-7ACC-2F9CDDC5F536";
	setAttr ".t" -type "double3" 5.6249528108048508e-14 85.096976171403327 -1.978696545841828 ;
	setAttr ".r" -type "double3" 180 -89.999999999999986 0 ;
createNode transform -n "Muzzle" -p "Muzzle_offset";
	rename -uid "64BA6B6A-2B41-4BDB-298E-4D8498C42DFE";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
	addAttr -s false -ci true -m -sn "world" -ln "world" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 -1.4210854715202004e-14 -1.2621774483536189e-29 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "Muzzle1Shape" -p "Muzzle";
	rename -uid "1A8A856F-F947-A53F-CFD4-40AF9CD9AD4B";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		23.47446648620425 5.5781684025490907 -3.9706489559925537
		19.424866183255695 17.885477390708687 -10.993502322492901
		17.864843500416853 22.626607317100763 -12.176587222573414
		17.608716921230197 23.405012274211 2.4602469115052896e-15
		17.864843500416853 22.626607317100763 12.176587222573428
		19.424866183255695 17.885477390708687 10.993502322492922
		23.47446648620425 5.5781684025490907 3.9706489559925662
		24.480870004724974 2.5195655423637984 1.1791399056337417e-14
		23.47446648620425 5.5781684025490907 -3.9706489559925537
		19.424866183255695 17.885477390708687 -10.993502322492901
		17.864843500416853 22.626607317100763 -12.176587222573414
		;
createNode transform -n "Jaw_offset" -p "Muzzle";
	rename -uid "C6875FFD-1343-5FF4-0B32-6D974D7CA309";
	setAttr ".t" -type "double3" 2.7865095434508724 7.945751056247417 -1.4421464730055329e-15 ;
	setAttr ".r" -type "double3" 0 0 25.713345398036431 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "Jaw" -p "Jaw_offset";
	rename -uid "776797A2-4149-9803-62AD-6C95ED13F88E";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
	addAttr -s false -ci true -m -sn "world" -ln "world" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 0 -1.0097419586828951e-28 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "Jaw1Shape" -p "Jaw";
	rename -uid "3D56B6C7-374A-EF2C-32B0-318D7E55B6AE";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		20.219736757714138 2.1912025687914931 -14.406447346601635
		12.225691624342712 2.1912025687914931 -20.373793218187366
		28.572040966385856 2.1912025687914931 -14.406447346601635
		35.342920564282473 2.1912025687914931 -4.7755454952430892e-15
		28.572040966385856 2.1912025687914931 14.406447346601635
		12.225691624342712 2.1912025687914931 20.373793218187366
		20.219736757714138 2.1912025687914931 14.406447346601635
		28.050430304642351 2.1912025687914931 1.2517484403537292e-14
		20.219736757714138 2.1912025687914931 -14.406447346601635
		12.225691624342712 2.1912025687914931 -20.373793218187366
		28.572040966385856 2.1912025687914931 -14.406447346601635
		;
createNode transform -n "reposition_offset" -p "Jaw_offset";
	rename -uid "2EEE6F0B-994C-78B0-F19F-988595FA33BA";
	setAttr ".t" -type "double3" 8.4376949871511897e-15 -0.88546049778378055 -1.5493560898757099e-17 ;
createNode transform -n "jaw_muzzle_top_lip_driver" -p "reposition_offset";
	rename -uid "47DD359D-9C46-A729-311E-779BEC246416";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode transform -n "jaw_muzzle_corner_driver" -p "reposition_offset";
	rename -uid "963EC634-A64C-C497-0958-89A5A00B0447";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode transform -n "jaw_muzzle_skin_joints" -p "jaw_muzzle_top";
	rename -uid "BBF2EEE3-224D-EBD3-453C-348588296543";
	setAttr ".v" no;
	setAttr ".it" no;
createNode transform -n "lips_top" -p "rig_rig";
	rename -uid "D4CFC4A1-D84F-875A-B89B-9ABB74ADDACC";
	addAttr -ci true -sn "build_data" -ln "build_data" -dt "string";
	addAttr -ci true -k true -sn "rig_vis" -ln "rig_vis" -min 0 -max 1 -at "bool";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".build_data" -type "string" (
		"{\"pre_r_corner_inUp\": null, \"parent_to_rig\": [], \"pre_l_corner_inDn\": null, \"pre_l_corner_up\": \"Corner_Lf_Up_pre_rig\", \"pre_l_corner_inUp\": null, \"pre_l_driver_ot\": \"Corner_Driver_Lf_Ot_pre_rig\", \"bot_control_joints\": [\"Lip_Bot_Rt_04_jnt\", \"Lip_Bot_Rt_03_jnt\", \"Lip_Bot_Rt_02_jnt\", \"Lip_Bot_Rt_01_jnt\", \"Lip_Bot_Ct_jnt\", \"Lip_Bot_Lf_01_jnt\", \"Lip_Bot_Lf_02_jnt\", \"Lip_Bot_Lf_03_jnt\", \"Lip_Bot_Lf_04_jnt\"], \"pre_l_driver_otDn\": \"Corner_Driver_Lf_otDn_pre_rig\", \"pre_r_corner_up\": null, \"pre_bot_controls\": [\"Lip_Bot_Rt_04_pre_rig\", \"Lip_Bot_Rt_03_pre_rig\", \"Lip_Bot_Rt_02_pre_rig\", \"Lip_Bot_Rt_01_pre_rig\", \"Lip_Bot_Ct_pre_rig\", \"Lip_Bot_Lf_01_pre_rig\", \"Lip_Bot_Lf_02_pre_rig\", \"Lip_Bot_Lf_03_pre_rig\", \"Lip_Bot_Lf_04_pre_rig\"], \"pre_r_driver_dn\": null, \"main_sockets\": [], \"rig\": \"lips_rig\", \"pre_rig_top\": \"lips_pre_rig\", \"l_driver_poses\": [], \"pre_l_driver_inUp\": \"Corner_Driver_Lf_inUp_pre_rig\", \"pre_l_driver_up\": \"Corner_Driver_Lf_Up_pre_rig\", \"pre_r_corner_in\": null, \"pre_r_corner_otUp\": null, \"pre_l_driver_inDn\": \"Corner_Driver_Lf_inDn_pre_rig\", \"pre_r_driver_inUp\": null, \"pre_l_corner_otDn\": null, \"top_curve\": \"top_lip_curve\", \"pre_r_corner_ot\": null, \"r_corner\": null, \"top\": \"lips_top\", \"secondary_plugs\": [], \"pre_corner_r_driver\": null, \"controls\": \"lips_controls\", \"pre_l_driver_dn\": \"Corner_Driver_Lf_Dn_pre_rig\", \"main_top\": null, \"pre_r_corner\": null, \"skin_joints\": \"lips_skin_joints\", \"world_controls\": \"lips_world_controls\", \"pre_rig_noxform\": \"lips_pre_rig_noxform\", \"r_control_group_world\": \"lips_Rt_controls_world\", \"top_def_joints\": [\"R_Lip_Top_7\", \"R_Lip_Top_6\", \"R_Lip_Top_5\", \"R_Lip_Top_4\", \"R_Lip_Top_3\", \"R_Lip_Top_2\", \"R_Lip_Top_1\", \"C_Lip_Top\", \"L_Lip_Top_1\", \"L_Lip_Top_2\", \"L_Lip_Top_3\", \"L_Lip_Top_4\", \"L_Lip_Top_5\", \"L_Lip_Top_6\", \"L_Lip_Top_7\"], \"l_control_group_world\": \"lips_Lf_controls_world\", \"joint_number\": 15, \"l_control_poses\": [], \"pre_l_corner_otUp\": null, \"top_surface\": \"top_lip_surface\", \"pre_l_corner_in\": null, \"pre_main_top\": \"Lip_Top_pre_rig\", \"r_driver_poses\": [], \"pre_main_bot\": \"Lip_Bot_pre_rig\", \"secondary_sockets\": [], \"parent_to_noxform\": [\"top_lip_curve\", \"bot_lip_curve\"], \"pre_l_corner\": \"Lip_Lf_pre_rig\", \"l_control_group\": \"lips_Lf_controls_group\", \"pre_r_corner_otDn\": null, \"pre_r_driver_otUp\": null, \"bot_controls\": null, \"pre_corner_l_driver\": \"Corner_Driver_Lf_pre_rig\", \"pre_l_corner_ot\": null, \"r_driver\": null, \"r_control_poses\": [], \"pre_r_driver_otDn\": null, \"r_control_group\": \"lips_Rt_controls_group\", \"pre_r_driver_ot\": null, \"bot_def_joints\": [\"R_Lip_Bot_7\", \"R_Lip_Bot_6\", \"R_Lip_Bot_5\", \"R_Lip_Bot_4\", \"R_Lip_Bot_3\", \"R_Lip_Bot_2\", \"R_Lip_Bot_1\", \"C_Lip_Bot\", \"L_Lip_Bot_1\", \"L_Lip_Bot_2\", \"L_Lip_Bot_3\", \"L_Lip_Bot_4\", \"L_Lip_Bot_5\", \"L_Lip_Bot_6\", \"L_Lip_Bot_7\"], \"pre_l_driver_otUp\": \"Corner_Driver_Lf_otUp_pre_rig\", \"pre_r_corner_dn\": null, \"pre_l_driver_in\": \"Corner_Driver_Lf_In_pre_rig\", \"name\": \"lips\", \"pre_r_driver_inDn\": null, \"top_control_joints\": [\"Lip_Top_Rt_04_jnt\", \"Lip_Top_Rt_03_jnt\", \"Lip_Top_Rt_02_jnt\", \"Lip_Top_Rt_01_jnt\", \"Lip_Top_Ct_jnt\", \"Lip_Top_Lf_01_jnt\", \"Lip_Top_Lf_02_jnt\", \"Lip_Top_Lf_03_jnt\", \"Lip_Top_Lf_04_jnt\"], \"pre_l_corner_dn\": null, \"l_driver\": null, \"pre_top_controls\": [\"Lip_Top_Rt_04_pre_rig\", \"Lip_Top_Rt_03_pre_rig\", \"Lip_Top_Rt_02_pre_rig\", \"Lip_Top_Rt_01_pre_rig\", \"Lip_Top_Ct_pre_rig\", \"Lip_Top_Lf_01_pre_rig\", \"Lip_Top_Lf_02_pre_rig\", \"Lip_Top_Lf_03_pre_rig\", \"Lip_Top_Lf_04_pre_rig\"], \"pre_r_corner_inDn\": null, \"pre_r_driver_in\": null, \"pre_r_driver_up\": null, \"main_plugs\": [], \"parent_to_joints\": [\"R_Lip_Top_7\", \"R_Lip_Top_6\", \"R_Lip_Top_5\", \"R_Lip_Top_4\", \"R_Lip_Top_3\", \"R_Lip_Top_2\", \"R_Lip_Top_1\", \"C_Lip_Top\", \"L_Lip_Top_1\", \"L_Lip_Top_2\", \"L_Lip_Top_3\", \"L_Lip_Top_4\", \"L_Lip_Top_5\", \"L_Lip_Top_6\", \"L_Lip_Top_7\", \"R_Lip_Bot_7\", \"R_Lip_Bot_6\", \"R_Lip_Bot_5\", \"R_Lip_Bot_4\", \"R_Lip_Bot_3\", \"R_Lip_Bot_2\", \"R_Lip_Bot_1\", \"C_Lip_Bot\", \"L_Lip_Bot_1\", \"L_Lip_Bot_2\", \"L_Lip_Bot_3\", \"L_Lip_Bot_4\", \"L_Lip_Bot_5\", \"L_Lip_Bot_6\", \"L_Lip_Bot_7\"], \"l_corner\": null, \"bot_curve\": \"bot_lip_curve\", \"bot_surface\": \"bot_lip_surface\", \"noXform\": \"lips_noxform\", \"top_controls\": null, \"main_bot\": null}");
	setAttr -k on ".rig_vis";
createNode transform -n "lips_rig" -p "lips_top";
	rename -uid "6F862DD3-0A4C-D206-E9F2-3DA29C9D7893";
createNode transform -n "lips_noxform" -p "lips_rig";
	rename -uid "5925F244-754C-74B8-3167-3EAAAC206F14";
	setAttr ".it" no;
createNode transform -n "top_lip_curve" -p "lips_noxform";
	rename -uid "49B82306-E647-ACEE-6EEF-D5BB2689BC06";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "curveShape1" -p "top_lip_curve";
	rename -uid "BA42D1F4-694F-BD67-E166-389F600D6391";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "curveShape1Orig" -p "top_lip_curve";
	rename -uid "F97753E8-B14C-F212-B195-F2AB54E17760";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 6 0 no 3
		11 0 0 0 0.16666666666666666 0.33333333333333331 0.5 0.66666666666666663 0.83333333333333337
		 1 1 1
		9
		-4 0.5 0
		-3 0.5 0
		-2 0.5 0
		-1 0.5 0
		0 0.5 0
		1 0.5 0
		2 0.5 0
		3 0.5 0
		4 0.5 0
		;
createNode transform -n "bot_lip_curve" -p "lips_noxform";
	rename -uid "FCFB5123-1C40-1851-72CD-2FBCAA152AD6";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "curveShape2" -p "bot_lip_curve";
	rename -uid "A6114639-E949-6FC9-E6A0-EEBBD674C05B";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "curveShape2Orig" -p "bot_lip_curve";
	rename -uid "760819AA-B74C-D91E-A6D9-9288F8A8EAC6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 6 0 no 3
		11 0 0 0 0.16666666666666666 0.33333333333333331 0.5 0.66666666666666663 0.83333333333333337
		 1 1 1
		9
		-4 -0.5 0
		-3 -0.5 0
		-2 -0.5 0
		-1 -0.5 0
		0 -0.5 0
		1 -0.5 0
		2 -0.5 0
		3 -0.5 0
		4 -0.5 0
		;
createNode transform -n "lips_world_controls" -p "lips_rig";
	rename -uid "9559E897-7644-9205-5063-CF989E0DE6F1";
createNode transform -n "Lip_Top_offset_world" -p "lips_world_controls";
	rename -uid "F2A19CFC-8C42-7682-D77E-B88776D46598";
createNode transform -n "Lip_Top_world" -p "Lip_Top_offset_world";
	rename -uid "C3A84274-6C46-6DF4-7378-389E129B4204";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
createNode transform -n "Lip_Bot_offset_world" -p "lips_world_controls";
	rename -uid "E38DF9DC-CC43-E7AA-C4E1-FFBD3EC18D8C";
createNode transform -n "Lip_Bot_world" -p "Lip_Bot_offset_world";
	rename -uid "5F8C29E3-C44F-50AA-11EF-F68A515DBA97";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
createNode transform -n "lips_Lf_controls_world" -p "lips_world_controls";
	rename -uid "7AC2B72B-B745-5D41-4642-908A84F22BF5";
createNode transform -n "Lip_Lf_offset_world" -p "lips_Lf_controls_world";
	rename -uid "72FABBFD-2E4B-D732-DA5F-498327898179";
createNode transform -n "Lip_Lf_world" -p "Lip_Lf_offset_world";
	rename -uid "57825DC1-6B44-1E78-C3DA-819A4AD0C0BC";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
createNode transform -n "Lip_Top_Rt_04_offset_world" -p "lips_world_controls";
	rename -uid "FF364EAD-014F-5335-BC66-B192DC6FFE66";
createNode transform -n "Lip_Top_Rt_04_world" -p "Lip_Top_Rt_04_offset_world";
	rename -uid "20D0EFEA-2344-7956-0EA5-D494B4C3AA2C";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
createNode joint -n "Lip_Top_Rt_04_jnt" -p "Lip_Top_Rt_04_world";
	rename -uid "1743FA7A-C94F-797D-AFBA-06820806D0D3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 -1.4210854715202004e-14 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -4 0.5 0 1;
createNode transform -n "Lip_Top_Rt_03_offset_world" -p "lips_world_controls";
	rename -uid "A76B23FB-D14B-B6FE-549E-B49BEC7F6318";
createNode transform -n "Lip_Top_Rt_03_world" -p "Lip_Top_Rt_03_offset_world";
	rename -uid "989B80DF-EA43-0FB9-0865-D4982DB478C6";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
createNode joint -n "Lip_Top_Rt_03_jnt" -p "Lip_Top_Rt_03_world";
	rename -uid "D0552805-9745-3F0E-7A4E-1E99DA5C9BBF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3 0.5 0 1;
createNode transform -n "Lip_Top_Rt_02_offset_world" -p "lips_world_controls";
	rename -uid "7FCF0F39-5C44-94F6-8B1F-409FB8C3876A";
createNode transform -n "Lip_Top_Rt_02_world" -p "Lip_Top_Rt_02_offset_world";
	rename -uid "A3418469-AD45-378E-AD6C-A59338FA7D57";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
createNode joint -n "Lip_Top_Rt_02_jnt" -p "Lip_Top_Rt_02_world";
	rename -uid "3081A79C-614F-4F8B-7385-76BEC5505488";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2 0.5 0 1;
createNode transform -n "Lip_Top_Rt_01_offset_world" -p "lips_world_controls";
	rename -uid "DFC8BAB7-2341-8A89-04C9-B39BCEB33F28";
createNode transform -n "Lip_Top_Rt_01_world" -p "Lip_Top_Rt_01_offset_world";
	rename -uid "085DC78C-264A-BCA8-2952-FABFCF7C512E";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
createNode joint -n "Lip_Top_Rt_01_jnt" -p "Lip_Top_Rt_01_world";
	rename -uid "895D0C60-EE47-7A30-5E19-14A41DB8D1F0";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1 0.5 0 1;
createNode transform -n "Lip_Top_Ct_offset_world" -p "lips_world_controls";
	rename -uid "D6397CDC-4842-3C8D-E542-C885ABC3E1D9";
createNode transform -n "Lip_Top_Ct_world" -p "Lip_Top_Ct_offset_world";
	rename -uid "5B075893-5E44-ABE8-F4C4-ADB223DEFD01";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
createNode joint -n "Lip_Top_Ct_jnt" -p "Lip_Top_Ct_world";
	rename -uid "AB26A7A2-0141-50D1-664D-22BA24848411";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.5 0 1;
createNode transform -n "Lip_Top_Lf_01_offset_world" -p "lips_world_controls";
	rename -uid "02FD3DE1-DC43-6FA8-DAF6-128C9B5A605B";
createNode transform -n "Lip_Top_Lf_01_world" -p "Lip_Top_Lf_01_offset_world";
	rename -uid "0E27504F-FF45-819D-174F-18A4C44C2B0A";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
createNode joint -n "Lip_Top_Lf_01_jnt" -p "Lip_Top_Lf_01_world";
	rename -uid "AEA1E322-9442-6AD9-0614-B198EA4450DC";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1 0.5 0 1;
createNode transform -n "Lip_Top_Lf_02_offset_world" -p "lips_world_controls";
	rename -uid "BC8EA78F-054C-4A14-7F72-E89EF8EBD5EE";
createNode transform -n "Lip_Top_Lf_02_world" -p "Lip_Top_Lf_02_offset_world";
	rename -uid "985EA26C-3D49-E239-BC66-738E0474B985";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
createNode joint -n "Lip_Top_Lf_02_jnt" -p "Lip_Top_Lf_02_world";
	rename -uid "45C250FE-B447-1B2C-14FE-6D91FFDD3D45";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2 0.5 0 1;
createNode transform -n "Lip_Top_Lf_03_offset_world" -p "lips_world_controls";
	rename -uid "2408DFA8-3142-A018-3458-F7B6AA8CCC8F";
createNode transform -n "Lip_Top_Lf_03_world" -p "Lip_Top_Lf_03_offset_world";
	rename -uid "40DEFE4F-2643-EE4B-C482-D1A4F90EE1A3";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
createNode joint -n "Lip_Top_Lf_03_jnt" -p "Lip_Top_Lf_03_world";
	rename -uid "131B54AB-1349-9BEC-45FF-CEA65DA7B907";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3 0.5 0 1;
createNode transform -n "Lip_Top_Lf_04_offset_world" -p "lips_world_controls";
	rename -uid "E6FD444C-5144-C6AB-BC5A-698ACF8FB040";
createNode transform -n "Lip_Top_Lf_04_world" -p "Lip_Top_Lf_04_offset_world";
	rename -uid "15BD79E6-0941-7F48-C758-49A329C784C1";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
createNode joint -n "Lip_Top_Lf_04_jnt" -p "Lip_Top_Lf_04_world";
	rename -uid "B6BAF3FB-7247-DEE9-9A5C-44B57C862EED";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 -1.4210854715202004e-14 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 4 0.5 0 1;
createNode transform -n "Lip_Bot_Rt_04_offset_world" -p "lips_world_controls";
	rename -uid "B9A40B81-4C4B-2442-9AD2-A69B28F58349";
createNode transform -n "Lip_Bot_Rt_04_world" -p "Lip_Bot_Rt_04_offset_world";
	rename -uid "221DC966-2046-FD1C-443B-AC962351A837";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
createNode joint -n "Lip_Bot_Rt_04_jnt" -p "Lip_Bot_Rt_04_world";
	rename -uid "0AAD37D6-C84D-7925-BC00-3A9121C3572E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
createNode transform -n "Lip_Bot_Rt_03_offset_world" -p "lips_world_controls";
	rename -uid "53CB9D7D-A444-4AF6-FCF9-669303F2D4A4";
createNode transform -n "Lip_Bot_Rt_03_world" -p "Lip_Bot_Rt_03_offset_world";
	rename -uid "8D915A00-2447-7704-90D9-3FABC4C8F4DE";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
createNode joint -n "Lip_Bot_Rt_03_jnt" -p "Lip_Bot_Rt_03_world";
	rename -uid "03C8D633-2B42-206B-8ED3-7E9ACFA162A1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
createNode transform -n "Lip_Bot_Rt_02_offset_world" -p "lips_world_controls";
	rename -uid "3014F808-3B4C-C148-5F28-958400F210DA";
createNode transform -n "Lip_Bot_Rt_02_world" -p "Lip_Bot_Rt_02_offset_world";
	rename -uid "4645BF4E-8F4C-AEE1-C528-9DB0A725CEAC";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
createNode joint -n "Lip_Bot_Rt_02_jnt" -p "Lip_Bot_Rt_02_world";
	rename -uid "49F4253E-314C-0DDD-AB10-73A1C528E864";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
createNode transform -n "Lip_Bot_Rt_01_offset_world" -p "lips_world_controls";
	rename -uid "6A734CDF-7240-D2D9-780E-9B971604D8D9";
createNode transform -n "Lip_Bot_Rt_01_world" -p "Lip_Bot_Rt_01_offset_world";
	rename -uid "FC3EBF99-564B-AD5B-46C5-D69038DFC45B";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
createNode joint -n "Lip_Bot_Rt_01_jnt" -p "Lip_Bot_Rt_01_world";
	rename -uid "F47172AC-FE46-DFFE-38C5-539098E600C1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
createNode transform -n "Lip_Bot_Ct_offset_world" -p "lips_world_controls";
	rename -uid "52EBCEE9-3C49-73D6-CF55-BAAA608E8332";
createNode transform -n "Lip_Bot_Ct_world" -p "Lip_Bot_Ct_offset_world";
	rename -uid "81705C1F-1849-6893-1439-94A1D658C25E";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
createNode joint -n "Lip_Bot_Ct_jnt" -p "Lip_Bot_Ct_world";
	rename -uid "1E176C9D-9E49-7247-6750-618AE9A95B1D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
createNode transform -n "Lip_Bot_Lf_01_offset_world" -p "lips_world_controls";
	rename -uid "6EF870DF-0F4F-FDF1-4691-C398E3CFCC72";
createNode transform -n "Lip_Bot_Lf_01_world" -p "Lip_Bot_Lf_01_offset_world";
	rename -uid "EAEAB1AE-E74B-408C-F663-2BB4B33324D3";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
createNode joint -n "Lip_Bot_Lf_01_jnt" -p "Lip_Bot_Lf_01_world";
	rename -uid "9084B8A8-2A4D-5A59-65C0-A39AECDEB32D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
createNode transform -n "Lip_Bot_Lf_02_offset_world" -p "lips_world_controls";
	rename -uid "ECEE9EF6-9140-A196-AE2E-1E98319C6407";
createNode transform -n "Lip_Bot_Lf_02_world" -p "Lip_Bot_Lf_02_offset_world";
	rename -uid "08BAFB16-864A-153D-66F1-C09ED4E0D6ED";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
createNode joint -n "Lip_Bot_Lf_02_jnt" -p "Lip_Bot_Lf_02_world";
	rename -uid "578F1FF1-214E-6A9C-3614-B9B92F8F8A68";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
createNode transform -n "Lip_Bot_Lf_03_offset_world" -p "lips_world_controls";
	rename -uid "54799F4A-3A4E-9D8D-3973-8CA2AEE8F82F";
createNode transform -n "Lip_Bot_Lf_03_world" -p "Lip_Bot_Lf_03_offset_world";
	rename -uid "0304262C-634C-7733-D9D8-8A958702CA57";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
createNode joint -n "Lip_Bot_Lf_03_jnt" -p "Lip_Bot_Lf_03_world";
	rename -uid "D1440CE7-C244-9B30-3493-4E87F9654D41";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
createNode transform -n "Lip_Bot_Lf_04_offset_world" -p "lips_world_controls";
	rename -uid "72E1ACFE-1647-CF78-7D64-88B85C1B43FE";
createNode transform -n "Lip_Bot_Lf_04_world" -p "Lip_Bot_Lf_04_offset_world";
	rename -uid "D9D93085-F84B-E8CD-299B-BBA7F317C2A4";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
createNode joint -n "Lip_Bot_Lf_04_jnt" -p "Lip_Bot_Lf_04_world";
	rename -uid "32D29B09-7E4D-BF66-DBBC-84A86D868E00";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
createNode transform -n "lips_Rt_controls_world" -p "lips_world_controls";
	rename -uid "5CF2A426-8C4A-6F73-A2EE-DBAC1D8E4922";
	setAttr ".s" -type "double3" -1 1 1 ;
createNode transform -n "Lip_Rt_offset_world" -p "lips_Rt_controls_world";
	rename -uid "EA1D80D5-064B-9793-93BC-A68346E97A06";
createNode transform -n "Lip_Rt_world" -p "Lip_Rt_offset_world";
	rename -uid "EA6FD2B7-0341-CA26-A15A-9AA4D29DFBD9";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
createNode transform -n "lips_controls" -p "lips_top";
	rename -uid "A5133600-1744-F9D1-F8B1-00AE1BA0EF1C";
createNode transform -n "Lip_Top_offset" -p "lips_controls";
	rename -uid "75F26D25-9D4F-6E60-E416-0DB034DC552F";
createNode transform -n "Lip_Top" -p "Lip_Top_offset";
	rename -uid "4FF51B2E-F746-6908-00F9-FDA88236D26D";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
	addAttr -s false -ci true -m -sn "world" -ln "world" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 0 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "Lip_Top1Shape" -p "Lip_Top";
	rename -uid "152594B7-924B-1573-BBA0-23BC42D9A2CE";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		0.95329569560381056 -0.82987213722033437 -2.4896164116610269
		0.95329569560381056 -0.82987213722033437 2.4896164116610269
		0.95329569560381056 0.82987213722034969 2.4896164116610269
		0.95329569560381056 0.82987213722034969 -2.4896164116610269
		0.95329569560381056 -0.82987213722033437 -2.4896164116610269
		;
createNode parentConstraint -n "Lip_Top_offset_parentConstraint1" -p "Lip_Top_offset";
	rename -uid "95751FB4-A54A-B6A2-E1D9-0483E7787649";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "jaw_muzzle_top_lip_driverW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 23.699340751738781 -2.2577916261248703 -5.8401652330154282e-14 ;
	setAttr ".tg[0].tor" -type "double3" 2.1956471305451527e-14 2.2410672735760391e-14 
		-25.71334539803642 ;
	setAttr ".lr" -type "double3" 179.99999999999997 -89.999999999999972 0 ;
	setAttr ".rst" -type "double3" 0 68.90303300559809 23.139935646785364 ;
	setAttr ".rsrr" -type "double3" 179.99999999999997 -89.999999999999957 0 ;
	setAttr -k on ".w0";
createNode transform -n "Lip_Bot_offset" -p "lips_controls";
	rename -uid "C94549D1-C542-D91F-B357-1B8CA555C4BE";
createNode transform -n "Lip_Bot" -p "Lip_Bot_offset";
	rename -uid "E01EEEE7-C943-C836-5508-5198D279EB46";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
	addAttr -s false -ci true -m -sn "world" -ln "world" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 0 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "Lip_Bot1Shape" -p "Lip_Bot";
	rename -uid "E3889040-9E41-4B7F-FF73-CCB2F9C35B7D";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		0.96486839738688235 -0.83994651687653188 -2.5198395506296185
		0.96486839738688235 -0.83994651687653188 2.5198395506296185
		0.96486839738688235 0.83994651687654731 2.5198395506296185
		0.96486839738688235 0.83994651687654731 -2.5198395506296185
		0.96486839738688235 -0.83994651687653188 -2.5198395506296185
		;
createNode parentConstraint -n "Lip_Bot_offset_parentConstraint1" -p "Lip_Bot_offset";
	rename -uid "A50C7BD9-0949-529E-6AED-4492AC267EA0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "JawW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 24.567078657149448 -0.45583964909729957 -5.8156722970324711e-14 ;
	setAttr ".tg[0].tor" -type "double3" 2.1956471305451527e-14 2.2410672735760391e-14 
		-25.71334539803642 ;
	setAttr ".lr" -type "double3" 179.99999999999997 -89.999999999999972 0 ;
	setAttr ".rst" -type "double3" -6.3108872417680944e-30 66.903033005598076 23.13993564678535 ;
	setAttr ".rsrr" -type "double3" 179.99999999999997 -89.999999999999957 0 ;
	setAttr -k on ".w0";
createNode transform -n "lips_Lf_controls_group" -p "lips_controls";
	rename -uid "FDC702D1-0B4A-4EA2-4A0C-81B7974B46AC";
createNode transform -n "Lip_Lf_offset" -p "lips_Lf_controls_group";
	rename -uid "0FEA8C27-FB43-48DF-2E29-21A321C27EAF";
	setAttr ".t" -type "double3" 5.3229118559888988 67.890035230504409 19.666695062144822 ;
	setAttr ".r" -type "double3" 0 48.428160018476014 0 ;
	setAttr ".s" -type "double3" 0.43367308365944979 0.43367308365944979 0.43367308365944979 ;
createNode transform -n "Lip_Lf" -p "Lip_Lf_offset";
	rename -uid "A33E14D0-8542-2B15-B469-FB83A1A283F3";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
	addAttr -s false -ci true -m -sn "world" -ln "world" -at "message";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
createNode nurbsCurve -n "Lip_Lf1Shape" -p "Lip_Lf";
	rename -uid "E21CABD0-8C41-D8F1-3223-9E9EDE468CB4";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-4.2212760657754016 6.5548785112489345e-12 1.761520681603074
		1.1471304417829267e-13 4.2212760657820709 1.761520681603074
		4.221276065775629 6.5548785112489345e-12 1.761520681603074
		1.1471304417829267e-13 -4.2212760657689605 1.761520681603074
		-4.2212760657754016 6.5548785112489345e-12 1.761520681603074
		;
createNode transform -n "Lip_Lf_rig" -p "Lip_Lf_offset";
	rename -uid "72347687-3C4F-C841-D6DA-0AA4F2BDFD6E";
	setAttr ".t" -type "double3" 0 -2.8421709430404007e-14 -7.1054273576010019e-15 ;
	setAttr ".s" -type "double3" 2.305884403896437 2.3058844038964366 2.305884403896437 ;
createNode transform -n "Corner_Lf_Up_rig" -p "Lip_Lf_offset";
	rename -uid "84CF6FC7-D446-50A5-3D0D-468ABBD52DAC";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 9.9999999999999716 7.1054273576010019e-15 ;
	setAttr ".s" -type "double3" 2.305884403896437 2.3058844038964366 2.305884403896437 ;
createNode transform -n "Lf_driver_group" -p "lips_Lf_controls_group";
	rename -uid "15AA8FBD-0F47-EE6A-0471-37B512E0E744";
createNode transform -n "Corner_Driver_Lf_rig" -p "Lf_driver_group";
	rename -uid "4DE8DE02-CC41-AA9C-A260-53BAA8BAE0F3";
	setAttr ".t" -type "double3" 0.28741001071089833 -0.7977763411639387 1.378506243861441 ;
createNode transform -n "Corner_Driver_Lf_Up_rig" -p "Lf_driver_group";
	rename -uid "DF21250B-1D40-3E24-C897-C18687356995";
	setAttr ".t" -type "double3" 0 4.4248597720542051 0 ;
createNode transform -n "Corner_Driver_Lf_Dn_rig" -p "Lf_driver_group";
	rename -uid "D3771D70-9841-4AA2-8D18-0DA203E67BBB";
	setAttr ".t" -type "double3" 0 -3.522902464319003 -0.51538619277015663 ;
createNode transform -n "Corner_Driver_Lf_In_rig" -p "Lf_driver_group";
	rename -uid "13484691-8A41-C51B-AF11-7591DD4780DA";
	setAttr ".t" -type "double3" -3.1072525095297507 -1.4210854715202004e-14 -0.92451868744181809 ;
	setAttr ".r" -type "double3" 0 -28.531580302177037 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "Corner_Driver_Lf_Ot_rig" -p "Lf_driver_group";
	rename -uid "2D067168-9E48-C0C7-204D-43AFCB4669A9";
	setAttr ".t" -type "double3" 4.6681247830244024 0 -1.7763568394002505e-15 ;
createNode transform -n "Corner_Driver_Lf_inUp_rig" -p "Lf_driver_group";
	rename -uid "1A60491F-4D4E-E4E3-9658-51AFB2CA26A6";
	setAttr ".t" -type "double3" -2.0782554149374484 3.6227361412963432 -0.36508426711134234 ;
	setAttr ".r" -type "double3" 0 -28.531580302177037 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "Corner_Driver_Lf_otUp_rig" -p "Lf_driver_group";
	rename -uid "77A67F81-4948-89E4-4CB6-9FA7AA182453";
	setAttr ".t" -type "double3" 4.6681247830244024 4.4248597720542051 -1.7763568394002505e-15 ;
createNode transform -n "Corner_Driver_Lf_inDn_rig" -p "Lf_driver_group";
	rename -uid "D28F5444-C54E-ECBF-5CB5-79AC7AD921C0";
	setAttr ".t" -type "double3" -2.3840994358602892 -3.1756156180883437 -1.1179924403676456 ;
	setAttr ".r" -type "double3" 0 -28.531580302177037 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "Corner_Driver_Lf_otDn_rig" -p "Lf_driver_group";
	rename -uid "5647BE0A-EC4F-4165-0237-2099C77EF206";
	setAttr ".t" -type "double3" 4.0435090510608109 -2.8887769328223243 -0.51538619277015663 ;
createNode transform -n "Corner_Driver_Lf_otDn_rig1" -p "Lf_driver_group";
	rename -uid "146A6F8B-0447-B55B-5E88-2E8841B73DAA";
createNode parentConstraint -n "Lf_driver_group_parentConstraint1" -p "Lf_driver_group";
	rename -uid "FAB0C82A-C946-B93D-09B5-C595BD3C3811";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "jaw_muzzle_corner_driverW0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 20.032996867785329 0.63208622797554881 4.1009043222801465 ;
	setAttr ".tg[0].tor" -type "double3" -3.8727762509432326e-14 -41.571839981524029 
		154.28665460196362 ;
	setAttr ".lr" -type "double3" 7.4922671984692409e-14 48.428160018475999 1.5384991140539714e-14 ;
	setAttr ".rst" -type "double3" 4.1009043222802033 67.890035230504395 18.582819563704067 ;
	setAttr ".rsrr" -type "double3" 2.9132136237690422e-14 48.428160018476014 -6.9513066981597085e-15 ;
	setAttr -k on ".w0";
createNode transform -n "Lip_Top_Rt_04_offset" -p "lips_controls";
	rename -uid "88698A54-F842-5478-7660-06BCB3EC29C9";
createNode transform -n "Lip_Top_Rt_04" -p "Lip_Top_Rt_04_offset";
	rename -uid "6E1F6B91-7140-6CEF-678A-83A4DE91BD75";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
	addAttr -s false -ci true -m -sn "world" -ln "world" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 1.4210854715202004e-14 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode parentConstraint -n "Lip_Top_Rt_04_offset_parentConstraint1" -p "Lip_Top_Rt_04_offset";
	rename -uid "8C835AE9-784C-DF8B-1CD2-B985BD6AE968";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Lip_TopW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "Corner_Driver_Rt_otDn_rig1W1" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -4.6904894745413621 0.62427813371924401 -4.1119337739942816 ;
	setAttr ".tg[0].tor" -type "double3" -180 -32.739285319366367 -4.5114442438549856e-15 ;
	setAttr ".tg[1].tot" -type "double3" 0.10709856400233342 0.38871964137443626 -0.080249660082214902 ;
	setAttr ".tg[1].tor" -type "double3" 180 8.832554662157607 -1.0903266915920885e-15 ;
	setAttr ".lr" -type "double3" 1.5924805690633696e-15 -57.260714680633619 -1.992164574717075e-15 ;
	setAttr ".rst" -type "double3" -4.1119337739942825 68.278754871878846 18.449446172244002 ;
	setAttr ".rsrr" -type "double3" 4.3045949337991193e-15 -57.260714680633612 -4.5044369366259717e-15 ;
	setAttr -k on ".w0" 0;
	setAttr -k on ".w1";
createNode transform -n "Lip_Top_Rt_03_offset" -p "lips_controls";
	rename -uid "0AE95634-3E42-61AD-8782-07ADC70174FB";
createNode transform -n "Lip_Top_Rt_03" -p "Lip_Top_Rt_03_offset";
	rename -uid "A1C79E24-4A43-133B-4D7D-E9A984C7663F";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
	addAttr -s false -ci true -m -sn "world" -ln "world" -at "message";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode parentConstraint -n "Lip_Top_Rt_03_offset_parentConstraint1" -p "Lip_Top_Rt_03_offset";
	rename -uid "799DF4D4-FA43-1A0E-7386-84ABAB8EEEA3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Lip_TopW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "Corner_Driver_Rt_otDn_rig1W1" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -4.0827963089117425 0.35998734422447853 -3.6609231408431389 ;
	setAttr ".tg[0].tor" -type "double3" -180 -47.006225004551851 -7.5261387086109894e-15 ;
	setAttr ".tg[1].tot" -type "double3" -0.64680345093364267 0.65301043086920174 -0.014421652032345023 ;
	setAttr ".tg[1].tor" -type "double3" 180 -5.4343850230278727 6.6752313138400812e-16 ;
	setAttr ".lr" -type "double3" 8.5985124756180511e-16 -42.993774995448135 -5.6669392040302066e-15 ;
	setAttr ".rst" -type "double3" -3.6609231408431406 68.543045661373611 19.057139337873618 ;
	setAttr ".rsrr" -type "double3" 3.1828143814284738e-15 -42.993774995448135 -3.0540905197978222e-15 ;
	setAttr -k on ".w0" 0.19704919095436457;
	setAttr -k on ".w1" 0.80295080904563543;
createNode transform -n "Lip_Top_Rt_02_offset" -p "lips_controls";
	rename -uid "24EC0E47-604A-EC17-14B8-FDB4B2768E88";
createNode transform -n "Lip_Top_Rt_02" -p "Lip_Top_Rt_02_offset";
	rename -uid "9502548E-C242-36FE-242D-7289E84A1959";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
	addAttr -s false -ci true -m -sn "world" -ln "world" -at "message";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode parentConstraint -n "Lip_Top_Rt_02_offset_parentConstraint1" -p "Lip_Top_Rt_02_offset";
	rename -uid "C0C4024E-0746-3139-1B53-C9944FC6CAF7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Lip_TopW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "Corner_Driver_Rt_otDn_rig1W1" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -3.1749976048337167 0.17579487121516024 -2.7412488696010371 ;
	setAttr ".tg[0].tor" -type "double3" -179.99999999999997 -59.034227562709333 -1.1693582905093772e-14 ;
	setAttr ".tg[1].tot" -type "double3" -1.9362075027254857 0.83720290387852003 -0.10007469361998744 ;
	setAttr ".tg[1].tor" -type "double3" 180 -17.462387581185364 2.207296881193784e-15 ;
	setAttr ".lr" -type "double3" 2.0707344051499133e-14 -30.965772437290642 -2.0407445513065118e-14 ;
	setAttr ".rst" -type "double3" -2.741248869601038 68.72723813438293 19.964938041951644 ;
	setAttr ".rsrr" -type "double3" 1.5437165963853892e-14 -30.965772437290653 -2.2805799879257207e-15 ;
	setAttr -k on ".w0" 0.65478689014554181;
	setAttr -k on ".w1" 0.34521310985445819;
createNode transform -n "Lip_Top_Rt_01_offset" -p "lips_controls";
	rename -uid "FC7CD532-9648-65F4-430C-239BA7DEDBAB";
createNode transform -n "Lip_Top_Rt_01" -p "Lip_Top_Rt_01_offset";
	rename -uid "B37CEEAE-AF45-C1A2-5DBD-B3830382CDFE";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
	addAttr -s false -ci true -m -sn "world" -ln "world" -at "message";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode parentConstraint -n "Lip_Top_Rt_01_offset_parentConstraint1" -p "Lip_Top_Rt_01_offset";
	rename -uid "545DF0AF-204B-AAB8-9905-94950EE7E2BC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Lip_TopW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "Corner_Driver_Rt_otDn_rig1W1" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -2.6274932346623672 -0.0072926558225105964 
		-1.4964845845443502 ;
	setAttr ".tg[0].tor" -type "double3" -180 -89.999999999999972 0 ;
	setAttr ".tg[1].tot" -type "double3" -3.1717828793127456 1.0202904309161909 -0.66801188159121239 ;
	setAttr ".tg[1].tor" -type "double3" 180 -48.428160018476014 7.91093777559193e-15 ;
	setAttr ".lr" -type "double3" 7.016709298534861e-15 1.9876719732168762e-30 -3.2461146750243012e-14 ;
	setAttr ".rst" -type "double3" -1.4964845845443513 68.9103256614206 20.512442412122994 ;
	setAttr ".rsrr" -type "double3" 2.3279989025448887e-15 -6.3611093629270335e-15 -8.836692481600522e-16 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1" 0;
createNode transform -n "Lip_Top_Ct_offset" -p "lips_controls";
	rename -uid "CEDA3957-DD48-E26F-7847-FDB926FA9F2B";
createNode transform -n "Lip_Top_Ct" -p "Lip_Top_Ct_offset";
	rename -uid "AB14D268-FE40-E4A9-7B53-56A88C273E34";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
	addAttr -s false -ci true -m -sn "world" -ln "world" -at "message";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode parentConstraint -n "Lip_Top_Ct_offset_parentConstraint1" -p "Lip_Top_Ct_offset";
	rename -uid "9FC7A433-E14D-D4F8-0937-2CAA2B4B3A13";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Lip_TopW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.4124941891452316 -0.0072926558225105964 
		5.3478822635165526e-16 ;
	setAttr ".tg[0].tor" -type "double3" -180 -89.999999999999972 0 ;
	setAttr ".lr" -type "double3" 7.016709298534861e-15 1.9876719732168762e-30 -3.2461146750243012e-14 ;
	setAttr ".rst" -type "double3" 1.5777218104420236e-30 68.9103256614206 20.727441457640129 ;
	setAttr ".rsrr" -type "double3" 7.0167092985348752e-15 -1.2722218725854067e-14 -7.016709298534876e-15 ;
	setAttr -k on ".w0";
createNode transform -n "Lip_Top_Lf_01_offset" -p "lips_controls";
	rename -uid "446FFA6C-3C4B-6B17-4A11-D2AD8656E722";
createNode transform -n "Lip_Top_Lf_01" -p "Lip_Top_Lf_01_offset";
	rename -uid "CD8B6371-694D-C03D-862C-82B1756D5458";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
	addAttr -s false -ci true -m -sn "world" -ln "world" -at "message";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode parentConstraint -n "Lip_Top_Lf_01_offset_parentConstraint1" -p "Lip_Top_Lf_01_offset";
	rename -uid "76C81096-8548-84C2-6332-20A32F0106D8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Lip_TopW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "Corner_Driver_Lf_otDn_rig1W1" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -2.6274932346623672 -0.0072926558225105964 
		1.4964845845443511 ;
	setAttr ".tg[0].tor" -type "double3" -180 -89.999999999999972 0 ;
	setAttr ".tg[1].tot" -type "double3" -3.1717828793127456 1.0202904309161909 -0.66801188159121239 ;
	setAttr ".tg[1].tor" -type "double3" 0 -48.428160018476014 0 ;
	setAttr ".lr" -type "double3" 7.016709298534861e-15 1.9876719732168762e-30 -3.2461146750243012e-14 ;
	setAttr ".rst" -type "double3" 1.4964845845443508 68.9103256614206 20.512442412122994 ;
	setAttr ".rsrr" -type "double3" 3.5083546492674368e-15 -6.3611093629270335e-15 -3.5083546492674376e-15 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1" 0;
createNode transform -n "Lip_Top_Lf_02_offset" -p "lips_controls";
	rename -uid "25983A53-FA48-ED85-F182-A891FE019E46";
createNode transform -n "Lip_Top_Lf_02" -p "Lip_Top_Lf_02_offset";
	rename -uid "24B14DB0-8D48-DD87-19EA-CDB8667B16E2";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
	addAttr -s false -ci true -m -sn "world" -ln "world" -at "message";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode parentConstraint -n "Lip_Top_Lf_02_offset_parentConstraint1" -p "Lip_Top_Lf_02_offset";
	rename -uid "B531AACF-DA47-4428-CA32-1C89B4A9BF33";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Lip_TopW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "Corner_Driver_Lf_otDn_rig1W1" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -3.1749976048337167 0.17579487121516024 2.7412488696010389 ;
	setAttr ".tg[0].tor" -type "double3" -1.3637231776957064e-14 -59.034227562709368 
		-180 ;
	setAttr ".tg[1].tot" -type "double3" -1.9362075027254857 0.83720290387852003 -0.10007469361998744 ;
	setAttr ".tg[1].tor" -type "double3" 0 -17.462387581185368 0 ;
	setAttr ".lr" -type "double3" 5.3581156402939426e-15 30.965772437290653 -1.8498243923476605e-14 ;
	setAttr ".rst" -type "double3" 2.741248869601038 68.72723813438293 19.96493804195164 ;
	setAttr ".rsrr" -type "double3" 4.0914958140831009e-15 30.965772437290646 -1.4031739796756109e-15 ;
	setAttr -k on ".w0" 0.65478689014554181;
	setAttr -k on ".w1" 0.34521310985445819;
createNode transform -n "Lip_Top_Lf_03_offset" -p "lips_controls";
	rename -uid "E83CB5CF-8E44-2E2A-A7F1-60BFF79F0092";
createNode transform -n "Lip_Top_Lf_03" -p "Lip_Top_Lf_03_offset";
	rename -uid "AFF83E27-A34F-C2F4-D7D5-CEADC5F1E1F2";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
	addAttr -s false -ci true -m -sn "world" -ln "world" -at "message";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode parentConstraint -n "Lip_Top_Lf_03_offset_parentConstraint1" -p "Lip_Top_Lf_03_offset";
	rename -uid "5FDFBC1D-9144-9C41-4225-A89EB864AA3B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Lip_TopW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "Corner_Driver_Lf_otDn_rig1W1" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -4.0827963089117425 0.35998734422447853 3.6609231408431406 ;
	setAttr ".tg[0].tor" -type "double3" -1.0289653698808265e-14 -47.006225004551887 
		-180 ;
	setAttr ".tg[1].tot" -type "double3" -0.64680345093364267 0.65301043086920174 -0.014421652032345023 ;
	setAttr ".tg[1].tor" -type "double3" 0 -5.434385023027879 0 ;
	setAttr ".lr" -type "double3" 1.8903258821856721e-15 42.993774995448121 -5.107393764452415e-15 ;
	setAttr ".rst" -type "double3" 3.6609231408431406 68.543045661373611 19.057139337873615 ;
	setAttr ".rsrr" -type "double3" 4.7965837185889894e-15 42.993774995448135 -2.3747357157651701e-16 ;
	setAttr -k on ".w0" 0.19704919095436457;
	setAttr -k on ".w1" 0.80295080904563543;
createNode transform -n "Lip_Top_Lf_04_offset" -p "lips_controls";
	rename -uid "A4075310-5B45-3793-F1AF-A5AE130D0602";
createNode transform -n "Lip_Top_Lf_04" -p "Lip_Top_Lf_04_offset";
	rename -uid "2E470720-6048-660A-152B-9D99AF6606EC";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
	addAttr -s false -ci true -m -sn "world" -ln "world" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 1.4210854715202004e-14 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode parentConstraint -n "Lip_Top_Lf_04_offset_parentConstraint1" -p "Lip_Top_Lf_04_offset";
	rename -uid "E0695129-784A-361C-7916-3581C608228F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Lip_TopW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "Corner_Driver_Lf_otDn_rig1W1" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -4.690489474541355 0.62427813371924401 4.1119337739942834 ;
	setAttr ".tg[0].tor" -type "double3" -8.3419025734875466e-15 -32.73928531936641 
		-180 ;
	setAttr ".tg[1].tot" -type "double3" 0.10709856400233342 0.38871964137443626 -0.080249660082214902 ;
	setAttr ".tg[1].tor" -type "double3" 0 8.8325546621576017 0 ;
	setAttr ".lr" -type "double3" 0 57.260714680633605 0 ;
	setAttr ".rst" -type "double3" 4.1119337739942825 68.278754871878846 18.449446172244002 ;
	setAttr ".rsrr" -type "double3" 6.487136068963846e-15 57.260714680633619 1.9482360475152378e-15 ;
	setAttr -k on ".w0" 0;
	setAttr -k on ".w1";
createNode transform -n "Lip_Bot_Rt_04_offset" -p "lips_controls";
	rename -uid "A23D8638-E948-E046-9710-108BC94BB72C";
createNode transform -n "Lip_Bot_Rt_04" -p "Lip_Bot_Rt_04_offset";
	rename -uid "C7E5A905-3040-F490-1722-EDB3CF710F56";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
	addAttr -s false -ci true -m -sn "world" -ln "world" -at "message";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode parentConstraint -n "Lip_Bot_Rt_04_offset_parentConstraint1" -p "Lip_Bot_Rt_04_offset";
	rename -uid "3D0C4223-C44A-F98B-F9C9-C0B285A79CA3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Lip_BotW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "Corner_Driver_Rt_otDn_rig1W1" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -4.9870210960101602 -0.59931747805875091 -4.0372663176211798 ;
	setAttr ".tg[0].tor" -type "double3" -180 -32.739285319366367 -4.5114442438549856e-15 ;
	setAttr ".tg[1].tot" -type "double3" 0.27939484581343166 -0.38768474684756882 -0.33287630722422712 ;
	setAttr ".tg[1].tor" -type "double3" 180 8.832554662157607 -1.0903266915920885e-15 ;
	setAttr ".lr" -type "double3" 1.5924805690633696e-15 -57.260714680633619 -1.992164574717075e-15 ;
	setAttr ".rst" -type "double3" -4.0372663176211816 67.502350483656841 18.152914550775201 ;
	setAttr ".rsrr" -type "double3" 4.3045949337991193e-15 -57.260714680633612 -4.5044369366259717e-15 ;
	setAttr -k on ".w0" 0;
	setAttr -k on ".w1";
createNode transform -n "Lip_Bot_Rt_03_offset" -p "lips_controls";
	rename -uid "360705D5-C84D-F0E7-7DBE-6AAD8E6DCCF3";
createNode transform -n "Lip_Bot_Rt_03" -p "Lip_Bot_Rt_03_offset";
	rename -uid "3F39F24E-FF4E-6DEE-6D18-C9A47786CB6A";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
	addAttr -s false -ci true -m -sn "world" -ln "world" -at "message";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode parentConstraint -n "Lip_Bot_Rt_03_offset_parentConstraint1" -p "Lip_Bot_Rt_03_offset";
	rename -uid "FCAE29A3-8245-D985-77DB-CD9372BE86CD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Lip_BotW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "Corner_Driver_Rt_otDn_rig1W1" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -4.388203232752538 -0.44334164238229334 -3.5598851024617284 ;
	setAttr ".tg[0].tor" -type "double3" -180 -47.006225004551851 -7.5261387086109894e-15 ;
	setAttr ".tg[1].tot" -type "double3" -0.48536576616220728 -0.54366058252402638 -0.29266605586735395 ;
	setAttr ".tg[1].tor" -type "double3" 180 -5.4343850230278727 6.6752313138400812e-16 ;
	setAttr ".lr" -type "double3" 9.8206106861143168e-16 -42.993774995448135 -6.1987876374810491e-15 ;
	setAttr ".rst" -type "double3" -3.5598851024617297 67.346374647980383 18.751732414032823 ;
	setAttr ".rsrr" -type "double3" 3.1828143814284738e-15 -42.993774995448135 -3.0540905197978222e-15 ;
	setAttr -k on ".w0" 0.21298726746558305;
	setAttr -k on ".w1" 0.78701273253441695;
createNode transform -n "Lip_Bot_Rt_02_offset" -p "lips_controls";
	rename -uid "673CCAE9-C741-B2D8-D4DD-2B8DA65DF7BC";
createNode transform -n "Lip_Bot_Rt_02" -p "Lip_Bot_Rt_02_offset";
	rename -uid "5E3EB6B8-3C4B-3A0F-78B7-4D9D46F3D7BA";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
	addAttr -s false -ci true -m -sn "world" -ln "world" -at "message";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode parentConstraint -n "Lip_Bot_Rt_02_offset_parentConstraint1" -p "Lip_Bot_Rt_02_offset";
	rename -uid "137E7B97-2541-1E6A-59C9-E08176F6325E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Lip_BotW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "Corner_Driver_Rt_otDn_rig1W1" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -3.6812329868578075 -0.33122095364565496 -2.5324393764244335 ;
	setAttr ".tg[0].tor" -type "double3" -179.99999999999997 -59.034227562709333 -1.1693582905093772e-14 ;
	setAttr ".tg[1].tot" -type "double3" -1.6960378420150146 -0.65578127126066477 -0.59220699344185945 ;
	setAttr ".tg[1].tor" -type "double3" 180 -17.462387581185364 2.207296881193784e-15 ;
	setAttr ".lr" -type "double3" 2.3104520775375477e-14 -30.965772437290642 -2.28657862546032e-14 ;
	setAttr ".rst" -type "double3" -2.5324393764244344 67.234253959243745 19.458702659927553 ;
	setAttr ".rsrr" -type "double3" 1.5437165963853892e-14 -30.965772437290653 -2.2805799879257207e-15 ;
	setAttr -k on ".w0" 0.72519277094261492;
	setAttr -k on ".w1" 0.27480722905738508;
createNode transform -n "Lip_Bot_Rt_01_offset" -p "lips_controls";
	rename -uid "0E62C401-2241-04AC-F770-27B41D58325D";
createNode transform -n "Lip_Bot_Rt_01" -p "Lip_Bot_Rt_01_offset";
	rename -uid "E1A6C900-564D-3BA6-0AC5-69BBE0D09EE3";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
	addAttr -s false -ci true -m -sn "world" -ln "world" -at "message";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode parentConstraint -n "Lip_Bot_Rt_01_offset_parentConstraint1" -p "Lip_Bot_Rt_01_offset";
	rename -uid "DBF65506-7C49-3ED3-F110-7BA11D0DD7DB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Lip_BotW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "Corner_Driver_Rt_otDn_rig1W1" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -3.3022443828702812 -0.21017997027625768 -1.4578602670658392 ;
	setAttr ".tg[0].tor" -type "double3" -180 -89.999999999999972 0 ;
	setAttr ".tg[1].tot" -type "double3" -2.6926146402262958 -0.77682225463006205 -1.1446446003164059 ;
	setAttr ".tg[1].tor" -type "double3" 180 -48.428160018476014 7.91093777559193e-15 ;
	setAttr ".lr" -type "double3" 7.016709298534861e-15 1.9876719732168762e-30 -3.2461146750243012e-14 ;
	setAttr ".rst" -type "double3" -1.4578602670658403 67.113212975874347 19.83769126391508 ;
	setAttr ".rsrr" -type "double3" 2.3279989025448887e-15 -6.3611093629270335e-15 -8.836692481600522e-16 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1" 0;
createNode transform -n "Lip_Bot_Ct_offset" -p "lips_controls";
	rename -uid "FD34D545-014C-07B5-C4C2-35B95DAC7F0B";
createNode transform -n "Lip_Bot_Ct" -p "Lip_Bot_Ct_offset";
	rename -uid "A2277C23-9848-D634-EB0C-929078B8D027";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
	addAttr -s false -ci true -m -sn "world" -ln "world" -at "message";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode parentConstraint -n "Lip_Bot_Ct_offset_parentConstraint1" -p "Lip_Bot_Ct_offset";
	rename -uid "85A262B6-E244-D434-861B-E09C674DAC31";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Lip_BotW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.2398011795227291 -0.21017997027625768 6.9364075015840231e-16 ;
	setAttr ".tg[0].tor" -type "double3" -180 -89.999999999999972 0 ;
	setAttr ".lr" -type "double3" 7.016709298534861e-15 1.9876719732168762e-30 -3.2461146750243012e-14 ;
	setAttr ".rst" -type "double3" -9.8607613152626476e-31 67.113212975874347 19.900134467262632 ;
	setAttr ".rsrr" -type "double3" 7.0167092985348752e-15 -1.2722218725854067e-14 -7.016709298534876e-15 ;
	setAttr -k on ".w0";
createNode transform -n "Lip_Bot_Lf_01_offset" -p "lips_controls";
	rename -uid "E6A237B2-C34F-F5C8-F602-F7B7DD8EDF56";
createNode transform -n "Lip_Bot_Lf_01" -p "Lip_Bot_Lf_01_offset";
	rename -uid "DFE2C276-C049-F7AB-874F-449F895DCA72";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
	addAttr -s false -ci true -m -sn "world" -ln "world" -at "message";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode parentConstraint -n "Lip_Bot_Lf_01_offset_parentConstraint1" -p "Lip_Bot_Lf_01_offset";
	rename -uid "2CB61F1B-F74E-21F1-993F-45BFF251BF5D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Lip_BotW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "Corner_Driver_Lf_otDn_rig1W1" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -3.3022443828702812 -0.21017997027625768 1.4578602670658405 ;
	setAttr ".tg[0].tor" -type "double3" -180 -89.999999999999972 0 ;
	setAttr ".tg[1].tot" -type "double3" -2.6926146402262958 -0.77682225463006205 -1.1446446003164059 ;
	setAttr ".tg[1].tor" -type "double3" 0 -48.428160018476014 0 ;
	setAttr ".lr" -type "double3" 7.016709298534861e-15 1.9876719732168762e-30 -3.2461146750243012e-14 ;
	setAttr ".rst" -type "double3" 1.4578602670658403 67.113212975874347 19.83769126391508 ;
	setAttr ".rsrr" -type "double3" 3.5083546492674368e-15 -6.3611093629270335e-15 -3.5083546492674376e-15 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1" 0;
createNode transform -n "Lip_Bot_Lf_02_offset" -p "lips_controls";
	rename -uid "F18F997B-9444-EA3F-EBDC-95AE9AD23FA1";
createNode transform -n "Lip_Bot_Lf_02" -p "Lip_Bot_Lf_02_offset";
	rename -uid "4503E9EB-0444-E0B3-157D-F5B3532271F2";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
	addAttr -s false -ci true -m -sn "world" -ln "world" -at "message";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode parentConstraint -n "Lip_Bot_Lf_02_offset_parentConstraint1" -p "Lip_Bot_Lf_02_offset";
	rename -uid "32F9BB06-D042-B2A1-5608-F3B8AF80C5BB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Lip_BotW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "Corner_Driver_Lf_otDn_rig1W1" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -3.6812329868578075 -0.33122095364565496 2.5324393764244344 ;
	setAttr ".tg[0].tor" -type "double3" -1.3637231776957064e-14 -59.034227562709368 
		-180 ;
	setAttr ".tg[1].tot" -type "double3" -1.6960378420150146 -0.65578127126066477 -0.59220699344185945 ;
	setAttr ".tg[1].tor" -type "double3" 0 -17.462387581185368 0 ;
	setAttr ".lr" -type "double3" 5.9342463734300591e-15 30.965772437290653 -2.0487265353551343e-14 ;
	setAttr ".rst" -type "double3" 2.532439376424434 67.234253959243745 19.458702659927553 ;
	setAttr ".rsrr" -type "double3" 4.0914958140831009e-15 30.965772437290646 -1.4031739796756109e-15 ;
	setAttr -k on ".w0" 0.72519277094261492;
	setAttr -k on ".w1" 0.27480722905738508;
createNode transform -n "Lip_Bot_Lf_03_offset" -p "lips_controls";
	rename -uid "89D981E5-6442-AFBF-5D45-F2B6CD256A34";
createNode transform -n "Lip_Bot_Lf_03" -p "Lip_Bot_Lf_03_offset";
	rename -uid "BA5A5211-E642-0FD2-3874-AAAC55931451";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
	addAttr -s false -ci true -m -sn "world" -ln "world" -at "message";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode parentConstraint -n "Lip_Bot_Lf_03_offset_parentConstraint1" -p "Lip_Bot_Lf_03_offset";
	rename -uid "FA691693-7D45-4F48-C366-A7A25A062F82";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Lip_BotW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "Corner_Driver_Lf_otDn_rig1W1" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -4.388203232752538 -0.44334164238229334 3.5598851024617302 ;
	setAttr ".tg[0].tor" -type "double3" -1.0289653698808265e-14 -47.006225004551887 
		-180 ;
	setAttr ".tg[1].tot" -type "double3" -0.48536576616220728 -0.54366058252402638 -0.29266605586735395 ;
	setAttr ".tg[1].tor" -type "double3" 0 -5.434385023027879 0 ;
	setAttr ".lr" -type "double3" 2.0432225187843449e-15 42.993774995448121 -5.5204988992490106e-15 ;
	setAttr ".rst" -type "double3" 3.5598851024617297 67.346374647980383 18.751732414032823 ;
	setAttr ".rsrr" -type "double3" 4.7965837185889894e-15 42.993774995448135 -2.3747357157651701e-16 ;
	setAttr -k on ".w0" 0.21298726746558305;
	setAttr -k on ".w1" 0.78701273253441695;
createNode transform -n "Lip_Bot_Lf_04_offset" -p "lips_controls";
	rename -uid "D0F0B087-0D46-7AED-4555-3CA013A58F2A";
createNode transform -n "Lip_Bot_Lf_04" -p "Lip_Bot_Lf_04_offset";
	rename -uid "1E455B79-8745-1095-EE46-4DBF8883879E";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
	addAttr -s false -ci true -m -sn "world" -ln "world" -at "message";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode parentConstraint -n "Lip_Bot_Lf_04_offset_parentConstraint1" -p "Lip_Bot_Lf_04_offset";
	rename -uid "718BA8C9-6F44-4889-1444-1E911A0E9D97";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Lip_BotW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "Corner_Driver_Lf_otDn_rig1W1" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -4.9870210960101566 -0.59931747805875091 4.0372663176211816 ;
	setAttr ".tg[0].tor" -type "double3" -8.3419025734875466e-15 -32.73928531936641 
		-180 ;
	setAttr ".tg[1].tot" -type "double3" 0.27939484581343166 -0.38768474684756882 -0.33287630722422712 ;
	setAttr ".tg[1].tor" -type "double3" 0 8.8325546621576017 0 ;
	setAttr ".lr" -type "double3" 0 57.260714680633605 0 ;
	setAttr ".rst" -type "double3" 4.0372663176211816 67.502350483656841 18.152914550775201 ;
	setAttr ".rsrr" -type "double3" 6.487136068963846e-15 57.260714680633619 1.9482360475152378e-15 ;
	setAttr -k on ".w0" 0;
	setAttr -k on ".w1";
createNode transform -n "lips_Rt_controls_group" -p "lips_controls";
	rename -uid "E8EB6DCD-354F-4E7D-EDEC-5085B8190555";
	setAttr ".s" -type "double3" -1 1 1 ;
createNode transform -n "Lip_Rt_offset" -p "lips_Rt_controls_group";
	rename -uid "B72DB7D6-C04C-DE1D-CCC5-C08A93778567";
	setAttr ".t" -type "double3" 5.3229118559888988 67.890035230504409 19.666695062144822 ;
	setAttr ".r" -type "double3" 0 48.428160018476014 0 ;
	setAttr ".s" -type "double3" 0.43367308365944979 0.43367308365944979 0.43367308365944979 ;
createNode transform -n "Lip_Rt" -p "Lip_Rt_offset";
	rename -uid "8D2BBACD-8041-DC2F-6C5D-9FBB0B5C91AF";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
	addAttr -s false -ci true -m -sn "world" -ln "world" -at "message";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
createNode nurbsCurve -n "Lip_RtShape" -p "Lip_Rt";
	rename -uid "D394AA0E-2948-04CC-6544-AA9EE17E7C02";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-4.221276065775406 6.5654148784233257e-12 1.7615206816030806
		1.1368683772161603e-13 4.2212760657820922 1.7615206816030735
		4.2212760657756192 6.5654148784233257e-12 1.7615206816030806
		1.1368683772161603e-13 -4.221276065768933 1.7615206816030735
		-4.221276065775406 6.5654148784233257e-12 1.7615206816030806
		;
createNode transform -n "Lip_Rt_rig" -p "Lip_Rt_offset";
	rename -uid "8CDCF7AB-F445-6160-CAA3-7DB6447700E0";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 2.8421709430404007e-14 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 360 -6.3611093629270335e-15 5.2493708022147706e-15 ;
	setAttr ".s" -type "double3" 2.305884403896437 2.305884403896437 2.3058844038964366 ;
createNode transform -n "Corner_Rt_Up_rig" -p "Lip_Rt_offset";
	rename -uid "5D313B17-C043-A67E-3B94-269F3A688CD4";
	setAttr ".t" -type "double3" -1.0658141036401503e-14 10.000000000000028 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 360 -6.3611093629270335e-15 5.2493708022147706e-15 ;
	setAttr ".s" -type "double3" 2.305884403896437 2.305884403896437 2.3058844038964366 ;
createNode transform -n "Rt_driver_group" -p "lips_Rt_controls_group";
	rename -uid "E7361E11-BF4A-0930-8FF5-768CE306F1B4";
createNode transform -n "Corner_Driver_Rt_rig" -p "Rt_driver_group";
	rename -uid "95BC1763-C044-ACB6-959D-2A84D52769C2";
	setAttr ".t" -type "double3" 0.28741001071090189 -0.79777634116392449 1.3785062438614393 ;
createNode transform -n "Corner_Driver_Rt_Up_rig" -p "Rt_driver_group";
	rename -uid "CB438717-7D49-FFAC-3CAC-3AAE1F3EC4E7";
	setAttr ".t" -type "double3" 0 4.4248597720542051 0 ;
createNode transform -n "Corner_Driver_Rt_Dn_rig" -p "Rt_driver_group";
	rename -uid "10273AE7-9644-7185-2338-729DC7007CC3";
	setAttr ".t" -type "double3" 0 -3.522902464319003 -0.51538619277015663 ;
createNode transform -n "Corner_Driver_Rt_In_rig" -p "Rt_driver_group";
	rename -uid "5DE826D8-274A-0B8F-3C2F-0884BC4931DC";
	setAttr ".t" -type "double3" -3.1072525095297507 -1.4210854715202004e-14 -0.92451868744181809 ;
	setAttr ".r" -type "double3" 0 -28.531580302177037 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "Corner_Driver_Rt_Ot_rig" -p "Rt_driver_group";
	rename -uid "7A343042-F74D-CE28-5D44-50BB3AFA2641";
	setAttr ".t" -type "double3" 4.6681247830244024 0 -1.7763568394002505e-15 ;
createNode transform -n "Corner_Driver_Rt_inUp_rig" -p "Rt_driver_group";
	rename -uid "C853AD99-6249-9E2E-8B80-818FB1A7E9DA";
	setAttr ".t" -type "double3" -2.0782554149374484 3.6227361412963432 -0.36508426711134234 ;
	setAttr ".r" -type "double3" 0 -28.531580302177037 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "Corner_Driver_Rt_otUp_rig" -p "Rt_driver_group";
	rename -uid "5D1608F8-D64F-9FFF-94F6-5C837513FFAE";
	setAttr ".t" -type "double3" 4.6681247830244024 4.4248597720542051 -1.7763568394002505e-15 ;
createNode transform -n "Corner_Driver_Rt_inDn_rig" -p "Rt_driver_group";
	rename -uid "133D27DE-CE42-44EC-5287-DCAB51230355";
	setAttr ".t" -type "double3" -2.3840994358602892 -3.1756156180883437 -1.1179924403676456 ;
	setAttr ".r" -type "double3" 0 -28.531580302177037 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "Corner_Driver_Rt_otDn_rig" -p "Rt_driver_group";
	rename -uid "838145C0-524B-A7F3-28B7-2CB54521C0EC";
	setAttr ".t" -type "double3" 4.0435090510608109 -2.8887769328223243 -0.51538619277015663 ;
createNode transform -n "Corner_Driver_Rt_otDn_rig1" -p "Rt_driver_group";
	rename -uid "F0205181-B34C-57B9-3905-BEB786D848A9";
createNode parentConstraint -n "Rt_driver_group_parentConstraint1" -p "Rt_driver_group";
	rename -uid "D65A9298-B841-581F-3C45-428A98F6DF1F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "jaw_muzzle_corner_driverW0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 20.032996867785329 0.63208622797554881 -4.1009043222802601 ;
	setAttr ".tg[0].tor" -type "double3" 4.4473338531968582e-14 -41.571839981523965 
		-25.713345398036456 ;
	setAttr ".lr" -type "double3" -4.8965493738283122e-14 48.428160018476014 -8.0709250776529791e-15 ;
	setAttr ".rst" -type "double3" 4.1009043222802033 67.890035230504395 18.582819563704074 ;
	setAttr ".rsrr" -type "double3" -4.5415240268150125e-14 48.428160018476014 -2.1151087451299648e-15 ;
	setAttr -k on ".w0";
createNode transform -n "lips_skin_joints" -p "lips_top";
	rename -uid "D9200589-3D4D-A13B-DBB8-C8A2B5551DD3";
	setAttr ".it" no;
createNode transform -n "L_Lip_Bot_4_null" -p "lips_skin_joints";
	rename -uid "42C497BC-4144-C8A6-493E-F19F17717FA6";
createNode transform -n "L_Lip_Bot_7_null" -p "lips_skin_joints";
	rename -uid "4B720A83-8E45-0E00-AAE7-F2877184DA99";
createNode transform -n "R_Lip_Bot_4_null" -p "lips_skin_joints";
	rename -uid "5BACC810-8248-E0F5-AE64-2AA58DFD1C9F";
createNode transform -n "R_Lip_Bot_7_null" -p "lips_skin_joints";
	rename -uid "F9310301-6446-0211-9D26-DFA4E70093E0";
createNode transform -n "C_Lip_Bot_null" -p "lips_skin_joints";
	rename -uid "054DEA34-6349-9897-359C-AEAA6F5778D4";
createNode transform -n "C_Lip_Top_null" -p "lips_skin_joints";
	rename -uid "7E994D79-3745-1CA7-67BD-44A48882826E";
createNode transform -n "L_Lip_Top_4_null" -p "lips_skin_joints";
	rename -uid "537D0CED-BC4C-026F-8D05-32BE1224724A";
createNode transform -n "R_Lip_Top_4_null" -p "lips_skin_joints";
	rename -uid "256C414C-3B40-902C-7E15-E5B8010D41CF";
createNode transform -n "R_Lip_Top_7_null" -p "lips_skin_joints";
	rename -uid "B3BCC9CC-DC42-82EA-7B38-11BDAA916C1A";
createNode transform -n "L_Lip_Top_7_null" -p "lips_skin_joints";
	rename -uid "D5D42A25-8D4E-960F-7FD6-6BA253492433";
createNode transform -n "nose_top" -p "rig_rig";
	rename -uid "D8E37BBC-4142-C90F-FED6-939AAB57A6F7";
	addAttr -ci true -sn "build_data" -ln "build_data" -dt "string";
	addAttr -ci true -k true -sn "rig_vis" -ln "rig_vis" -min 0 -max 1 -at "bool";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".build_data" -type "string" "{\"parent_to_rig\": [], \"l_nostril\": null, \"main_sockets\": [], \"rig\": \"nose_rig\", \"pre_rig_top\": \"nose_pre_rig\", \"top\": \"nose_top\", \"secondary_plugs\": [], \"controls\": \"nose_controls\", \"skin_joints\": \"nose_skin_joints\", \"world_controls\": \"nose_world_controls\", \"pre_rig_noxform\": \"nose_pre_rig_noxform\", \"l_nostril_joint\": \"Lf_nostril_jnt\", \"main_plugs\": [], \"secondary_sockets\": [], \"parent_to_noxform\": [], \"pre_l_nostril\": \"Lf_Nostril_pre_rig_pre_rig\", \"pre_r_nostril\": null, \"pre_nose\": \"Rig_pre_rig_pre_rig\", \"r_nostril_joint\": \"Rt_nostril_jnt\", \"name\": \"nose\", \"nose_joint\": \"Nose_jnt\", \"nose\": null, \"r_nostril\": null, \"parent_to_joints\": [], \"noXform\": \"nose_noxform\"}";
	setAttr -k on ".rig_vis";
createNode transform -n "nose_rig" -p "nose_top";
	rename -uid "88FADEA5-754F-C706-3B7A-44AB6DD2B636";
createNode transform -n "nose_noxform" -p "nose_rig";
	rename -uid "77BC0795-8F4F-C933-EEA8-EDB043C3CCD2";
	setAttr ".it" no;
createNode parentConstraint -n "Nose_jnt_parentConstraint1" -p "nose_noxform";
	rename -uid "157554D8-8D47-0589-B9ED-DD9297BDC39E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Rig_worldW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0 78.19752106977873 19.865158769853601 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -17.04995949847472 0 0 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 0 7.1054273576010019e-15 ;
	setAttr ".tg[0].tor" -type "double3" -6.3611093629270351e-15 0 0 ;
	setAttr ".lr" -type "double3" -17.04995949847471 0 0 ;
	setAttr ".rst" -type "double3" 0 78.19752106977873 19.865158769853601 ;
	setAttr ".rsrr" -type "double3" -17.049959498474713 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Lf_nostril_jnt_parentConstraint1" -p "nose_noxform";
	rename -uid "796A5D19-624B-3073-43E7-C594FC9F9C6A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Lf_Nostril_worldW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 1.000000000000002 75.346236335518441 22.724426483847022 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0 35.171163963919021 0 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 0 3.5527136788005009e-15 ;
	setAttr ".tg[0].tor" -type "double3" -4.7708320221952752e-15 3.1805546814635176e-15 
		0 ;
	setAttr ".lr" -type "double3" 4.8846189165673328e-15 35.171163963919021 4.8846189165673328e-15 ;
	setAttr ".rst" -type "double3" 1.000000000000002 -3.5643221000837428 1.8975891185832481 ;
	setAttr ".rsrr" -type "double3" 7.1242353499569266e-15 35.171163963919028 1.4238477540359069e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Rt_nostril_jnt_parentConstraint1" -p "nose_noxform";
	rename -uid "00EEF84B-5945-AA51-8F72-1A90844B8B57";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Rt_Nostril_worldW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -0.999999999999998 75.346199999999982 22.724400000000003 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 179.99999999999997 -35.171163963919028 -1.7279051930599417e-30 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000004 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.7763568394002505e-15 0 3.5527136788005009e-15 ;
	setAttr ".tg[0].tor" -type "double3" 3.1805546814635168e-15 1.272221872585407e-14 
		-4.7708320221952759e-15 ;
	setAttr ".lr" -type "double3" 180 -35.171163963919021 -5.7459856658727493e-15 ;
	setAttr ".rst" -type "double3" -0.999999999999998 -3.5643490734281187 1.8975531449436218 ;
	setAttr ".rsrr" -type "double3" 180 -35.171163963919028 -2.9641889728398282e-15 ;
	setAttr -k on ".w0";
createNode transform -n "nose_world_controls" -p "nose_rig";
	rename -uid "A59B6391-824D-DABE-31F8-D492DA4C1A56";
createNode transform -n "Rig_offset_world" -p "nose_world_controls";
	rename -uid "BC9C3031-AF49-29C5-EC5D-2E97AFE9AD4A";
createNode transform -n "Rig_world" -p "Rig_offset_world";
	rename -uid "3F73034A-AA43-52C0-5BF8-829A24F313B5";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
createNode transform -n "Lf_Nostril_offset_world" -p "Rig_world";
	rename -uid "40BBA4DB-9A44-8B08-D6DA-F28CC6A94F5B";
createNode transform -n "Lf_Nostril_world" -p "Lf_Nostril_offset_world";
	rename -uid "FF232B84-ED47-5613-DAEF-42BE40B2A93D";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
createNode transform -n "Rt_Nostril_offset_world" -p "Rig_world";
	rename -uid "064A383A-5040-2D24-8A47-AEAB7612AD39";
createNode transform -n "Rt_Nostril_world" -p "Rt_Nostril_offset_world";
	rename -uid "9970507E-6940-65ED-DED2-2AA92C34ADD9";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
createNode transform -n "nose_controls" -p "nose_top";
	rename -uid "29ED4B31-B144-83AA-9FE7-F8AF80B68AF0";
createNode transform -n "Nose_offset" -p "nose_controls";
	rename -uid "6BA16BC4-3B43-51F3-AA85-59B22404664F";
createNode transform -n "Nose" -p "Nose_offset";
	rename -uid "AF05811F-DA45-4E6B-B900-0C87C36A38F3";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
	addAttr -s false -ci true -m -sn "world" -ln "world" -at "message";
	setAttr -l on -k off ".v";
createNode nurbsCurve -n "NoseShape" -p "Nose";
	rename -uid "2FFADAEF-684B-C840-05D2-ECA54415071D";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.4662366653607719 -1.7713421806664349 3.239154788636748
		9.7760964052313694e-17 -0.30413505096564264 3.239154788636748
		-1.4662366653607719 -1.7713421806664351 3.239154788636748
		-1.5965577033374643 -3.237578846027207 3.239154788636748
		-2.78989649872877 -4.7038155113879796 3.239154788636748
		-3.0430513082346853e-16 -4.8341365493646755 3.239154788636748
		2.78989649872877 -4.7038155113879796 3.239154788636748
		1.5965577033374643 -3.237578846027207 3.239154788636748
		1.4662366653607719 -1.7713421806664349 3.239154788636748
		9.7760964052313694e-17 -0.30413505096564264 3.239154788636748
		-1.4662366653607719 -1.7713421806664351 3.239154788636748
		;
createNode transform -n "Lf_Nostril_offset" -p "Nose";
	rename -uid "5DDE6FA3-8844-F7CD-407E-28A7DF55CF87";
	setAttr ".t" -type "double3" 1 -3.5643221000837428 1.8975891185832481 ;
	setAttr ".r" -type "double3" 20.565035396626534 33.415361619335535 11.673776475023256 ;
createNode transform -n "Lf_Nostril" -p "Lf_Nostril_offset";
	rename -uid "F87E9E1B-A44D-D8D3-CF7D-329782E25232";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
	addAttr -s false -ci true -m -sn "world" -ln "world" -at "message";
	setAttr -l on -k off ".v";
createNode nurbsCurve -n "Lf_Nostril1Shape" -p "Lf_Nostril";
	rename -uid "ECF9D204-FD47-7733-A6E3-BDB37AE93A43";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.0057743984847876 -0.31956481068904075 1.3967624844460289
		2.0463680903002008 0.084662889277904149 1.3967624844460125
		1.9886714134839156 0.60286215465847259 1.3967624844460289
		1.1310932345153022 0.85906315054279481 1.3967624844460125
		0.27741933086477077 0.90469218159390186 1.3967624844460125
		0.34133562268515172 0.053049389439832124 1.3967624844460125
		0.30903351913669019 -0.80037741579558908 1.3967624844460289
		1.1623441886184511 -0.82641589046184893 1.3967624844460289
		2.0057743984847876 -0.31956481068904075 1.3967624844460289
		2.0463680903002008 0.084662889277904149 1.3967624844460125
		1.9886714134839156 0.60286215465847259 1.3967624844460289
		;
createNode transform -n "Rt_Nostril_offset" -p "Nose";
	rename -uid "3B3B2A76-FF49-91DE-72E1-FF8761FA67FB";
	setAttr ".t" -type "double3" -1 -3.5643490734281187 1.8975531449436218 ;
	setAttr ".r" -type "double3" -159.43496460337349 -33.415361619335535 -11.673776475023256 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "Rt_Nostril" -p "Rt_Nostril_offset";
	rename -uid "164C3C17-8C49-0B63-F45B-358A78D30750";
	addAttr -s false -ci true -m -sn "root" -ln "root" -at "message";
	addAttr -s false -ci true -m -sn "world" -ln "world" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 0 0 ;
createNode nurbsCurve -n "Rt_Nostril1Shape" -p "Rt_Nostril";
	rename -uid "E5952D59-BE44-6F11-EAC4-6CA9ADE49DE4";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-2.0057591432330781 0.31952847517057137 -1.3967841332669728
		-2.0463528350484914 -0.084699224796381145 -1.3967841332669551
		-1.9886561582322049 -0.60289849017694053 -1.3967841332669764
		-1.1310779792635923 -0.85909948606126818 -1.3967841332669551
		-0.27740407561305958 -0.90472851711237467 -1.3967841332669622
		-0.34132036743344329 -0.053085724958307878 -1.3967841332669586
		-0.30901826388497966 0.80034108027712136 -1.3967841332669728
		-1.1623289333667408 0.82637955494337234 -1.3967841332669728
		-2.0057591432330781 0.31952847517057137 -1.3967841332669728
		-2.0463528350484914 -0.084699224796381145 -1.3967841332669551
		-1.9886561582322049 -0.60289849017694053 -1.3967841332669764
		;
createNode parentConstraint -n "Rig_offset_parentConstraint1" -p "Nose_offset";
	rename -uid "4D9548BC-0446-2F78-F73E-60A3097A6E5F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "MuzzleW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 21.843855315695418 6.8994551016246106 -6.0254898771055075e-14 ;
	setAttr ".tg[0].tor" -type "double3" 162.95004050152531 -89.999999999999972 0 ;
	setAttr ".lr" -type "double3" -17.049959498474706 -7.5123928425322349e-15 -7.2064036783370045e-15 ;
	setAttr ".rst" -type "double3" -6.3108872417680944e-30 78.19752106977873 19.865158769853593 ;
	setAttr ".rsrr" -type "double3" -17.049959498474706 -7.5123928425322349e-15 -7.2064036783370045e-15 ;
	setAttr -k on ".w0";
createNode transform -n "nose_skin_joints" -p "nose_top";
	rename -uid "0EDEFB2C-0E4F-5458-CB86-A2A1B6D6648A";
	setAttr ".v" no;
	setAttr ".it" no;
createNode transform -n "lid_rig" -p "rig_rig";
	rename -uid "C851F346-5F41-5642-67CF-7398F333A577";
createNode transform -n "Lf_lid_grp" -p "lid_rig";
	rename -uid "7DCF887D-004D-1944-55B5-60A5D0C0534E";
createNode transform -n "Lf_top_lid_grp" -p "Lf_lid_grp";
	rename -uid "E170DC9A-A246-E537-46AE-1A9DC6AB20DC";
	setAttr ".t" -type "double3" 9.1313524065401044 79.428847645718093 18.87913494412874 ;
	setAttr ".s" -type "double3" 6.5508514100181197 6.5508514100181197 6.5508514100181197 ;
createNode transform -n "Lf_top_lid" -p "Lf_top_lid_grp";
	rename -uid "20D10E69-2A4A-3A84-3458-46B4AD7B0460";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 3.2539712380293549e-15 1 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mtye" yes;
	setAttr ".xtye" yes;
	setAttr ".mrze" yes;
	setAttr ".xrze" yes;
createNode nurbsCurve -n "Lf_top_lidShape" -p "Lf_top_lid";
	rename -uid "ECE8F52E-5E46-6656-949B-9C90140E7C63";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.39146451777150987 0.53498703294098904 -4.4447604760829384e-16
		2.0800348293724602e-16 0.69713694538979187 -4.4447604760829384e-16
		-0.39146451777150876 0.53498703294098926 -4.4447604760829384e-16
		-0.55361443022031165 0.14352251516948042 -4.4447604760829384e-16
		-0.39146451777150881 0.23581086138744331 -4.4447604760829384e-16
		1.0434943760566131e-16 0.23580923988835975 -4.4447604760829384e-16
		0.39146451777150892 0.23581086138744331 -4.4447604760829384e-16
		0.55361443022031209 0.14352251516947998 -4.4447604760829384e-16
		0.39146451777150987 0.53498703294098904 -4.4447604760829384e-16
		2.0800348293724602e-16 0.69713694538979187 -4.4447604760829384e-16
		-0.39146451777150876 0.53498703294098926 -4.4447604760829384e-16
		;
createNode transform -n "Lf_bot_lid_grp" -p "Lf_lid_grp";
	rename -uid "5AD9CEC1-9D46-282A-13BB-7486B4211C0D";
	setAttr ".t" -type "double3" 9.1313524065401044 79.428847645718093 18.87913494412874 ;
	setAttr ".s" -type "double3" 6.5508514100181197 6.5508514100181197 6.5508514100181197 ;
createNode transform -n "Lf_bot_lid" -p "Lf_bot_lid_grp";
	rename -uid "D6151B96-4749-9D17-AC15-4BBAF12B586B";
	addAttr -ci true -sn "squint" -ln "squint" -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.3558213491788979e-15 -1 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mtye" yes;
	setAttr ".xtye" yes;
	setAttr ".mrze" yes;
	setAttr ".xrze" yes;
	setAttr -k on ".squint";
createNode nurbsCurve -n "Lf_bot_lidShape" -p "Lf_bot_lid";
	rename -uid "FBDAAF1E-BD47-91FC-AB72-B4888716B74C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.39146451777150931 -0.34307556655505117 -4.4447604760829384e-16
		-6.3914863205095414e-18 -0.50522547900385406 -4.4447604760829384e-16
		0.39146451777150887 -0.34307556655505128 -4.4447604760829384e-16
		0.55361443022031143 0.048388951216457296 -4.4447604760829384e-16
		0.39146451777150953 -0.043899395001505637 -4.4447604760829384e-16
		4.3769772352955307e-16 -0.043897773502421966 -4.4447604760829384e-16
		-0.39146451777150831 -0.043899395001505415 -4.4447604760829384e-16
		-0.55361443022031154 0.048388951216457962 -4.4447604760829384e-16
		-0.39146451777150931 -0.34307556655505117 -4.4447604760829384e-16
		-6.3914863205095414e-18 -0.50522547900385406 -4.4447604760829384e-16
		0.39146451777150887 -0.34307556655505128 -4.4447604760829384e-16
		;
createNode transform -n "Rt_lid_grp" -p "lid_rig";
	rename -uid "305BC073-6649-7AC1-FA32-DF9032E481F8";
	setAttr ".s" -type "double3" -1 1 1 ;
createNode transform -n "Rt_top_lid_grp" -p "Rt_lid_grp";
	rename -uid "9E15282A-8C4C-6E13-10E4-7481E7452C98";
	setAttr ".t" -type "double3" 9.1313524065401044 79.428847645718093 18.87913494412874 ;
	setAttr ".s" -type "double3" 6.5508514100181197 6.5508514100181197 6.5508514100181197 ;
createNode transform -n "Rt_top_lid" -p "Rt_top_lid_grp";
	rename -uid "C37F7E19-A847-D7CA-638F-56ADA195B89B";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.1793116940294799e-15 1 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mtye" yes;
	setAttr ".xtye" yes;
	setAttr ".mrze" yes;
	setAttr ".xrze" yes;
createNode nurbsCurve -n "Rt_top_lidShape" -p "Rt_top_lid";
	rename -uid "AB53D38F-8B4B-3195-05FB-3D9F479A6185";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.39146451777150987 0.53498703294098904 -4.4447604760829384e-16
		2.0800348293724602e-16 0.69713694538979187 -4.4447604760829384e-16
		-0.39146451777150876 0.53498703294098926 -4.4447604760829384e-16
		-0.55361443022031165 0.14352251516948042 -4.4447604760829384e-16
		-0.39146451777150881 0.23581086138744331 -4.4447604760829384e-16
		1.0434943760566131e-16 0.23580923988835975 -4.4447604760829384e-16
		0.39146451777150892 0.23581086138744331 -4.4447604760829384e-16
		0.55361443022031209 0.14352251516947998 -4.4447604760829384e-16
		0.39146451777150987 0.53498703294098904 -4.4447604760829384e-16
		2.0800348293724602e-16 0.69713694538979187 -4.4447604760829384e-16
		-0.39146451777150876 0.53498703294098926 -4.4447604760829384e-16
		;
createNode transform -n "Rt_bot_lid_grp" -p "Rt_lid_grp";
	rename -uid "02C5E158-A94C-2074-7619-53AA723A1A18";
	setAttr ".t" -type "double3" 9.1313524065401044 79.428847645718093 18.87913494412874 ;
	setAttr ".s" -type "double3" 6.5508514100181197 6.5508514100181197 6.5508514100181197 ;
createNode transform -n "Rt_bot_lid" -p "Rt_bot_lid_grp";
	rename -uid "5D454BB2-CB45-45DA-EA7A-6A932E1EBAD4";
	addAttr -ci true -sn "squint" -ln "squint" -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 4.458610249400532e-16 -1 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mtye" yes;
	setAttr ".xtye" yes;
	setAttr ".mrze" yes;
	setAttr ".xrze" yes;
	setAttr -k on ".squint";
createNode nurbsCurve -n "Rt_bot_lidShape" -p "Rt_bot_lid";
	rename -uid "AA030C57-4347-F0DA-DDB3-CA9EB6F94176";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.39146451777150931 -0.34307556655505117 -4.4447604760829384e-16
		-6.3914863205095414e-18 -0.50522547900385406 -4.4447604760829384e-16
		0.39146451777150887 -0.34307556655505128 -4.4447604760829384e-16
		0.55361443022031143 0.048388951216457296 -4.4447604760829384e-16
		0.39146451777150953 -0.043899395001505637 -4.4447604760829384e-16
		4.3769772352955307e-16 -0.043897773502421966 -4.4447604760829384e-16
		-0.39146451777150831 -0.043899395001505415 -4.4447604760829384e-16
		-0.55361443022031154 0.048388951216457962 -4.4447604760829384e-16
		-0.39146451777150931 -0.34307556655505117 -4.4447604760829384e-16
		-6.3914863205095414e-18 -0.50522547900385406 -4.4447604760829384e-16
		0.39146451777150887 -0.34307556655505128 -4.4447604760829384e-16
		;
createNode transform -n "LowerTeeth_grp" -p "rig_rig";
	rename -uid "92846FA3-E14E-1433-1E53-BE8BF2112B60";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.8886090522101181e-30 66.040383368226983 19.480570558077531 ;
	setAttr ".r" -type "double3" -1.2722218725854053e-14 -3.8166656177562214e-14 -4.6118042881220995e-14 ;
createNode transform -n "LowerTeeth" -p "LowerTeeth_grp";
	rename -uid "AF4C5AC9-C64C-68E5-CBD7-B390E4EDAC99";
createNode nurbsCurve -n "LowerTeethShape" -p "LowerTeeth";
	rename -uid "EFED8233-194A-2B93-3CDC-C18ECD8FEC5E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 0 no 3
		13 0 0 0 1 2 3 4 5 6 7 8 8 8
		11
		0 0 0
		-1.264317111274231e-16 6.7857324799424197e-17 1.979326605796814
		-1.264317111274231e-16 6.7857324799424197e-17 1.979326605796814
		-0.78361159563064575 4.7982374980204333e-17 2.3039093017578125
		-1.1081942319869995 1.966335505581638e-32 3.0875208377838135
		-0.78361159563064575 -4.7982374980204333e-17 3.8711323738098145
		-3.3392053130992208e-16 -6.7857324799424197e-17 4.1957149505615234
		0.78361159563064575 -4.7982374980204333e-17 3.8711323738098145
		1.1081942319869995 -3.6446299325528967e-32 3.0875208377838135
		0.78361159563064575 4.7982374980204333e-17 2.3039093017578125
		-1.264317111274231e-16 6.7857324799424197e-17 1.979326605796814
		;
createNode transform -n "UpperTeeth_grp" -p "rig_rig";
	rename -uid "DA750623-9649-B3BF-ACD5-B69666A5F6FA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 69.131211967729371 20.023209415336396 ;
createNode transform -n "UpperTeeth" -p "UpperTeeth_grp";
	rename -uid "F83E5C6C-4141-394E-C07A-D39D78F1FDE8";
createNode nurbsCurve -n "UpperTeethShape" -p "UpperTeeth";
	rename -uid "72DD614D-D648-119C-1CA7-FFA071B88B0F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 0 no 3
		13 0 0 0 1 2 3 4 5 6 7 8 8 8
		11
		0 0 0
		-1.264317111274231e-16 6.7857324799424197e-17 1.979326605796814
		-1.264317111274231e-16 6.7857324799424197e-17 1.979326605796814
		-0.78361159563064575 4.7982374980204333e-17 2.3039093017578125
		-1.1081942319869995 1.966335505581638e-32 3.0875208377838135
		-0.78361159563064575 -4.7982374980204333e-17 3.8711323738098145
		-3.3392053130992208e-16 -6.7857324799424197e-17 4.1957149505615234
		0.78361159563064575 -4.7982374980204333e-17 3.8711323738098145
		1.1081942319869995 -3.6446299325528967e-32 3.0875208377838135
		0.78361159563064575 4.7982374980204333e-17 2.3039093017578125
		-1.264317111274231e-16 6.7857324799424197e-17 1.979326605796814
		;
createNode transform -n "Tongue1_grp" -p "rig_rig";
	rename -uid "A52BC6CE-4D4A-D036-EA0B-88A6591E53CB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.4602606776173181e-17 68.132233840350267 8.8853019549409051 ;
	setAttr ".r" -type "double3" 90 -82.705639085450343 -90 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "Tongue1" -p "Tongue1_grp";
	rename -uid "96D1E472-A644-BB4C-66EF-0E8A0D4FBE26";
createNode nurbsCurve -n "Tongue1Shape" -p "Tongue1";
	rename -uid "F1D07F00-3042-8260-D25B-88AD28636366";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 0 no 3
		13 0 0 0 1 2 3 4 5 6 7 8 8 8
		11
		-0.078434681141389614 0.61275696795734536 9.3208620357059225e-18
		-0.078434681141389559 2.5920835737541594 9.3208620357059225e-18
		-0.078434681141389559 2.5920835737541594 9.3208620357059225e-18
		-0.058690730666745808 2.916666269715158 -0.78336282093705467
		-0.050512516443165803 3.7002778057411603 -1.1078424114141066
		-0.058690730666745808 4.4838893417671617 -0.78336282093705467
		-0.078434681141389698 4.8084719185188707 2.3136546696073723e-16
		-0.098178631616033449 4.4838893417671617 0.783362820937055
		-0.10635684583961345 3.7002778057411603 1.107842411414107
		-0.098178631616033449 2.916666269715158 0.783362820937055
		-0.078434681141389559 2.5920835737541594 9.3208620357059225e-18
		;
createNode transform -n "Tongue2_grp" -p "Tongue1";
	rename -uid "3286632E-904B-3111-112F-128820B1BA20";
	setAttr ".t" -type "double3" 3.0420409740899488 0.18797971738106189 8.1319210867044172e-16 ;
	setAttr ".r" -type "double3" 0 0 -7.0547876639596412 ;
createNode transform -n "Tongue2" -p "Tongue2_grp";
	rename -uid "78643F23-DA4A-D0BD-3707-1DA9EF7ACF78";
createNode nurbsCurve -n "Tongue2Shape" -p "Tongue2";
	rename -uid "4CE17786-2448-64FC-5BB1-FA9397BA65CC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 0 no 3
		13 0 0 0 1 2 3 4 5 6 7 8 8 8
		11
		-0.15309868625408096 0.59848466417553703 -4.0756051277105604e-17
		-0.15309868625408091 2.5778112699723508 -4.0756051277104088e-17
		-0.15309868625408091 2.5778112699723508 -4.0756051277104088e-17
		-0.13335473577943713 2.9023939659333493 -0.78336282093705467
		-0.12517652155585712 3.6860055019593503 -1.1078424114141066
		-0.13335473577943713 4.4696170379853513 -0.78336282093705467
		-0.15309868625408102 4.7941996147370611 1.8128855364792726e-16
		-0.17284263672872482 4.4696170379853521 0.783362820937055
		-0.18102085095230486 3.6860055019593512 1.107842411414107
		-0.17284263672872482 2.9023939659333493 0.783362820937055
		-0.15309868625408091 2.5778112699723508 -4.0756051277104088e-17
		;
createNode transform -n "Tongue3_grp" -p "Tongue2";
	rename -uid "921CA255-2041-E1F3-AD19-0599F6B612B7";
	setAttr ".t" -type "double3" 2.4701795131120545 -0.02322287850751752 1.5525900262668201e-15 ;
	setAttr ".r" -type "double3" 0 0 0.86937618238826675 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999978 ;
createNode transform -n "Tongue3" -p "Tongue3_grp";
	rename -uid "033E1FB8-4A47-ACEB-7B03-58958F2BEE7D";
createNode nurbsCurve -n "Tongue3Shape" -p "Tongue3";
	rename -uid "CBA6A9CC-394B-9F39-A93C-EFAF1EF33C6A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 0 no 3
		13 0 0 0 1 2 3 4 5 6 7 8 8 8
		11
		-0.14400031757990467 0.60073871984658833 4.2727437502307205e-16
		-0.14400031757990456 2.5800653256434027 3.7190420965486662e-16
		-0.14400031757990456 2.5800653256434027 3.7190420965486662e-16
		-0.12425636710526047 2.9046480216044013 -0.78336282093705512
		-0.11607815288168036 3.6882595576304018 -1.1078424114141066
		-0.12425636710526047 4.471871093656401 -0.78336282093705467
		-0.14400031757990472 4.7964536704081118 6.494599658111559e-16
		-0.1637442680545482 4.471871093656401 0.78336282093705534
		-0.1719224822781282 3.6882595576304018 1.1078424114141072
		-0.1637442680545482 2.9046480216044013 0.78336282093705512
		-0.14400031757990456 2.5800653256434027 3.7190420965486662e-16
		;
createNode transform -n "Tongue4_grp" -p "Tongue3";
	rename -uid "6B1C796A-A24E-83C9-82CD-A2B1A3AADE67";
	setAttr ".t" -type "double3" 2.0092111157599568 -0.10980491727514989 2.1612707994814379e-15 ;
	setAttr ".r" -type "double3" 0 0 4.1140547241735428 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1.0000000000000004 ;
createNode transform -n "Tongue4" -p "Tongue4_grp";
	rename -uid "9A8A71E3-214E-CB53-EEC5-C5A3E9757719";
createNode nurbsCurve -n "Tongue4Shape" -p "Tongue4";
	rename -uid "33257AFC-0647-AF57-83D2-7BA43AA58E3E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 0 no 3
		13 0 0 0 1 2 3 4 5 6 7 8 8 8
		11
		-0.1005309929592314 0.60952163246324653 -3.368824800953107e-15
		-0.10053099295923129 2.5888482382600619 -3.4251818673626741e-15
		-0.10053099295923129 2.5888482382600619 -3.4251818673626741e-15
		-0.080787042484587956 2.9134309342210605 -0.78336282093705811
		-0.072608828261007646 3.6970424702470628 -1.1078424114141086
		-0.080787042484588067 4.4806540062730615 -0.78336282093705722
		-0.10053099295923146 4.8052365830247705 -3.1476261112063846e-15
		-0.1202749434338754 4.4806540062730615 0.78336282093705234
		-0.12845315765745574 3.6970424702470619 1.107842411414105
		-0.1202749434338754 2.91343093422106 0.78336282093705267
		-0.10053099295923129 2.5888482382600619 -3.4251818673626741e-15
		;
createNode transform -n "face_GEO" -p "rig_main";
	rename -uid "C9673264-644D-D7C1-428D-98B5A1F87952";
	setAttr ".v" no;
createNode transform -n "eye_world";
	rename -uid "5220BB47-9F42-8410-7BEE-59A359930473";
	setAttr ".t" -type "double3" -6.3108872417680944e-30 81.963 67.477450118360593 ;
createNode transform -n "constraints";
	rename -uid "32A4CD70-804E-21CC-A760-379B2C83012E";
createNode parentConstraint -n "lf_brow_in_jnt_parentConstraint1" -p "constraints";
	rename -uid "606C201B-B54D-482F-A210-47BAA50776A4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Brow_Lf_InW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 3.194421768188477 90.895828247070298 19.241317749023441 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.5152658965124974 1.1578251147888068 -6.0258528737004582 ;
	setAttr ".tg[0].tor" -type "double3" 11.240441531052108 -23.543431018690541 -4.5389123716222972 ;
	setAttr ".lr" -type "double3" 3.4290355159528539e-15 1.4908850069360232e-16 3.975693351829396e-16 ;
	setAttr ".rst" -type "double3" 3.1944217681884783 90.895828247070298 19.241317749023441 ;
	setAttr ".rsrr" -type "double3" 1.5902773407317584e-15 3.255098931810318e-15 -3.9756933518293955e-16 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "lf_brow_md_jnt_parentConstraint1" -p "constraints";
	rename -uid "7D786B0C-1447-C424-511E-1291148FB13E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Brow_Lf_MdW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 9.9144887924194318 92.671005249023452 17.368194580078125 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.5761020971007684 1.89617587946924 -3.7379385633500419 ;
	setAttr ".tg[0].tor" -type "double3" 11.240441531052108 -23.543431018690541 -4.5389123716222999 ;
	setAttr ".lr" -type "double3" -1.4908850069360235e-16 -7.4544250346801174e-17 -1.1927080055488188e-15 ;
	setAttr ".rst" -type "double3" 9.9144887924194318 92.671005249023452 17.368194580078125 ;
	setAttr ".rsrr" -type "double3" -3.478731682850722e-16 3.0066180973209805e-15 -1.987846675914698e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "lf_brow_ot_jnt_parentConstraint1" -p "constraints";
	rename -uid "086BD25E-0D4B-BEE3-D9C0-138863DFB32A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Brow_Lf_OtW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 14.669962882995605 93.413269042968764 13.865230560302736 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -0.63051355068453674 1.4193526522918489 -6.3196935889947383 ;
	setAttr ".tg[0].tor" -type "double3" 11.240441531052108 -23.543431018690541 -4.5389123716222972 ;
	setAttr ".lr" -type "double3" 3.4290355159528539e-15 1.4908850069360232e-16 3.975693351829396e-16 ;
	setAttr ".rst" -type "double3" 14.669962882995605 93.413269042968764 13.865230560302736 ;
	setAttr ".rsrr" -type "double3" 1.5902773407317584e-15 3.255098931810318e-15 -3.9756933518293955e-16 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "rt_brow_in_jnt_parentConstraint1" -p "constraints";
	rename -uid "E050E500-DF44-278D-1A00-73A156F9703F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Brow_Rt_InW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -3.194422 90.895828247070312 19.241317749023445 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.5152663202094612 1.1578250811536179 -6.0258526885089623 ;
	setAttr ".tg[0].tor" -type "double3" -168.75955846894789 -23.543431018690541 -4.5389123716222981 ;
	setAttr ".lr" -type "double3" -1.2921003393445538e-15 -1.7931494335828771e-32 -1.5902773407317584e-15 ;
	setAttr ".rst" -type "double3" -3.194422 90.895828247070312 19.241317749023445 ;
	setAttr ".rsrr" -type "double3" 4.9696166897867437e-17 -3.1805546814635168e-15 3.975693351829396e-16 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "rt_brow_md_jnt_parentConstraint1" -p "constraints";
	rename -uid "C322DACF-0746-D956-693B-8E8E5C137274";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Brow_Rt_MdW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -9.914489 92.671005249023466 17.368194580078121 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.5761024765092637 1.8961758493498735 -3.7379383975163876 ;
	setAttr ".tg[0].tor" -type "double3" -168.75955846894789 -23.543431018690541 -4.5389123716222981 ;
	setAttr ".lr" -type "double3" -1.2921003393445538e-15 -1.7931494335828771e-32 -1.5902773407317584e-15 ;
	setAttr ".rst" -type "double3" -9.914489 92.671005249023466 17.368194580078121 ;
	setAttr ".rsrr" -type "double3" 4.9696166897867437e-17 -3.1805546814635168e-15 3.975693351829396e-16 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "rt_brow_ot_jnt_parentConstraint1" -p "constraints";
	rename -uid "FCBA9D6A-034B-6ED0-190E-8CA2679A7104";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Brow_Rt_OtW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -14.669963 93.413269042968736 13.865230560302741 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -0.63051333682798827 1.4193526353147945 -6.3196934955213067 ;
	setAttr ".tg[0].tor" -type "double3" -168.75955846894789 -23.543431018690541 -4.5389123716222981 ;
	setAttr ".lr" -type "double3" -1.2921003393445538e-15 -1.7931494335828771e-32 -1.5902773407317584e-15 ;
	setAttr ".rst" -type "double3" -14.669963 93.413269042968736 13.865230560302741 ;
	setAttr ".rsrr" -type "double3" 4.9696166897867437e-17 -3.1805546814635168e-15 3.975693351829396e-16 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Lip_Top_7_parentConstraint1" -p "constraints";
	rename -uid "F5E0B46D-5D43-026A-2CBA-BBA28CC84363";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Lip_Top_7_nullW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -4.1119337739942843 69.076533519159483 18.833619991079413 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -8.8817841970012523e-16 1.4210854715202004e-14 
		3.5527136788005009e-15 ;
	setAttr ".rst" -type "double3" -4.1119337739942843 69.076533519159483 18.833619991079413 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Lip_Top_4_parentConstraint1" -p "constraints";
	rename -uid "60C2BB07-B045-C5CC-61F1-5C9BD9A2B9AC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Lip_Top_4_nullW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -2.219740869117695 69.596619246596404 20.548471549538657 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 0 3.5527136788005009e-15 ;
	setAttr ".rst" -type "double3" -2.219740869117695 69.596619246596404 20.548471549538657 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "C_Lip_Top_parentConstraint1" -p "constraints";
	rename -uid "8488CDEB-AA4A-C9A7-5512-C98B53ED8D8A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "C_Lip_Top_nullW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -1.0269562977782698e-15 69.708104308701223 21.039948927969828 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 -1.4210854715202004e-14 0 ;
	setAttr ".rst" -type "double3" -1.0269562977782698e-15 69.708104308701223 21.039948927969828 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Lip_Top_4_parentConstraint1" -p "constraints";
	rename -uid "7AE49DC4-664F-D2B7-EF01-D099D578ED26";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Lip_Top_4_nullW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 2.2197408691176941 69.59661924659639 20.548471549538654 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 -1.4210854715202004e-14 0 ;
	setAttr ".rst" -type "double3" 2.2197408691176941 69.59661924659639 20.548471549538654 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Lip_Top_7_parentConstraint1" -p "constraints";
	rename -uid "7AE9B2F7-DB49-D8FF-3693-1D9CCDBE280F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Lip_Top_7_nullW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 4.1119337739942834 69.076533519159483 18.833619991079406 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 8.8817841970012523e-16 1.4210854715202004e-14 
		3.5527136788005009e-15 ;
	setAttr ".rst" -type "double3" 4.1119337739942834 69.076533519159483 18.833619991079406 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Lip_Bot_7_parentConstraint1" -p "constraints";
	rename -uid "21B252A8-BB48-22B2-AD20-7698F5EB5459";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Lip_Bot_7_nullW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -4.0372663176211807 68.300129130937464 18.537088369610611 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 8.8817841970012523e-16 0 0 ;
	setAttr ".rst" -type "double3" -4.0372663176211807 68.300129130937464 18.537088369610611 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Lip_Bot_4_parentConstraint1" -p "constraints";
	rename -uid "C7F7870D-BE4A-701F-96C4-E098E5E23A6B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Lip_Bot_4_nullW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -2.1063374175700011 67.333926196051948 19.656280120538817 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -2.1063374175700011 67.333926196051948 19.656280120538817 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "C_Lip_Bot_parentConstraint1" -p "constraints";
	rename -uid "23A060D8-D547-371E-E8D5-0D8AB7D0E915";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "C_Lip_Bot_nullW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -1.5265566588595902e-15 67.113212975874333 19.879320066146775 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -1.5265566588595902e-15 67.113212975874333 19.879320066146775 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Lip_Bot_4_parentConstraint1" -p "constraints";
	rename -uid "6481271F-2542-421A-476C-4C86CE08AEB4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Lip_Bot_4_nullW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 2.1063374175700011 67.333926196051934 19.656280120538813 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -4.4408920985006262e-16 -1.4210854715202004e-14 
		-3.5527136788005009e-15 ;
	setAttr ".rst" -type "double3" 2.1063374175700011 67.333926196051934 19.656280120538813 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Lip_Bot_7_parentConstraint1" -p "constraints";
	rename -uid "F6580743-EF4D-06D1-9878-E79EAD086CB2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Lip_Bot_7_nullW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 4.0372663176211807 68.300129130937464 18.537088369610601 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -8.8817841970012523e-16 0 -3.5527136788005009e-15 ;
	setAttr ".rst" -type "double3" 4.0372663176211807 68.300129130937464 18.537088369610601 ;
	setAttr -k on ".w0";
createNode joint -n "Nose_jnt";
	rename -uid "F2B10E19-D247-6F15-D7F5-79933EC1462F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".jo" -type "double3" 2.5444437451708128e-14 -3.2203116149818089e-14 3.4986101496098675e-14 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.95604945667999386 -0.29320545080521382 0
		 0 0.29320545080521382 0.95604945667999386 0 -6.3108872417680944e-30 78.19752106977873 19.865158769853601 1;
	setAttr ".liw" yes;
createNode joint -n "Lf_nostril_jnt" -p "Nose_jnt";
	rename -uid "4D45848D-A943-9399-7221-E0879C5FAE34";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".jo" -type "double3" 17.049959498474717 0 0 ;
	setAttr ".bps" -type "matrix" 0.81743490386457351 8.3266726846886741e-17 -0.5760209874161839 0
		 1.3877787807814454e-17 1 1.1102230246251565e-16 0 0.5760209874161839 -2.7755575615628914e-17 0.81743490386457363 0
		 1.000000000000002 75.346236335518427 22.724426483847022 1;
	setAttr ".liw" yes;
createNode joint -n "Rt_nostril_jnt" -p "Nose_jnt";
	rename -uid "F34A5182-4E42-BE12-89E5-A394106ECCF7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".jo" -type "double3" 17.049959498474717 0 0 ;
	setAttr ".bps" -type "matrix" 0.81743490386457351 -8.3266726846886741e-17 0.57602098741618402 0
		 -6.9388939039072296e-17 -1.0000000000000004 5.5511151231257827e-17 0 0.57602098741618413 -5.5511151231257827e-17 -0.81743490386457385 0
		 -0.999999999999998 75.346199999999982 22.724399999999996 1;
	setAttr ".liw" yes;
createNode joint -n "Muzzle_jnt";
	rename -uid "7DEBDD6A-3D4A-1F64-F287-A099C26F46D1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr ".jo" -type "double3" 2.5444437451708128e-14 -3.2203116149818089e-14 3.4986101496098675e-14 ;
	setAttr ".bps" -type "matrix" 2.2204460492503136e-16 1.2325951644078312e-32 1.0000000000000004 0
		 -1.2246467991473535e-16 -1 3.6977854932234928e-32 0 1.0000000000000004 -1.2246467991473537e-16 -4.4408920985006271e-16 0
		 5.6249528108048489e-14 85.096976171403341 -1.9786965458418277 1;
	setAttr ".liw" yes;
createNode joint -n "Jaw_jnt" -p "Muzzle_jnt";
	rename -uid "0D5CFA46-6348-01FC-2E32-67829A9B33CB";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".jo" -type "double3" -180 -89.999999999999972 0 ;
	setAttr ".bps" -type "matrix" 2.613381538246654e-16 -0.43386895270533687 0.90097598851377536 0
		 -2.0432015841763178e-16 -0.90097598851377514 -0.43386895270533693 0 1.0000000000000002 -7.0701045601763132e-17 -5.461521795528206e-16 0
		 5.4453037185952716e-14 77.151225115155896 0.80781299760903891 1;
	setAttr ".liw" yes;
createNode joint -n "R_Lip_Bot_7" -p "Jaw_jnt";
	rename -uid "77086C7F-2A46-E46D-606E-42AF66CD2A98";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".jo" -type "double3" 154.28665460196359 -89.999999999999957 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -4.0372663176211807 68.300129130937464 18.537088369610611 1;
	setAttr ".liw" yes;
createNode joint -n "R_Lip_Bot_4" -p "Jaw_jnt";
	rename -uid "6DD54612-964C-96F6-D5DF-CE940899E7D3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".jo" -type "double3" 154.28665460196359 -89.999999999999957 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.1063374175700011 67.333926196051948 19.656280120538817 1;
	setAttr ".liw" yes;
createNode joint -n "C_Lip_Bot" -p "Jaw_jnt";
	rename -uid "65EAC874-A742-A849-404C-4689DCE0DFD8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".jo" -type "double3" 154.28665460196359 -89.999999999999957 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.5265566588595902e-15 67.113212975874333 19.879320066146775 1;
	setAttr ".liw" yes;
createNode joint -n "L_Lip_Bot_4" -p "Jaw_jnt";
	rename -uid "6DBC3BD2-A649-061D-1E85-7E845C6FD045";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".jo" -type "double3" 154.28665460196359 -89.999999999999957 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.1063374175700011 67.333926196051934 19.656280120538813 1;
	setAttr ".liw" yes;
createNode joint -n "L_Lip_Bot_7" -p "Jaw_jnt";
	rename -uid "B044FEC7-C248-97A7-71DD-71AD8AC391A4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".jo" -type "double3" 154.28665460196359 -89.999999999999957 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 4.0372663176211807 68.300129130937464 18.537088369610601 1;
	setAttr ".liw" yes;
createNode joint -n "R_Lip_Top_7" -p "Muzzle_jnt";
	rename -uid "6E741D93-5B48-3E03-83C7-11A6D8AD1E0B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".jo" -type "double3" -180 -89.999999999999972 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -4.1119337739942843 69.076533519159483 18.833619991079413 1;
	setAttr ".liw" yes;
createNode joint -n "R_Lip_Top_4" -p "Muzzle_jnt";
	rename -uid "C9576FC5-B84A-BDA3-7972-599C1FB497D4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".jo" -type "double3" -180 -89.999999999999972 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.219740869117695 69.596619246596404 20.548471549538657 1;
	setAttr ".liw" yes;
createNode joint -n "C_Lip_Top" -p "Muzzle_jnt";
	rename -uid "A4DA0026-CD42-B8B7-FDC5-43B65416AD8B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".jo" -type "double3" -180 -89.999999999999972 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.0269562977782698e-15 69.708104308701223 21.039948927969828 1;
	setAttr ".liw" yes;
createNode joint -n "L_Lip_Top_4" -p "Muzzle_jnt";
	rename -uid "FC63EBE3-834B-1C3E-A505-478DA23E330F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".jo" -type "double3" -180 -89.999999999999972 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.2197408691176941 69.59661924659639 20.548471549538654 1;
	setAttr ".liw" yes;
createNode joint -n "L_Lip_Top_7" -p "Muzzle_jnt";
	rename -uid "86D90D66-0B49-6951-A2CC-E3909A928CBD";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".jo" -type "double3" -180 -89.999999999999972 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 4.1119337739942834 69.076533519159483 18.833619991079406 1;
	setAttr ".liw" yes;
createNode joint -n "rt_brow_ot_jnt";
	rename -uid "C50B3D61-234A-0D7E-5C3F-0FBB41567F9B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.5444437451708128e-14 -3.2203116149818089e-14 3.4986101496098675e-14 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -14.669962999999999 93.413269042968736 13.865230560302741 1;
	setAttr ".liw" yes;
createNode joint -n "rt_brow_md_jnt";
	rename -uid "82A75ED8-934C-FAF0-1749-01BDE98B2FCA";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.5444437451708128e-14 -3.2203116149818089e-14 3.4986101496098675e-14 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -9.9144889999999997 92.671005249023466 17.368194580078121 1;
	setAttr ".liw" yes;
createNode joint -n "rt_brow_in_jnt";
	rename -uid "A67A0EB1-D046-3C6E-F709-3593348E0F34";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.5444437451708128e-14 -3.2203116149818089e-14 3.4986101496098675e-14 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.1944219999999999 90.895828247070312 19.241317749023445 1;
	setAttr ".liw" yes;
createNode joint -n "lf_brow_ot_jnt";
	rename -uid "CBCCF741-6C49-E670-E39E-6CB6C46BEE11";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.5444437451708128e-14 -3.2203116149818089e-14 3.4986101496098675e-14 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 14.669962882995605 93.413269042968764 13.865230560302736 1;
	setAttr ".liw" yes;
createNode joint -n "lf_brow_md_jnt";
	rename -uid "DDBCEF41-DC47-F0A9-CA0C-07A776EF86DF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.5444437451708128e-14 -3.2203116149818089e-14 3.4986101496098675e-14 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 9.9144887924194318 92.671005249023452 17.368194580078125 1;
	setAttr ".liw" yes;
createNode joint -n "lf_brow_in_jnt";
	rename -uid "543C1D0B-584E-F820-2A5C-E2A1E31AAB78";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.5444437451708128e-14 -3.2203116149818089e-14 3.4986101496098675e-14 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.1944217681884783 90.895828247070298 19.241317749023441 1;
	setAttr ".liw" yes;
createNode transform -n "eye_head";
	rename -uid "0513E3DC-4434-4038-FA6B-75B0E30F0F0E";
	setAttr ".t" -type "double3" -6.3108872417680944e-30 81.963 67.477450118360593 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "EABA6EA5-48F2-E350-BFE2-18953E961ACA";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "087C8B2F-4DD4-62FE-BAC2-738046A3F0D5";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 0 ;
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "159ADAA0-4B0B-4D1C-C18B-A3B770DD61BD";
createNode displayLayerManager -n "layerManager";
	rename -uid "E4FA7C54-4635-B66B-7CAD-1A854DE59252";
createNode displayLayer -n "defaultLayer";
	rename -uid "CB5EDADB-4878-2FF9-FFC5-CFB38358F22C";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "70F26F00-4B3F-E84A-881F-029A5F652F00";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "2E82133D-4621-9EBB-C048-40BFD10982D8";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "D8C751A9-441F-503D-5C58-9A82CFBFF12A";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n"
		+ "            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n"
		+ "            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n"
		+ "            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n"
		+ "            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"persp\" \n"
		+ "            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n"
		+ "            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1546\n            -height 1022\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n"
		+ "            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n"
		+ "            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"<function selCom at 0x7f29c5c04aa0>\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n"
		+ "            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n"
		+ "            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n"
		+ "                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -editorChanged \"updateModelPanelBar\" \n                -camera \"persp\" \n                -useInteractiveMode 0\n"
		+ "                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n"
		+ "                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n"
		+ "                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n"
		+ "            -showDagOnly 0\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n"
		+ "            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n"
		+ "\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n"
		+ "\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n"
		+ "\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n"
		+ "\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n"
		+ "\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n"
		+ "\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n"
		+ "\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n"
		+ "\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n"
		+ "\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n"
		+ "\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n"
		+ "\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n"
		+ "\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n"
		+ "\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tblendShapePanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1546\\n    -height 1022\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    -activeCustomLighSet \\\"defaultAreaLightSet\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1546\\n    -height 1022\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    -activeCustomLighSet \\\"defaultAreaLightSet\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "3354F6E9-4AAE-8935-396E-07B07FB069E2";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 200 -ast 0 -aet 200 ";
	setAttr ".st" 6;
createNode groupId -n "groupId6";
	rename -uid "4461BA2C-4933-4EE1-EC77-EEB9DE5CB4EA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7";
	rename -uid "F0D899C0-48F5-B7BB-D428-EB816909A7CD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId223";
	rename -uid "E9C9D3F1-4866-9E28-BBED-D3B23AD63798";
	setAttr ".ihi" 0;
createNode groupId -n "groupId227";
	rename -uid "43FEF7E9-4058-19A6-2952-E092B87CBF1F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId228";
	rename -uid "FFD6467B-48D3-2049-55B0-27B0DB26EDD1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId230";
	rename -uid "FCF845B3-4C40-2B87-A1CF-BD84B197EC1F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId231";
	rename -uid "A20830FF-42E4-0B0E-D65C-13BEC6FE436D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId241";
	rename -uid "0BC397D1-42BA-3724-DCB5-30BB841FF045";
	setAttr ".ihi" 0;
createNode renderSetup -n "renderSetup";
	rename -uid "01AD8008-4B6F-1A58-1288-C8961256468E";
createNode materialInfo -n "materialInfo24";
	rename -uid "B4925D33-45C0-44E8-CF2B-97B40EA3DB52";
createNode script -n "eyelashes_geo_ShowBP";
	rename -uid "708F6665-834A-4740-4DEB-29AEA22B4104";
	setAttr ".b" -type "string" "if(`window -exists bpWindow`){deleteUI bpWindow;}; window -rtf 0 -title \"Blend Shapes\" bpWindow;frameLayout -lv 0;blendShapePanel;window -edit -widthHeight 250 350 -tlc 200 200 bpWindow; showWindow bpWindow;";
	setAttr ".st" 1;
createNode script -n "eyebrows_geo_ShowBP";
	rename -uid "4F216377-5744-5B32-7E55-E298A38EAB76";
	setAttr ".b" -type "string" "if(`window -exists bpWindow`){deleteUI bpWindow;}; window -rtf 0 -title \"Blend Shapes\" bpWindow;frameLayout -lv 0;blendShapePanel;window -edit -widthHeight 250 350 -tlc 200 200 bpWindow; showWindow bpWindow;";
	setAttr ".st" 1;
createNode script -n "body_geo_ShowBP";
	rename -uid "DEE7DE79-0A44-2871-7348-01B39882879B";
	setAttr ".b" -type "string" "if(`window -exists bpWindow`){deleteUI bpWindow;}; window -rtf 0 -title \"Blend Shapes\" bpWindow;frameLayout -lv 0;blendShapePanel;window -edit -widthHeight 250 350 -tlc 200 200 bpWindow; showWindow bpWindow;";
	setAttr ".st" 1;
createNode polyBridgeEdge -n "polyBridgeEdge3";
	rename -uid "70BE8890-494B-AE2F-A70B-A6A42EA4B75A";
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
createNode polyBridgeEdge -n "polyBridgeEdge2";
	rename -uid "5F51B096-A04E-4293-5F2D-ED91F5D82088";
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
createNode groupId -n "groupId293";
	rename -uid "710855EC-074B-4977-2DF1-0CABAEAC153C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId294";
	rename -uid "4E73E870-7D48-4126-893E-6F810A0B6857";
	setAttr ".ihi" 0;
createNode groupId -n "groupId295";
	rename -uid "B4E280F5-3D44-252D-FF2E-ECA28BFAA881";
	setAttr ".ihi" 0;
createNode groupId -n "groupId296";
	rename -uid "9D03B7D8-9248-2588-9438-EAAFC7421D41";
	setAttr ".ihi" 0;
createNode groupId -n "groupId297";
	rename -uid "EB91400D-3E4F-0E28-4925-25A470270B47";
	setAttr ".ihi" 0;
createNode groupId -n "groupId298";
	rename -uid "C0D70706-0F4C-C039-11C1-15BA4377EF8F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId299";
	rename -uid "0399AEA0-B24E-1199-8154-FEBB3485582C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId300";
	rename -uid "F41CA116-D349-5006-1532-10B6B15B473B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId242";
	rename -uid "D5BC1ABB-1448-2DCF-09FA-AD93D8F7C68F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId243";
	rename -uid "A8116E80-8F4A-1B3B-3800-129F6C19DF0A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId244";
	rename -uid "0A1BB9B5-3E48-4D13-0A79-20BC71FA3C98";
	setAttr ".ihi" 0;
createNode groupId -n "groupId245";
	rename -uid "4FF98E04-FD45-6543-7BCC-29AB2FD025CA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId246";
	rename -uid "B57FC50D-D449-0B45-5C2F-C8B0D744A76B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId247";
	rename -uid "2A74F57E-0342-397C-3F67-A48966C2BDAD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId248";
	rename -uid "358255FB-5B49-1E71-C42A-999E9FEC4991";
	setAttr ".ihi" 0;
createNode groupId -n "groupId249";
	rename -uid "F68645DC-6A43-4EB8-2C7E-D2BE082A6263";
	setAttr ".ihi" 0;
createNode skinCluster -n "top_lip_curve_skinCluster";
	rename -uid "F63E7904-AC4E-C297-FB0F-6F83AE72DAFB";
	setAttr ".ip[0].gtg" -type "string" "";
	setAttr -s 9 ".wl";
	setAttr ".wl[0:8].w"
		1 0 1
		1 1 1
		1 2 1
		1 3 1
		1 4 1
		1 5 1
		1 6 1
		1 7 1
		1 8 1;
	setAttr -s 9 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 4 -0.5 0 1;
	setAttr ".pm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3 -0.5 0 1;
	setAttr ".pm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2 -0.5 0 1;
	setAttr ".pm[3]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1 -0.5 0 1;
	setAttr ".pm[4]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -0.5 0 1;
	setAttr ".pm[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1 -0.5 0 1;
	setAttr ".pm[6]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2 -0.5 0 1;
	setAttr ".pm[7]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3 -0.5 0 1;
	setAttr ".pm[8]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -4 -0.5 0 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 9 ".ma";
	setAttr -s 9 ".dpf[0:8]"  4 4 4 4 4 4 4 4 4;
	setAttr -s 9 ".lw";
	setAttr -s 9 ".lw";
	setAttr ".bm" 1;
	setAttr ".ucm" yes;
	setAttr -s 9 ".ifcl";
	setAttr -s 9 ".ifcl";
createNode tweak -n "tweak1";
	rename -uid "F35EB35D-E34D-AF5E-693E-A2A30B480D4B";
createNode objectSet -n "top_lip_curve_skinClusterSet";
	rename -uid "B9D72039-AA4B-6164-6D79-FF9C06A0F0EE";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "top_lip_curve_skinClusterGroupId";
	rename -uid "318BB887-5B4D-A700-757C-7FB5CD898B10";
	setAttr ".ihi" 0;
createNode groupParts -n "top_lip_curve_skinClusterGroupParts";
	rename -uid "B46AACC2-7B43-233E-621F-5F96616B3A3D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet1";
	rename -uid "110DD9E6-5A49-7C70-1EB0-A293F9444AC4";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	rename -uid "782DEC3A-8445-CFA3-739C-90996602493C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "D00BCF1A-1840-28EA-EE02-D8AF70CFF3F7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode skinCluster -n "bot_lip_curve_skinCluster";
	rename -uid "46A2CACA-7D48-D32E-2297-44AB02F8610F";
	setAttr ".ip[0].gtg" -type "string" "";
	setAttr -s 9 ".wl";
	setAttr ".wl[0:8].w"
		1 0 1
		1 1 1
		1 2 1
		1 3 1
		1 4 1
		1 5 1
		1 6 1
		1 7 1
		1 8 1;
	setAttr -s 9 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 4 0.5 0 1;
	setAttr ".pm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3 0.5 0 1;
	setAttr ".pm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2 0.5 0 1;
	setAttr ".pm[3]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1 0.5 0 1;
	setAttr ".pm[4]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.5 0 1;
	setAttr ".pm[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1 0.5 0 1;
	setAttr ".pm[6]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2 0.5 0 1;
	setAttr ".pm[7]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3 0.5 0 1;
	setAttr ".pm[8]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -4 0.5 0 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 9 ".ma";
	setAttr -s 9 ".dpf[0:8]"  4 4 4 4 4 4 4 4 4;
	setAttr -s 9 ".lw";
	setAttr -s 9 ".lw";
	setAttr ".bm" 1;
	setAttr ".ucm" yes;
	setAttr -s 9 ".ifcl";
	setAttr -s 9 ".ifcl";
createNode tweak -n "tweak2";
	rename -uid "B5AB7D30-AF43-480C-BC3A-A39991598C1E";
createNode objectSet -n "bot_lip_curve_skinClusterSet";
	rename -uid "8F357F95-AB48-16AB-50AF-3D97C24E598F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bot_lip_curve_skinClusterGroupId";
	rename -uid "2B6CB4DE-D44F-1376-C790-E994ED06547A";
	setAttr ".ihi" 0;
createNode groupParts -n "bot_lip_curve_skinClusterGroupParts";
	rename -uid "5700575B-424D-8EFA-3E9B-2CA09473E009";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet2";
	rename -uid "EA069664-024C-CE12-47DE-A197B1507060";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId4";
	rename -uid "DA5D2F48-2442-2108-917F-98B372C9F9D4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "9253A554-A74D-06FF-241E-D6AD590C4FB2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode motionPath -n "R_Lip_Top_7_motionPath";
	rename -uid "F96AFF81-934E-02E1-8A7A-43B0B29FCB8D";
	setAttr ".fm" yes;
createNode motionPath -n "R_Lip_Top_4_motionPath";
	rename -uid "9DDB9188-2A41-847C-A632-30945EBFCAAB";
	setAttr ".u" 0.267;
	setAttr ".fm" yes;
createNode motionPath -n "C_Lip_Top_motionPath";
	rename -uid "77BFBE12-884A-9FC9-BEBF-D986BA29E771";
	setAttr ".u" 0.5;
	setAttr ".fm" yes;
createNode motionPath -n "L_Lip_Top_4_motionPath";
	rename -uid "7CD4ED49-F445-9196-9CAE-D0A0F2642B81";
	setAttr ".u" 0.733;
	setAttr ".fm" yes;
createNode motionPath -n "L_Lip_Top_7_motionPath";
	rename -uid "362B5BF6-5B4E-51BB-80F9-06B79AB70B26";
	setAttr ".u" 1;
	setAttr ".fm" yes;
createNode motionPath -n "R_Lip_Bot_7_motionPath";
	rename -uid "00BDA86B-0746-9134-43BD-F8B00AC98AFA";
	setAttr ".fm" yes;
createNode motionPath -n "R_Lip_Bot_4_motionPath";
	rename -uid "C3A60EDD-344A-D81C-1E1B-D79BB85218EA";
	setAttr ".u" 0.267;
	setAttr ".fm" yes;
createNode motionPath -n "C_Lip_Bot_motionPath";
	rename -uid "1F7A78B8-7C49-370A-9EF3-C1AAFF35ECA9";
	setAttr ".u" 0.5;
	setAttr ".fm" yes;
createNode motionPath -n "L_Lip_Bot_4_motionPath";
	rename -uid "65F53468-D34D-DAD2-5727-DF8380A7843C";
	setAttr ".u" 0.733;
	setAttr ".fm" yes;
createNode motionPath -n "L_Lip_Bot_7_motionPath";
	rename -uid "97065C37-7B47-153F-E334-E295B9808CF8";
	setAttr ".u" 1;
	setAttr ".fm" yes;
createNode condition -n "jaw_muzzle_top_lip_rotate_condition";
	rename -uid "28C72CB5-E248-EC1A-BE7F-8FA3A66808A6";
	setAttr ".op" 4;
	setAttr ".cf" -type "float3" 1 1 0 ;
createNode condition -n "jaw_muzzle_top_lip_translate_condition";
	rename -uid "F8E0C364-8940-8194-9961-4EAA6D3231BB";
	setAttr ".op" 4;
	setAttr ".cf" -type "float3" 1 0 1 ;
createNode unitConversion -n "unitConversion1";
	rename -uid "A522810B-C447-8685-9612-8E9FF2C8F907";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion2";
	rename -uid "BEEA06D7-124B-DC9B-3A9F-1C8AF57EC2E6";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion3";
	rename -uid "BF4F532E-6A4E-10FF-7F97-53BBE7E6131F";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "jaw_muzzle_corner_trans_multiplyDivide";
	rename -uid "22E68305-5340-CA5E-0467-32960333FE1E";
	setAttr ".i2" -type "float3" 0.5 0.5 0.5 ;
createNode multiplyDivide -n "jaw_muzzle_corner_rot_multiplyDivide";
	rename -uid "1700B266-B344-F5C7-E4BA-CA9A16A0889B";
	setAttr ".i2" -type "float3" 0.5 0.5 0.5 ;
createNode unitConversion -n "unitConversion4";
	rename -uid "18680F40-2845-943F-F12C-DEA0D170C7B8";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion5";
	rename -uid "8E781EE8-7043-F532-7B31-37AD7996A714";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion6";
	rename -uid "3113B541-CB4B-09B2-1A0B-38BC42A75A04";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion7";
	rename -uid "420B05AA-5243-414C-1A8D-A692914E2800";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion8";
	rename -uid "CE5D5745-5842-729D-EA55-EEAAB17D1A81";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion9";
	rename -uid "ACCF771D-E144-C679-57BB-44AB2E7BEFD0";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "multiplyDivide1";
	rename -uid "E802F979-314F-87B3-3A5A-E0994B2ABA0C";
	setAttr ".i2" -type "float3" 0 0 0 ;
createNode multiplyDivide -n "multiplyDivide2";
	rename -uid "232B5B15-644F-5E1F-A6D8-06AD43E571A8";
createNode multiplyDivide -n "multiplyDivide3";
	rename -uid "6FC84ED9-3F4F-B143-20D8-69B68BC2C3A1";
	setAttr ".i2" -type "float3" 0 -1 0 ;
createNode multiplyDivide -n "multiplyDivide4";
	rename -uid "121C07D5-8445-5016-5266-0CB2D21454F6";
	setAttr ".i2" -type "float3" -1 0 0 ;
createNode multiplyDivide -n "multiplyDivide5";
	rename -uid "201EE044-DB4D-E1AD-EF9A-0BA29DD81377";
	setAttr ".i2" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "multiplyDivide6";
	rename -uid "A1DFF917-F84C-8AEF-39B0-FAAC50486455";
	setAttr ".i2" -type "float3" -1 1 0 ;
createNode multiplyDivide -n "multiplyDivide7";
	rename -uid "582439C7-624A-F78C-F6CC-1695CAF80B27";
	setAttr ".i2" -type "float3" 1 1 0 ;
createNode multiplyDivide -n "multiplyDivide8";
	rename -uid "794463F1-CB41-F28A-0195-FB9F59C88273";
	setAttr ".i2" -type "float3" -1 -1 0 ;
createNode multiplyDivide -n "multiplyDivide9";
	rename -uid "B5769551-A24C-A600-7A49-7DAF21B4425C";
	setAttr ".i2" -type "float3" 1 -1 0 ;
createNode unitConversion -n "unitConversion10";
	rename -uid "3DC1F584-B344-79C4-A04A-4297E9205243";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion11";
	rename -uid "113BD14C-6E49-0EC2-5ADA-98878F5A6CDA";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion12";
	rename -uid "B7627370-3742-67E3-5E58-6D99239588AD";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion13";
	rename -uid "70DB5ECE-4A4E-05DC-AFC1-748610BD7675";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion14";
	rename -uid "E185FCA5-1743-E7DC-357D-E5BAF79EC57D";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion15";
	rename -uid "41F75258-EA46-9BBF-8260-03BA6F33C590";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion16";
	rename -uid "BB2FE78A-D042-1664-351F-0F933BB5EC5C";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion17";
	rename -uid "057D966B-5A45-D70E-744F-9F9978CE9429";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion18";
	rename -uid "0FA25873-824D-3D9C-89A1-82896A474B44";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion19";
	rename -uid "C14636BA-B640-54A0-5188-D88DD9B9A473";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion20";
	rename -uid "D5B8CE22-EF4F-47CD-78AD-8D918CEC986E";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion21";
	rename -uid "545F2695-B34D-6AE4-D000-5CA8977393B8";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion22";
	rename -uid "91E4238C-744C-9453-9A42-F0BD20310D6D";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion23";
	rename -uid "1FFF8362-3243-3138-998E-24A870E9D65C";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion24";
	rename -uid "B7711348-DB45-941E-BB68-9DADE32790B7";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion25";
	rename -uid "BCF8F25C-1646-61FB-655C-CFBD1320839C";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion26";
	rename -uid "AD003208-BD4A-5D76-8BE7-8E9723E45359";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion27";
	rename -uid "87B266DB-6144-93D0-A02F-4A877E91F2B2";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion28";
	rename -uid "030B15EF-B248-BE19-1D10-58A5F3CDCEFA";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion29";
	rename -uid "A5F55583-B74D-CF25-3F61-32A96B328DDC";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion30";
	rename -uid "4FABCB63-B74A-6BBD-8182-A0ACCFF748CF";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion31";
	rename -uid "A0F87464-CB42-E266-B60C-15A25D5E4A45";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion32";
	rename -uid "447B4F05-5043-98C8-ADC8-3BB6655A3A10";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion33";
	rename -uid "79C834D9-6B4B-D695-E8E3-678AA5B27BA5";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion34";
	rename -uid "176D5365-2447-49F0-24FD-52AC5A1A2476";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion35";
	rename -uid "C14913C5-2248-B430-9B65-8181EEB5AA09";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion36";
	rename -uid "F5505390-0C45-CD3D-39A8-28BCF3DCF25F";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion37";
	rename -uid "4BF319CC-D442-BE11-7535-83AB28663EC4";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion38";
	rename -uid "0693B83F-F540-F97F-FE6D-B28150835C46";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion39";
	rename -uid "B00F2745-8B4D-DBFC-035D-57A4B788C0BF";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "multiplyDivide10";
	rename -uid "2A1F698F-014C-319F-4446-84AB6E1A7010";
	setAttr ".i2" -type "float3" 0 0 0 ;
createNode multiplyDivide -n "multiplyDivide11";
	rename -uid "043B26AD-344A-3080-DBA1-98A67BEDD464";
createNode multiplyDivide -n "multiplyDivide12";
	rename -uid "EEC8B475-354D-7A91-B480-288253F618BC";
	setAttr ".i2" -type "float3" 0 -1 0 ;
createNode multiplyDivide -n "multiplyDivide13";
	rename -uid "E67B2A5E-384C-8661-B2AB-D8BB1E88E7ED";
	setAttr ".i2" -type "float3" -1 0 0 ;
createNode multiplyDivide -n "multiplyDivide14";
	rename -uid "CA3E2A7D-2048-1664-4218-5A8BEECD57F4";
	setAttr ".i2" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "multiplyDivide15";
	rename -uid "E9B385B8-894C-5F4C-F047-808A59BE4235";
	setAttr ".i2" -type "float3" -1 1 0 ;
createNode multiplyDivide -n "multiplyDivide16";
	rename -uid "F30C89F1-1941-FAED-13ED-F384063BE559";
	setAttr ".i2" -type "float3" 1 1 0 ;
createNode multiplyDivide -n "multiplyDivide17";
	rename -uid "FB205B6D-6E41-725B-CA18-9AA0F068F012";
	setAttr ".i2" -type "float3" -1 -1 0 ;
createNode multiplyDivide -n "multiplyDivide18";
	rename -uid "69FA28D3-F746-D05E-9E27-C3866BF0A3C9";
	setAttr ".i2" -type "float3" 1 -1 0 ;
createNode unitConversion -n "unitConversion40";
	rename -uid "42CC6305-EC46-5D73-B5C0-FCBD55D210DA";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion41";
	rename -uid "B9DD8EE1-0B4A-434C-5B46-8B98ABDE56FA";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion42";
	rename -uid "2762BE99-EA44-EE02-826F-EA83DDBD9139";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion43";
	rename -uid "02630629-174E-EF3B-613E-99A058D27769";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion44";
	rename -uid "BED54764-A241-5B10-F220-8DA7AB28B72F";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion45";
	rename -uid "0FDD18F6-FC46-706C-61FA-4C990D970DF3";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion46";
	rename -uid "2F8E059C-7E47-12BB-2CCF-FA9769F20D96";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion47";
	rename -uid "0085A0F4-4D4E-1A70-4394-3A8079807747";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion48";
	rename -uid "D8CD125C-B24A-5F4B-D19B-DDB16D87ED3F";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion49";
	rename -uid "1B01047B-1C4F-AF5E-8CE6-098DD9C163FC";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion50";
	rename -uid "AA68AD14-9642-4987-19BB-AE991F3CB69B";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion51";
	rename -uid "953A74E5-6143-1EC0-4684-479C95B368AF";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion52";
	rename -uid "E9040A6D-BA4A-ADD6-FDA5-7C930593A611";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion53";
	rename -uid "628E4B78-3D48-540F-ACB0-36B119061F3D";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion54";
	rename -uid "8FD4E5D5-FF4E-72B7-B668-608B15D913EE";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion55";
	rename -uid "52D4C1C0-C742-C2EE-3D41-6FA1EE186E97";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion56";
	rename -uid "BCA37140-CF44-71A4-13B5-F499947CECDC";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion57";
	rename -uid "BF592A47-1944-FD63-D2CC-569E965B8ACC";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion58";
	rename -uid "DAF5D079-6941-41A2-E224-BB9D2DD80237";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion59";
	rename -uid "330154F5-C24B-E9F0-A62B-B2B281D7A7C8";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion60";
	rename -uid "B015CBE4-844F-D444-D480-BB8907D607D9";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion61";
	rename -uid "C3EB4BA0-2944-A4B8-2CC8-19B11848041C";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion62";
	rename -uid "3C0E846E-DF47-9179-6C95-29882791D757";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion63";
	rename -uid "030B084C-444E-7593-A421-B4B4909D4B06";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion64";
	rename -uid "B2E6B9BA-6F40-A06D-0F7E-D39F3E97BE3E";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion65";
	rename -uid "53350306-A648-6094-0AC5-299FCB971414";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion66";
	rename -uid "2EBCFC55-8443-B3D4-206B-54AA0C967D08";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion67";
	rename -uid "850405FD-5546-4239-E9C9-4B9A17EF4F6B";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion68";
	rename -uid "2AF430C8-7049-67D8-5B4F-79A7C9F015C5";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion69";
	rename -uid "82E34D71-3245-F72E-3FA4-968DC13AC7CD";
	setAttr ".cf" 0.017453292519943295;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo4";
	rename -uid "70A90A72-9641-BE67-4CC1-17812D0AAC85";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -5646.6954293796907 4344.0474464306835 ;
	setAttr ".tgi[0].vh" -type "double2" -4480.6851205753164 5017.8569434654237 ;
	setAttr -s 75 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -5002.85693359375;
	setAttr ".tgi[0].ni[0].y" 4808.5712890625;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" -5005.71435546875;
	setAttr ".tgi[0].ni[1].y" 5125.71435546875;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" -5002.85693359375;
	setAttr ".tgi[0].ni[2].y" 4491.4287109375;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" -5157.14306640625;
	setAttr ".tgi[0].ni[3].y" 894.28570556640625;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" -5157.14306640625;
	setAttr ".tgi[0].ni[4].y" 6994.28564453125;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" -5157.14306640625;
	setAttr ".tgi[0].ni[5].y" 7168.5712890625;
	setAttr ".tgi[0].ni[5].nvs" 1923;
	setAttr ".tgi[0].ni[6].x" -5157.14306640625;
	setAttr ".tgi[0].ni[6].y" 6820;
	setAttr ".tgi[0].ni[6].nvs" 1923;
	setAttr ".tgi[0].ni[7].x" -5157.14306640625;
	setAttr ".tgi[0].ni[7].y" 6645.71435546875;
	setAttr ".tgi[0].ni[7].nvs" 1923;
	setAttr ".tgi[0].ni[8].x" -5157.14306640625;
	setAttr ".tgi[0].ni[8].y" 6471.4287109375;
	setAttr ".tgi[0].ni[8].nvs" 1923;
	setAttr ".tgi[0].ni[9].x" -5157.14306640625;
	setAttr ".tgi[0].ni[9].y" 6297.14306640625;
	setAttr ".tgi[0].ni[9].nvs" 1923;
	setAttr ".tgi[0].ni[10].x" -5157.14306640625;
	setAttr ".tgi[0].ni[10].y" 1417.142822265625;
	setAttr ".tgi[0].ni[10].nvs" 1923;
	setAttr ".tgi[0].ni[11].x" -5157.14306640625;
	setAttr ".tgi[0].ni[11].y" 4380;
	setAttr ".tgi[0].ni[11].nvs" 1923;
	setAttr ".tgi[0].ni[12].x" -5157.14306640625;
	setAttr ".tgi[0].ni[12].y" 4205.71435546875;
	setAttr ".tgi[0].ni[12].nvs" 1923;
	setAttr ".tgi[0].ni[13].x" -5157.14306640625;
	setAttr ".tgi[0].ni[13].y" 3857.142822265625;
	setAttr ".tgi[0].ni[13].nvs" 1923;
	setAttr ".tgi[0].ni[14].x" -5157.14306640625;
	setAttr ".tgi[0].ni[14].y" 4031.428466796875;
	setAttr ".tgi[0].ni[14].nvs" 1923;
	setAttr ".tgi[0].ni[15].x" -5157.14306640625;
	setAttr ".tgi[0].ni[15].y" 3682.857177734375;
	setAttr ".tgi[0].ni[15].nvs" 1923;
	setAttr ".tgi[0].ni[16].x" -5157.14306640625;
	setAttr ".tgi[0].ni[16].y" 3508.571533203125;
	setAttr ".tgi[0].ni[16].nvs" 1923;
	setAttr ".tgi[0].ni[17].x" -5157.14306640625;
	setAttr ".tgi[0].ni[17].y" 3334.28564453125;
	setAttr ".tgi[0].ni[17].nvs" 1923;
	setAttr ".tgi[0].ni[18].x" -5157.14306640625;
	setAttr ".tgi[0].ni[18].y" 3160;
	setAttr ".tgi[0].ni[18].nvs" 1923;
	setAttr ".tgi[0].ni[19].x" -5157.14306640625;
	setAttr ".tgi[0].ni[19].y" 9545.7138671875;
	setAttr ".tgi[0].ni[19].nvs" 1923;
	setAttr ".tgi[0].ni[20].x" -5157.14306640625;
	setAttr ".tgi[0].ni[20].y" 2985.71435546875;
	setAttr ".tgi[0].ni[20].nvs" 1923;
	setAttr ".tgi[0].ni[21].x" -5157.14306640625;
	setAttr ".tgi[0].ni[21].y" 9362.857421875;
	setAttr ".tgi[0].ni[21].nvs" 1923;
	setAttr ".tgi[0].ni[22].x" -5157.14306640625;
	setAttr ".tgi[0].ni[22].y" 2637.142822265625;
	setAttr ".tgi[0].ni[22].nvs" 1923;
	setAttr ".tgi[0].ni[23].x" -5157.14306640625;
	setAttr ".tgi[0].ni[23].y" 2811.428466796875;
	setAttr ".tgi[0].ni[23].nvs" 1923;
	setAttr ".tgi[0].ni[24].x" -5157.14306640625;
	setAttr ".tgi[0].ni[24].y" 9180;
	setAttr ".tgi[0].ni[24].nvs" 1923;
	setAttr ".tgi[0].ni[25].x" -5157.14306640625;
	setAttr ".tgi[0].ni[25].y" 8997.142578125;
	setAttr ".tgi[0].ni[25].nvs" 1923;
	setAttr ".tgi[0].ni[26].x" -5157.14306640625;
	setAttr ".tgi[0].ni[26].y" 2462.857177734375;
	setAttr ".tgi[0].ni[26].nvs" 1923;
	setAttr ".tgi[0].ni[27].x" -5157.14306640625;
	setAttr ".tgi[0].ni[27].y" 8814.2861328125;
	setAttr ".tgi[0].ni[27].nvs" 1923;
	setAttr ".tgi[0].ni[28].x" -5157.14306640625;
	setAttr ".tgi[0].ni[28].y" 2288.571533203125;
	setAttr ".tgi[0].ni[28].nvs" 1923;
	setAttr ".tgi[0].ni[29].x" -5157.14306640625;
	setAttr ".tgi[0].ni[29].y" 2114.28564453125;
	setAttr ".tgi[0].ni[29].nvs" 1923;
	setAttr ".tgi[0].ni[30].x" -5157.14306640625;
	setAttr ".tgi[0].ni[30].y" 8631.4287109375;
	setAttr ".tgi[0].ni[30].nvs" 1923;
	setAttr ".tgi[0].ni[31].x" -5157.14306640625;
	setAttr ".tgi[0].ni[31].y" 1765.7142333984375;
	setAttr ".tgi[0].ni[31].nvs" 1923;
	setAttr ".tgi[0].ni[32].x" -5157.14306640625;
	setAttr ".tgi[0].ni[32].y" 1940;
	setAttr ".tgi[0].ni[32].nvs" 1923;
	setAttr ".tgi[0].ni[33].x" -5157.14306640625;
	setAttr ".tgi[0].ni[33].y" 8448.5712890625;
	setAttr ".tgi[0].ni[33].nvs" 1923;
	setAttr ".tgi[0].ni[34].x" -5157.14306640625;
	setAttr ".tgi[0].ni[34].y" 1591.4285888671875;
	setAttr ".tgi[0].ni[34].nvs" 1923;
	setAttr ".tgi[0].ni[35].x" -5157.14306640625;
	setAttr ".tgi[0].ni[35].y" 8265.7138671875;
	setAttr ".tgi[0].ni[35].nvs" 1923;
	setAttr ".tgi[0].ni[36].x" -5157.14306640625;
	setAttr ".tgi[0].ni[36].y" 1068.5714111328125;
	setAttr ".tgi[0].ni[36].nvs" 1923;
	setAttr ".tgi[0].ni[37].x" -5157.14306640625;
	setAttr ".tgi[0].ni[37].y" 720;
	setAttr ".tgi[0].ni[37].nvs" 1923;
	setAttr ".tgi[0].ni[38].x" -5157.14306640625;
	setAttr ".tgi[0].ni[38].y" 7900;
	setAttr ".tgi[0].ni[38].nvs" 1923;
	setAttr ".tgi[0].ni[39].x" -5157.14306640625;
	setAttr ".tgi[0].ni[39].y" 545.71429443359375;
	setAttr ".tgi[0].ni[39].nvs" 1923;
	setAttr ".tgi[0].ni[40].x" -5157.14306640625;
	setAttr ".tgi[0].ni[40].y" 371.42855834960938;
	setAttr ".tgi[0].ni[40].nvs" 1923;
	setAttr ".tgi[0].ni[41].x" -5157.14306640625;
	setAttr ".tgi[0].ni[41].y" 197.14285278320312;
	setAttr ".tgi[0].ni[41].nvs" 1923;
	setAttr ".tgi[0].ni[42].x" -5157.14306640625;
	setAttr ".tgi[0].ni[42].y" 22.857143402099609;
	setAttr ".tgi[0].ni[42].nvs" 1923;
	setAttr ".tgi[0].ni[43].x" -5157.14306640625;
	setAttr ".tgi[0].ni[43].y" -151.42857360839844;
	setAttr ".tgi[0].ni[43].nvs" 1923;
	setAttr ".tgi[0].ni[44].x" -5157.14306640625;
	setAttr ".tgi[0].ni[44].y" -325.71429443359375;
	setAttr ".tgi[0].ni[44].nvs" 1923;
	setAttr ".tgi[0].ni[45].x" -5157.14306640625;
	setAttr ".tgi[0].ni[45].y" -500;
	setAttr ".tgi[0].ni[45].nvs" 1923;
	setAttr ".tgi[0].ni[46].x" -5157.14306640625;
	setAttr ".tgi[0].ni[46].y" -674.28570556640625;
	setAttr ".tgi[0].ni[46].nvs" 1923;
	setAttr ".tgi[0].ni[47].x" -5157.14306640625;
	setAttr ".tgi[0].ni[47].y" 7717.14306640625;
	setAttr ".tgi[0].ni[47].nvs" 1923;
	setAttr ".tgi[0].ni[48].x" -5157.14306640625;
	setAttr ".tgi[0].ni[48].y" -848.5714111328125;
	setAttr ".tgi[0].ni[48].nvs" 1923;
	setAttr ".tgi[0].ni[49].x" -5157.14306640625;
	setAttr ".tgi[0].ni[49].y" -1022.8571166992188;
	setAttr ".tgi[0].ni[49].nvs" 1923;
	setAttr ".tgi[0].ni[50].x" -5157.14306640625;
	setAttr ".tgi[0].ni[50].y" 7534.28564453125;
	setAttr ".tgi[0].ni[50].nvs" 1923;
	setAttr ".tgi[0].ni[51].x" -5157.14306640625;
	setAttr ".tgi[0].ni[51].y" -1197.142822265625;
	setAttr ".tgi[0].ni[51].nvs" 1923;
	setAttr ".tgi[0].ni[52].x" -5157.14306640625;
	setAttr ".tgi[0].ni[52].y" 7351.4287109375;
	setAttr ".tgi[0].ni[52].nvs" 1923;
	setAttr ".tgi[0].ni[53].x" -5157.14306640625;
	setAttr ".tgi[0].ni[53].y" -1371.4285888671875;
	setAttr ".tgi[0].ni[53].nvs" 1923;
	setAttr ".tgi[0].ni[54].x" -5157.14306640625;
	setAttr ".tgi[0].ni[54].y" 1242.857177734375;
	setAttr ".tgi[0].ni[54].nvs" 1923;
	setAttr ".tgi[0].ni[55].x" -5157.14306640625;
	setAttr ".tgi[0].ni[55].y" 8082.85693359375;
	setAttr ".tgi[0].ni[55].nvs" 1923;
	setAttr ".tgi[0].ni[56].x" -5157.14306640625;
	setAttr ".tgi[0].ni[56].y" 10642.857421875;
	setAttr ".tgi[0].ni[56].nvs" 1923;
	setAttr ".tgi[0].ni[57].x" -5157.14306640625;
	setAttr ".tgi[0].ni[57].y" 5251.4287109375;
	setAttr ".tgi[0].ni[57].nvs" 1923;
	setAttr ".tgi[0].ni[58].x" -5157.14306640625;
	setAttr ".tgi[0].ni[58].y" 6122.85693359375;
	setAttr ".tgi[0].ni[58].nvs" 1923;
	setAttr ".tgi[0].ni[59].x" -5157.14306640625;
	setAttr ".tgi[0].ni[59].y" 5948.5712890625;
	setAttr ".tgi[0].ni[59].nvs" 1923;
	setAttr ".tgi[0].ni[60].x" -5157.14306640625;
	setAttr ".tgi[0].ni[60].y" 5774.28564453125;
	setAttr ".tgi[0].ni[60].nvs" 1923;
	setAttr ".tgi[0].ni[61].x" -5157.14306640625;
	setAttr ".tgi[0].ni[61].y" 10460;
	setAttr ".tgi[0].ni[61].nvs" 1923;
	setAttr ".tgi[0].ni[62].x" -5157.14306640625;
	setAttr ".tgi[0].ni[62].y" 10277.142578125;
	setAttr ".tgi[0].ni[62].nvs" 1923;
	setAttr ".tgi[0].ni[63].x" -5157.14306640625;
	setAttr ".tgi[0].ni[63].y" 5600;
	setAttr ".tgi[0].ni[63].nvs" 1923;
	setAttr ".tgi[0].ni[64].x" -5157.14306640625;
	setAttr ".tgi[0].ni[64].y" 5425.71435546875;
	setAttr ".tgi[0].ni[64].nvs" 1923;
	setAttr ".tgi[0].ni[65].x" -5157.14306640625;
	setAttr ".tgi[0].ni[65].y" 5077.14306640625;
	setAttr ".tgi[0].ni[65].nvs" 1923;
	setAttr ".tgi[0].ni[66].x" -5157.14306640625;
	setAttr ".tgi[0].ni[66].y" 4728.5712890625;
	setAttr ".tgi[0].ni[66].nvs" 1923;
	setAttr ".tgi[0].ni[67].x" -5157.14306640625;
	setAttr ".tgi[0].ni[67].y" 9728.5712890625;
	setAttr ".tgi[0].ni[67].nvs" 1923;
	setAttr ".tgi[0].ni[68].x" -5157.14306640625;
	setAttr ".tgi[0].ni[68].y" 4554.28564453125;
	setAttr ".tgi[0].ni[68].nvs" 1923;
	setAttr ".tgi[0].ni[69].x" -5157.14306640625;
	setAttr ".tgi[0].ni[69].y" 10094.2861328125;
	setAttr ".tgi[0].ni[69].nvs" 1923;
	setAttr ".tgi[0].ni[70].x" -5157.14306640625;
	setAttr ".tgi[0].ni[70].y" 4902.85693359375;
	setAttr ".tgi[0].ni[70].nvs" 1923;
	setAttr ".tgi[0].ni[71].x" -5157.14306640625;
	setAttr ".tgi[0].ni[71].y" 9911.4287109375;
	setAttr ".tgi[0].ni[71].nvs" 1923;
	setAttr ".tgi[0].ni[72].x" -5157.14306640625;
	setAttr ".tgi[0].ni[72].y" 10845.7138671875;
	setAttr ".tgi[0].ni[72].nvs" 1923;
	setAttr ".tgi[0].ni[73].x" -5497.14306640625;
	setAttr ".tgi[0].ni[73].y" 4741.4287109375;
	setAttr ".tgi[0].ni[73].nvs" 1923;
	setAttr ".tgi[0].ni[74].x" -4738.5712890625;
	setAttr ".tgi[0].ni[74].y" 4737.14306640625;
	setAttr ".tgi[0].ni[74].nvs" 1923;
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "61C32BB2-144F-D475-0B8A-9DA367259197";
	setAttr ".s" 16;
createNode animCurveUU -n "EyeLookAt_grp_parentConstraint1_eye_headW1";
	rename -uid "59728927-354F-8F20-52C4-0086D1E22E12";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1 0;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo5";
	rename -uid "CE7DC6BC-714B-B177-56EC-D9935AA720DB";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -968.83200899419637 -625.2187282497548 ;
	setAttr ".tgi[0].vh" -type "double2" 549.37223627101048 641.54790541790192 ;
	setAttr -s 16 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -968.5714111328125;
	setAttr ".tgi[0].ni[0].y" -18.571428298950195;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" -165.71427917480469;
	setAttr ".tgi[0].ni[1].y" -24.285715103149414;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" 755.71429443359375;
	setAttr ".tgi[0].ni[2].y" 248.57142639160156;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" 448.57144165039062;
	setAttr ".tgi[0].ni[3].y" 248.57142639160156;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" -968.5714111328125;
	setAttr ".tgi[0].ni[4].y" 147.14285278320312;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" -661.4285888671875;
	setAttr ".tgi[0].ni[5].y" 292.85714721679688;
	setAttr ".tgi[0].ni[5].nvs" 1923;
	setAttr ".tgi[0].ni[6].x" -165.71427917480469;
	setAttr ".tgi[0].ni[6].y" 130;
	setAttr ".tgi[0].ni[6].nvs" 1923;
	setAttr ".tgi[0].ni[7].x" 448.57144165039062;
	setAttr ".tgi[0].ni[7].y" -55.714286804199219;
	setAttr ".tgi[0].ni[7].nvs" 1923;
	setAttr ".tgi[0].ni[8].x" -661.4285888671875;
	setAttr ".tgi[0].ni[8].y" 1.4285714626312256;
	setAttr ".tgi[0].ni[8].nvs" 1923;
	setAttr ".tgi[0].ni[9].x" 141.42857360839844;
	setAttr ".tgi[0].ni[9].y" -55.714286804199219;
	setAttr ".tgi[0].ni[9].nvs" 1923;
	setAttr ".tgi[0].ni[10].x" -165.71427917480469;
	setAttr ".tgi[0].ni[10].y" -170;
	setAttr ".tgi[0].ni[10].nvs" 1923;
	setAttr ".tgi[0].ni[11].x" -165.71427917480469;
	setAttr ".tgi[0].ni[11].y" 284.28570556640625;
	setAttr ".tgi[0].ni[11].nvs" 1923;
	setAttr ".tgi[0].ni[12].x" 755.71429443359375;
	setAttr ".tgi[0].ni[12].y" -55.714286804199219;
	setAttr ".tgi[0].ni[12].nvs" 1923;
	setAttr ".tgi[0].ni[13].x" 141.42857360839844;
	setAttr ".tgi[0].ni[13].y" 248.57142639160156;
	setAttr ".tgi[0].ni[13].nvs" 1923;
	setAttr ".tgi[0].ni[14].x" -661.4285888671875;
	setAttr ".tgi[0].ni[14].y" -172.85714721679688;
	setAttr ".tgi[0].ni[14].nvs" 1923;
	setAttr ".tgi[0].ni[15].x" -661.4285888671875;
	setAttr ".tgi[0].ni[15].y" 167.14285278320312;
	setAttr ".tgi[0].ni[15].nvs" 1923;
createNode animCurveUU -n "EyeLookAt_grp_parentConstraint2_eye_headW1";
	rename -uid "2DBE0137-9B4D-3F1A-B250-2A904E67BD36";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1 0;
createNode materialInfo -n "materialInfo28";
	rename -uid "D55581F3-4AA4-67B4-8B98-FA927674B651";
createNode materialInfo -n "materialInfo29";
	rename -uid "917AAA76-4453-4CFC-164E-CFA378DB3BBF";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "83504D3A-4236-D95A-3711-449892A3CCFC";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" 53399.036031813492 2156.9844356627286 ;
	setAttr ".tgi[0].vh" -type "double2" 53866.384741684691 2265.4761004542588 ;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "B26F6CFA-4352-6A31-C6E4-A0BF3496EC00";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" 2668.7746475676031 1439.285657093641 ;
	setAttr ".tgi[0].vh" -type "double2" 4410.9869758698514 2315.4760984674372 ;
createNode animCurveUU -n "EyeLookAt_grp_parentConstraint3_eye_headW0";
	rename -uid "1A365E46-4A6C-1FED-D362-CD82E3AF0169";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1 0;
createNode animCurveUU -n "EyeLookAt_grp_parentConstraint3_eye_worldW1";
	rename -uid "D4402407-4291-9D20-E631-9ABD68A32F4F";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 1;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 0;
	setAttr -av -k on ".unw";
	setAttr -av -k on ".etw";
	setAttr -av -k on ".tps";
	setAttr -av -k on ".tms";
select -ne :hardwareRenderingGlobals;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -av -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".rm";
	setAttr -k on ".lm";
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr -k on ".hom";
	setAttr -k on ".hodm";
	setAttr -k on ".xry";
	setAttr -k on ".jxr";
	setAttr -k on ".sslt";
	setAttr -k on ".cbr";
	setAttr -k on ".bbr";
	setAttr -av -k on ".mhl";
	setAttr -k on ".cons";
	setAttr -k on ".vac";
	setAttr -av -k on ".hwi";
	setAttr -k on ".csvd";
	setAttr -av -k on ".ta";
	setAttr -av -k on ".tq";
	setAttr -k on ".ts";
	setAttr -av -k on ".etmr";
	setAttr -av -k on ".tmr";
	setAttr -av -k on ".aoon";
	setAttr -av -k on ".aoam";
	setAttr -av -k on ".aora";
	setAttr -k on ".aofr";
	setAttr -av -k on ".aosm";
	setAttr -av -k on ".hff";
	setAttr -av -k on ".hfd";
	setAttr -av -k on ".hfs";
	setAttr -av -k on ".hfe";
	setAttr -av ".hfc";
	setAttr -av -k on ".hfcr";
	setAttr -av -k on ".hfcg";
	setAttr -av -k on ".hfcb";
	setAttr -av -k on ".hfa";
	setAttr -av -k on ".mbe";
	setAttr -k on ".mbt";
	setAttr -av -k on ".mbsof";
	setAttr -k on ".mbsc";
	setAttr -k on ".mbc";
	setAttr -k on ".mbfa";
	setAttr -k on ".mbftb";
	setAttr -k on ".mbftg";
	setAttr -k on ".mbftr";
	setAttr -k on ".mbfta";
	setAttr -k on ".mbfe";
	setAttr -k on ".mbme";
	setAttr -k on ".mbcsx";
	setAttr -k on ".mbcsy";
	setAttr -k on ".mbasx";
	setAttr -k on ".mbasy";
	setAttr -av -k on ".blen";
	setAttr -k on ".blth";
	setAttr -k on ".blfr";
	setAttr -k on ".blfa";
	setAttr -av -k on ".blat";
	setAttr -av -k on ".msaa";
	setAttr -av -k on ".aasc";
	setAttr -k on ".aasq";
	setAttr -k on ".laa";
	setAttr ".fprt" yes;
	setAttr -k on ".rtfm";
select -ne :renderPartition;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".u";
select -ne :defaultRenderingList1;
	setAttr -k on ".ihi";
select -ne :initialShadingGroup;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".bbx";
	setAttr -k on ".vwm";
	setAttr -k on ".tpv";
	setAttr -k on ".uit";
	setAttr -k on ".mwc";
	setAttr -av -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
	setAttr -cb on ".ai_override";
	setAttr -k on ".ai_surface_shader";
	setAttr -cb on ".ai_surface_shaderr";
	setAttr -cb on ".ai_surface_shaderg";
	setAttr -cb on ".ai_surface_shaderb";
	setAttr -k on ".ai_volume_shader";
	setAttr -cb on ".ai_volume_shaderr";
	setAttr -cb on ".ai_volume_shaderg";
	setAttr -cb on ".ai_volume_shaderb";
select -ne :initialParticleSE;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".bbx";
	setAttr -k on ".vwm";
	setAttr -k on ".tpv";
	setAttr -k on ".uit";
	setAttr -k on ".mwc";
	setAttr -av -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
	setAttr -cb on ".ai_override";
	setAttr -k on ".ai_surface_shader";
	setAttr -cb on ".ai_surface_shaderr";
	setAttr -cb on ".ai_surface_shaderg";
	setAttr -cb on ".ai_surface_shaderb";
	setAttr -k on ".ai_volume_shader";
	setAttr -cb on ".ai_volume_shaderr";
	setAttr -cb on ".ai_volume_shaderg";
	setAttr -cb on ".ai_volume_shaderb";
lockNode -l 0 -lu 1;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -av -k on ".macc";
	setAttr -av -k on ".macd";
	setAttr -av -k on ".macq";
	setAttr -av -k on ".mcfr";
	setAttr -cb on ".ifg";
	setAttr -av -k on ".clip";
	setAttr -av -k on ".edm";
	setAttr -av -k on ".edl";
	setAttr -av -k on ".ren";
	setAttr -av -k on ".esr";
	setAttr -av -k on ".ors";
	setAttr -cb on ".sdf";
	setAttr -av -k on ".outf";
	setAttr -av -cb on ".imfkey";
	setAttr -av -k on ".gama";
	setAttr -av -k on ".exrc";
	setAttr -av -k on ".expt";
	setAttr -av -k on ".an";
	setAttr -cb on ".ar";
	setAttr -av -k on ".fs";
	setAttr -av -k on ".ef";
	setAttr -av -k on ".bfs";
	setAttr -av -cb on ".me";
	setAttr -cb on ".se";
	setAttr -av -k on ".be";
	setAttr -av -cb on ".ep";
	setAttr -av -k on ".fec";
	setAttr -av -k on ".ofc";
	setAttr -cb on ".ofe";
	setAttr -cb on ".efe";
	setAttr -cb on ".oft";
	setAttr -cb on ".umfn";
	setAttr -cb on ".ufe";
	setAttr -av -k on ".pff";
	setAttr -av -cb on ".peie";
	setAttr -av -cb on ".ifp";
	setAttr -k on ".rv";
	setAttr -av -k on ".comp";
	setAttr -av -k on ".cth";
	setAttr -av -k on ".soll";
	setAttr -av -cb on ".sosl";
	setAttr -av -k on ".rd";
	setAttr -av -k on ".lp";
	setAttr -av -k on ".sp";
	setAttr -av -k on ".shs";
	setAttr -av -k on ".lpr";
	setAttr -cb on ".gv";
	setAttr -cb on ".sv";
	setAttr -av -k on ".mm";
	setAttr -av -k on ".npu";
	setAttr -av -k on ".itf";
	setAttr -av -k on ".shp";
	setAttr -cb on ".isp";
	setAttr -av -k on ".uf";
	setAttr -av -k on ".oi";
	setAttr -av -k on ".rut";
	setAttr -av -k on ".mot";
	setAttr -av -cb on ".mb";
	setAttr -av -k on ".mbf";
	setAttr -av -k on ".mbso";
	setAttr -av -k on ".mbsc";
	setAttr -av -k on ".afp";
	setAttr -av -k on ".pfb";
	setAttr -av -k on ".pram" -type "string" "catch(`pgYetiVRayPreRender`)";
	setAttr -av -k on ".poam" -type "string" "catch(`pgYetiVRayPostRender`)";
	setAttr -av -k on ".prlm";
	setAttr -av -k on ".polm";
	setAttr -av -k on ".prm";
	setAttr -av -k on ".pom";
	setAttr -cb on ".pfrm";
	setAttr -cb on ".pfom";
	setAttr -av -k on ".bll";
	setAttr -av -k on ".bls";
	setAttr -av -k on ".smv";
	setAttr -av -k on ".ubc";
	setAttr -av -k on ".mbc";
	setAttr -cb on ".mbt";
	setAttr -av -k on ".udbx";
	setAttr -av -k on ".smc";
	setAttr -av -k on ".kmv";
	setAttr -cb on ".isl";
	setAttr -cb on ".ism";
	setAttr -cb on ".imb";
	setAttr -av -k on ".rlen";
	setAttr -av -k on ".frts";
	setAttr -av -k on ".tlwd";
	setAttr -av -k on ".tlht";
	setAttr -av -k on ".jfc";
	setAttr -cb on ".rsb";
	setAttr -av -k on ".ope";
	setAttr -av -k on ".oppf";
	setAttr -av -k on ".rcp";
	setAttr -av -k on ".icp";
	setAttr -av -k on ".ocp";
	setAttr -cb on ".hbl";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -av -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av -k on ".w";
	setAttr -av -k on ".h";
	setAttr -av -k on ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av -k on ".dar";
	setAttr -av -k on ".ldar";
	setAttr -av -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -av -k on ".isu";
	setAttr -av -k on ".pdu";
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".ovt" no;
	setAttr ".povt" no;
select -ne :hardwareRenderGlobals;
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -av -k off -cb on ".ctrs" 256;
	setAttr -av -k off -cb on ".btrs" 512;
	setAttr -av -k off -cb on ".fbfm";
	setAttr -av -k off -cb on ".ehql";
	setAttr -av -k off -cb on ".eams";
	setAttr -av -k off -cb on ".eeaa";
	setAttr -av -k off -cb on ".engm";
	setAttr -av -k off -cb on ".mes";
	setAttr -av -k off -cb on ".emb";
	setAttr -av -k off -cb on ".mbbf";
	setAttr -av -k off -cb on ".mbs";
	setAttr -av -k off -cb on ".trm";
	setAttr -av -k off -cb on ".tshc";
	setAttr -av -k off -cb on ".enpt";
	setAttr -av -k off -cb on ".clmt";
	setAttr -av -k off -cb on ".tcov";
	setAttr -av -k off -cb on ".lith";
	setAttr -av -k off -cb on ".sobc";
	setAttr -av -k off -cb on ".cuth";
	setAttr -av -k off -cb on ".hgcd";
	setAttr -av -k off -cb on ".hgci";
	setAttr -av -k off -cb on ".mgcs";
	setAttr -av -k off -cb on ".twa";
	setAttr -av -k off -cb on ".twz";
	setAttr -av -cb on ".hwcc";
	setAttr -av -cb on ".hwdp";
	setAttr -av -cb on ".hwql";
	setAttr -av -k on ".hwfr";
	setAttr -av -k on ".soll";
	setAttr -av -k on ".sosl";
	setAttr -av -k on ".bswa";
	setAttr -av -k on ".shml";
	setAttr -av -k on ".hwel";
connectAttr "locator1_parentConstraint1.ctx" "bindEyeJoint_L.tx";
connectAttr "locator1_parentConstraint1.cty" "bindEyeJoint_L.ty";
connectAttr "locator1_parentConstraint1.ctz" "bindEyeJoint_L.tz";
connectAttr "locator1_parentConstraint1.crx" "bindEyeJoint_L.rx";
connectAttr "locator1_parentConstraint1.cry" "bindEyeJoint_L.ry";
connectAttr "locator1_parentConstraint1.crz" "bindEyeJoint_L.rz";
connectAttr "bindEyeJoint_L.ro" "locator1_parentConstraint1.cro";
connectAttr "bindEyeJoint_L.pim" "locator1_parentConstraint1.cpim";
connectAttr "bindEyeJoint_L.rp" "locator1_parentConstraint1.crp";
connectAttr "bindEyeJoint_L.rpt" "locator1_parentConstraint1.crt";
connectAttr "left_place3d.t" "locator1_parentConstraint1.tg[0].tt";
connectAttr "left_place3d.rp" "locator1_parentConstraint1.tg[0].trp";
connectAttr "left_place3d.rpt" "locator1_parentConstraint1.tg[0].trt";
connectAttr "left_place3d.r" "locator1_parentConstraint1.tg[0].tr";
connectAttr "left_place3d.ro" "locator1_parentConstraint1.tg[0].tro";
connectAttr "left_place3d.s" "locator1_parentConstraint1.tg[0].ts";
connectAttr "left_place3d.pm" "locator1_parentConstraint1.tg[0].tpm";
connectAttr "locator1_parentConstraint1.w0" "locator1_parentConstraint1.tg[0].tw"
		;
connectAttr "locator2_parentConstraint1.ctx" "bindEyeJoint_R.tx";
connectAttr "locator2_parentConstraint1.cty" "bindEyeJoint_R.ty";
connectAttr "locator2_parentConstraint1.ctz" "bindEyeJoint_R.tz";
connectAttr "locator2_parentConstraint1.crx" "bindEyeJoint_R.rx";
connectAttr "locator2_parentConstraint1.cry" "bindEyeJoint_R.ry";
connectAttr "locator2_parentConstraint1.crz" "bindEyeJoint_R.rz";
connectAttr "bindEyeJoint_R.ro" "locator2_parentConstraint1.cro";
connectAttr "bindEyeJoint_R.pim" "locator2_parentConstraint1.cpim";
connectAttr "bindEyeJoint_R.rp" "locator2_parentConstraint1.crp";
connectAttr "bindEyeJoint_R.rpt" "locator2_parentConstraint1.crt";
connectAttr "right_place3d.t" "locator2_parentConstraint1.tg[0].tt";
connectAttr "right_place3d.rp" "locator2_parentConstraint1.tg[0].trp";
connectAttr "right_place3d.rpt" "locator2_parentConstraint1.tg[0].trt";
connectAttr "right_place3d.r" "locator2_parentConstraint1.tg[0].tr";
connectAttr "right_place3d.ro" "locator2_parentConstraint1.tg[0].tro";
connectAttr "right_place3d.s" "locator2_parentConstraint1.tg[0].ts";
connectAttr "right_place3d.pm" "locator2_parentConstraint1.tg[0].tpm";
connectAttr "locator2_parentConstraint1.w0" "locator2_parentConstraint1.tg[0].tw"
		;
connectAttr "left_eye_aim1_jnt_aimConstraint1.crx" "left_eye_aim1_jnt.rx";
connectAttr "left_eye_aim1_jnt_aimConstraint1.cry" "left_eye_aim1_jnt.ry";
connectAttr "left_eye_aim1_jnt_aimConstraint1.crz" "left_eye_aim1_jnt.rz";
connectAttr "left_eye_aim1_jnt.s" "left_eye_aim2_jnt.is";
connectAttr "left_eye_aim1_jnt.pim" "left_eye_aim1_jnt_aimConstraint1.cpim";
connectAttr "left_eye_aim1_jnt.t" "left_eye_aim1_jnt_aimConstraint1.ct";
connectAttr "left_eye_aim1_jnt.rp" "left_eye_aim1_jnt_aimConstraint1.crp";
connectAttr "left_eye_aim1_jnt.rpt" "left_eye_aim1_jnt_aimConstraint1.crt";
connectAttr "left_eye_aim1_jnt.ro" "left_eye_aim1_jnt_aimConstraint1.cro";
connectAttr "left_eye_aim1_jnt.jo" "left_eye_aim1_jnt_aimConstraint1.cjo";
connectAttr "left_eye_aim1_jnt.is" "left_eye_aim1_jnt_aimConstraint1.is";
connectAttr "|eye_rig|EyeLookAt_grp|EyeLookAt|LeftEyeLookAt_grp|LeftEyeLookAt|LeftEyeLookAt.t" "left_eye_aim1_jnt_aimConstraint1.tg[0].tt"
		;
connectAttr "|eye_rig|EyeLookAt_grp|EyeLookAt|LeftEyeLookAt_grp|LeftEyeLookAt|LeftEyeLookAt.rp" "left_eye_aim1_jnt_aimConstraint1.tg[0].trp"
		;
connectAttr "|eye_rig|EyeLookAt_grp|EyeLookAt|LeftEyeLookAt_grp|LeftEyeLookAt|LeftEyeLookAt.rpt" "left_eye_aim1_jnt_aimConstraint1.tg[0].trt"
		;
connectAttr "|eye_rig|EyeLookAt_grp|EyeLookAt|LeftEyeLookAt_grp|LeftEyeLookAt|LeftEyeLookAt.pm" "left_eye_aim1_jnt_aimConstraint1.tg[0].tpm"
		;
connectAttr "left_eye_aim1_jnt_aimConstraint1.w0" "left_eye_aim1_jnt_aimConstraint1.tg[0].tw"
		;
connectAttr "left_eye_aim_grp.wm" "left_eye_aim1_jnt_aimConstraint1.wum";
connectAttr "right_eye_aim1_jnt_aimConstraint1.crx" "right_eye_aim1_jnt.rx";
connectAttr "right_eye_aim1_jnt_aimConstraint1.cry" "right_eye_aim1_jnt.ry";
connectAttr "right_eye_aim1_jnt_aimConstraint1.crz" "right_eye_aim1_jnt.rz";
connectAttr "right_eye_aim1_jnt.s" "right_eye_aim2_jnt.is";
connectAttr "right_eye_aim1_jnt.pim" "right_eye_aim1_jnt_aimConstraint1.cpim";
connectAttr "right_eye_aim1_jnt.t" "right_eye_aim1_jnt_aimConstraint1.ct";
connectAttr "right_eye_aim1_jnt.rp" "right_eye_aim1_jnt_aimConstraint1.crp";
connectAttr "right_eye_aim1_jnt.rpt" "right_eye_aim1_jnt_aimConstraint1.crt";
connectAttr "right_eye_aim1_jnt.ro" "right_eye_aim1_jnt_aimConstraint1.cro";
connectAttr "right_eye_aim1_jnt.jo" "right_eye_aim1_jnt_aimConstraint1.cjo";
connectAttr "right_eye_aim1_jnt.is" "right_eye_aim1_jnt_aimConstraint1.is";
connectAttr "|eye_rig|EyeLookAt_grp|EyeLookAt|RightEyeLookAt_grp|RightEyeLookAt|RightEyeLookAt.t" "right_eye_aim1_jnt_aimConstraint1.tg[0].tt"
		;
connectAttr "|eye_rig|EyeLookAt_grp|EyeLookAt|RightEyeLookAt_grp|RightEyeLookAt|RightEyeLookAt.rp" "right_eye_aim1_jnt_aimConstraint1.tg[0].trp"
		;
connectAttr "|eye_rig|EyeLookAt_grp|EyeLookAt|RightEyeLookAt_grp|RightEyeLookAt|RightEyeLookAt.rpt" "right_eye_aim1_jnt_aimConstraint1.tg[0].trt"
		;
connectAttr "|eye_rig|EyeLookAt_grp|EyeLookAt|RightEyeLookAt_grp|RightEyeLookAt|RightEyeLookAt.pm" "right_eye_aim1_jnt_aimConstraint1.tg[0].tpm"
		;
connectAttr "right_eye_aim1_jnt_aimConstraint1.w0" "right_eye_aim1_jnt_aimConstraint1.tg[0].tw"
		;
connectAttr "right_eye_aim_grp.wm" "right_eye_aim1_jnt_aimConstraint1.wum";
connectAttr "EyeLookAt_grp_parentConstraint3.ctx" "EyeLookAt_grp.tx";
connectAttr "EyeLookAt_grp_parentConstraint3.cty" "EyeLookAt_grp.ty";
connectAttr "EyeLookAt_grp_parentConstraint3.ctz" "EyeLookAt_grp.tz";
connectAttr "EyeLookAt_grp_parentConstraint3.crx" "EyeLookAt_grp.rx";
connectAttr "EyeLookAt_grp_parentConstraint3.cry" "EyeLookAt_grp.ry";
connectAttr "EyeLookAt_grp_parentConstraint3.crz" "EyeLookAt_grp.rz";
connectAttr "makeNurbCircle1.oc" "EyeLookAtShape.cr";
connectAttr "EyeLookAt_grp.ro" "EyeLookAt_grp_parentConstraint3.cro";
connectAttr "EyeLookAt_grp.pim" "EyeLookAt_grp_parentConstraint3.cpim";
connectAttr "EyeLookAt_grp.rp" "EyeLookAt_grp_parentConstraint3.crp";
connectAttr "EyeLookAt_grp.rpt" "EyeLookAt_grp_parentConstraint3.crt";
connectAttr "eye_head.t" "EyeLookAt_grp_parentConstraint3.tg[0].tt";
connectAttr "eye_head.rp" "EyeLookAt_grp_parentConstraint3.tg[0].trp";
connectAttr "eye_head.rpt" "EyeLookAt_grp_parentConstraint3.tg[0].trt";
connectAttr "eye_head.r" "EyeLookAt_grp_parentConstraint3.tg[0].tr";
connectAttr "eye_head.ro" "EyeLookAt_grp_parentConstraint3.tg[0].tro";
connectAttr "eye_head.s" "EyeLookAt_grp_parentConstraint3.tg[0].ts";
connectAttr "eye_head.pm" "EyeLookAt_grp_parentConstraint3.tg[0].tpm";
connectAttr "EyeLookAt_grp_parentConstraint3.w0" "EyeLookAt_grp_parentConstraint3.tg[0].tw"
		;
connectAttr "eye_world.t" "EyeLookAt_grp_parentConstraint3.tg[1].tt";
connectAttr "eye_world.rp" "EyeLookAt_grp_parentConstraint3.tg[1].trp";
connectAttr "eye_world.rpt" "EyeLookAt_grp_parentConstraint3.tg[1].trt";
connectAttr "eye_world.r" "EyeLookAt_grp_parentConstraint3.tg[1].tr";
connectAttr "eye_world.ro" "EyeLookAt_grp_parentConstraint3.tg[1].tro";
connectAttr "eye_world.s" "EyeLookAt_grp_parentConstraint3.tg[1].ts";
connectAttr "eye_world.pm" "EyeLookAt_grp_parentConstraint3.tg[1].tpm";
connectAttr "EyeLookAt_grp_parentConstraint3.w1" "EyeLookAt_grp_parentConstraint3.tg[1].tw"
		;
connectAttr "EyeLookAt_grp_parentConstraint3_eye_headW0.o" "EyeLookAt_grp_parentConstraint3.w0"
		;
connectAttr "EyeLookAt_grp_parentConstraint3_eye_worldW1.o" "EyeLookAt_grp_parentConstraint3.w1"
		;
connectAttr "right_place3d_pointConstraint1.ctx" "right_place3d.tx";
connectAttr "right_place3d_pointConstraint1.cty" "right_place3d.ty";
connectAttr "right_place3d.pim" "right_place3d_pointConstraint1.cpim";
connectAttr "right_place3d.rp" "right_place3d_pointConstraint1.crp";
connectAttr "right_place3d.rpt" "right_place3d_pointConstraint1.crt";
connectAttr "right_eye_aim2_jnt.t" "right_place3d_pointConstraint1.tg[0].tt";
connectAttr "right_eye_aim2_jnt.rp" "right_place3d_pointConstraint1.tg[0].trp";
connectAttr "right_eye_aim2_jnt.rpt" "right_place3d_pointConstraint1.tg[0].trt";
connectAttr "right_eye_aim2_jnt.pm" "right_place3d_pointConstraint1.tg[0].tpm";
connectAttr "right_place3d_pointConstraint1.w0" "right_place3d_pointConstraint1.tg[0].tw"
		;
connectAttr "left_place3d_pointConstraint1.ctx" "left_place3d.tx";
connectAttr "left_place3d_pointConstraint1.cty" "left_place3d.ty";
connectAttr "left_place3d.pim" "left_place3d_pointConstraint1.cpim";
connectAttr "left_place3d.rp" "left_place3d_pointConstraint1.crp";
connectAttr "left_place3d.rpt" "left_place3d_pointConstraint1.crt";
connectAttr "left_eye_aim2_jnt.t" "left_place3d_pointConstraint1.tg[0].tt";
connectAttr "left_eye_aim2_jnt.rp" "left_place3d_pointConstraint1.tg[0].trp";
connectAttr "left_eye_aim2_jnt.rpt" "left_place3d_pointConstraint1.tg[0].trt";
connectAttr "left_eye_aim2_jnt.pm" "left_place3d_pointConstraint1.tg[0].tpm";
connectAttr "left_place3d_pointConstraint1.w0" "left_place3d_pointConstraint1.tg[0].tw"
		;
connectAttr "Lip_Lf.tx" "Corner_Driver_Lf_otDn_rig1_weightDriver.i[0]";
connectAttr "Lip_Lf.ty" "Corner_Driver_Lf_otDn_rig1_weightDriver.i[1]";
connectAttr "multiplyDivide1.ox" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[0].pi[0]"
		;
connectAttr "multiplyDivide1.oy" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[0].pi[1]"
		;
connectAttr "Corner_Driver_Lf_rig.tx" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[0].pv[0]"
		;
connectAttr "Corner_Driver_Lf_rig.ty" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[0].pv[1]"
		;
connectAttr "Corner_Driver_Lf_rig.tz" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[0].pv[2]"
		;
connectAttr "unitConversion10.o" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[0].pv[3]"
		;
connectAttr "unitConversion11.o" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[0].pv[4]"
		;
connectAttr "unitConversion12.o" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[0].pv[5]"
		;
connectAttr "multiplyDivide2.ox" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[1].pi[0]"
		;
connectAttr "multiplyDivide2.oy" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[1].pi[1]"
		;
connectAttr "Corner_Driver_Lf_Up_rig.tx" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[1].pv[0]"
		;
connectAttr "Corner_Driver_Lf_Up_rig.ty" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[1].pv[1]"
		;
connectAttr "Corner_Driver_Lf_Up_rig.tz" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[1].pv[2]"
		;
connectAttr "unitConversion13.o" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[1].pv[3]"
		;
connectAttr "unitConversion14.o" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[1].pv[4]"
		;
connectAttr "unitConversion15.o" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[1].pv[5]"
		;
connectAttr "multiplyDivide3.ox" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[2].pi[0]"
		;
connectAttr "multiplyDivide3.oy" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[2].pi[1]"
		;
connectAttr "Corner_Driver_Lf_Dn_rig.tx" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[2].pv[0]"
		;
connectAttr "Corner_Driver_Lf_Dn_rig.ty" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[2].pv[1]"
		;
connectAttr "Corner_Driver_Lf_Dn_rig.tz" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[2].pv[2]"
		;
connectAttr "unitConversion16.o" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[2].pv[3]"
		;
connectAttr "unitConversion17.o" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[2].pv[4]"
		;
connectAttr "unitConversion18.o" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[2].pv[5]"
		;
connectAttr "multiplyDivide4.ox" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[3].pi[0]"
		;
connectAttr "multiplyDivide4.oy" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[3].pi[1]"
		;
connectAttr "Corner_Driver_Lf_In_rig.tx" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[3].pv[0]"
		;
connectAttr "Corner_Driver_Lf_In_rig.ty" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[3].pv[1]"
		;
connectAttr "Corner_Driver_Lf_In_rig.tz" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[3].pv[2]"
		;
connectAttr "unitConversion19.o" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[3].pv[3]"
		;
connectAttr "unitConversion20.o" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[3].pv[4]"
		;
connectAttr "unitConversion21.o" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[3].pv[5]"
		;
connectAttr "multiplyDivide5.ox" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[4].pi[0]"
		;
connectAttr "multiplyDivide5.oy" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[4].pi[1]"
		;
connectAttr "Corner_Driver_Lf_Ot_rig.tx" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[4].pv[0]"
		;
connectAttr "Corner_Driver_Lf_Ot_rig.ty" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[4].pv[1]"
		;
connectAttr "Corner_Driver_Lf_Ot_rig.tz" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[4].pv[2]"
		;
connectAttr "unitConversion22.o" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[4].pv[3]"
		;
connectAttr "unitConversion23.o" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[4].pv[4]"
		;
connectAttr "unitConversion24.o" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[4].pv[5]"
		;
connectAttr "multiplyDivide6.ox" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[5].pi[0]"
		;
connectAttr "multiplyDivide6.oy" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[5].pi[1]"
		;
connectAttr "Corner_Driver_Lf_inUp_rig.tx" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[5].pv[0]"
		;
connectAttr "Corner_Driver_Lf_inUp_rig.ty" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[5].pv[1]"
		;
connectAttr "Corner_Driver_Lf_inUp_rig.tz" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[5].pv[2]"
		;
connectAttr "unitConversion25.o" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[5].pv[3]"
		;
connectAttr "unitConversion26.o" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[5].pv[4]"
		;
connectAttr "unitConversion27.o" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[5].pv[5]"
		;
connectAttr "multiplyDivide7.ox" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[6].pi[0]"
		;
connectAttr "multiplyDivide7.oy" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[6].pi[1]"
		;
connectAttr "Corner_Driver_Lf_otUp_rig.tx" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[6].pv[0]"
		;
connectAttr "Corner_Driver_Lf_otUp_rig.ty" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[6].pv[1]"
		;
connectAttr "Corner_Driver_Lf_otUp_rig.tz" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[6].pv[2]"
		;
connectAttr "unitConversion28.o" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[6].pv[3]"
		;
connectAttr "unitConversion29.o" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[6].pv[4]"
		;
connectAttr "unitConversion30.o" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[6].pv[5]"
		;
connectAttr "multiplyDivide8.ox" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[7].pi[0]"
		;
connectAttr "multiplyDivide8.oy" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[7].pi[1]"
		;
connectAttr "Corner_Driver_Lf_inDn_rig.tx" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[7].pv[0]"
		;
connectAttr "Corner_Driver_Lf_inDn_rig.ty" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[7].pv[1]"
		;
connectAttr "Corner_Driver_Lf_inDn_rig.tz" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[7].pv[2]"
		;
connectAttr "unitConversion31.o" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[7].pv[3]"
		;
connectAttr "unitConversion32.o" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[7].pv[4]"
		;
connectAttr "unitConversion33.o" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[7].pv[5]"
		;
connectAttr "multiplyDivide9.ox" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[8].pi[0]"
		;
connectAttr "multiplyDivide9.oy" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[8].pi[1]"
		;
connectAttr "Corner_Driver_Lf_otDn_rig.tx" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[8].pv[0]"
		;
connectAttr "Corner_Driver_Lf_otDn_rig.ty" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[8].pv[1]"
		;
connectAttr "Corner_Driver_Lf_otDn_rig.tz" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[8].pv[2]"
		;
connectAttr "unitConversion34.o" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[8].pv[3]"
		;
connectAttr "unitConversion35.o" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[8].pv[4]"
		;
connectAttr "unitConversion36.o" "Corner_Driver_Lf_otDn_rig1_weightDriver.ps[8].pv[5]"
		;
connectAttr "Lip_Rt.tx" "Corner_Driver_Rt_otDn_rig1_weightDriver.i[0]";
connectAttr "Lip_Rt.ty" "Corner_Driver_Rt_otDn_rig1_weightDriver.i[1]";
connectAttr "multiplyDivide10.ox" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[0].pi[0]"
		;
connectAttr "multiplyDivide10.oy" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[0].pi[1]"
		;
connectAttr "Corner_Driver_Rt_rig.tx" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[0].pv[0]"
		;
connectAttr "Corner_Driver_Rt_rig.ty" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[0].pv[1]"
		;
connectAttr "Corner_Driver_Rt_rig.tz" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[0].pv[2]"
		;
connectAttr "unitConversion40.o" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[0].pv[3]"
		;
connectAttr "unitConversion41.o" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[0].pv[4]"
		;
connectAttr "unitConversion42.o" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[0].pv[5]"
		;
connectAttr "multiplyDivide11.ox" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[1].pi[0]"
		;
connectAttr "multiplyDivide11.oy" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[1].pi[1]"
		;
connectAttr "Corner_Driver_Rt_Up_rig.tx" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[1].pv[0]"
		;
connectAttr "Corner_Driver_Rt_Up_rig.ty" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[1].pv[1]"
		;
connectAttr "Corner_Driver_Rt_Up_rig.tz" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[1].pv[2]"
		;
connectAttr "unitConversion43.o" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[1].pv[3]"
		;
connectAttr "unitConversion44.o" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[1].pv[4]"
		;
connectAttr "unitConversion45.o" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[1].pv[5]"
		;
connectAttr "multiplyDivide12.ox" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[2].pi[0]"
		;
connectAttr "multiplyDivide12.oy" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[2].pi[1]"
		;
connectAttr "Corner_Driver_Rt_Dn_rig.tx" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[2].pv[0]"
		;
connectAttr "Corner_Driver_Rt_Dn_rig.ty" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[2].pv[1]"
		;
connectAttr "Corner_Driver_Rt_Dn_rig.tz" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[2].pv[2]"
		;
connectAttr "unitConversion46.o" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[2].pv[3]"
		;
connectAttr "unitConversion47.o" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[2].pv[4]"
		;
connectAttr "unitConversion48.o" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[2].pv[5]"
		;
connectAttr "multiplyDivide13.ox" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[3].pi[0]"
		;
connectAttr "multiplyDivide13.oy" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[3].pi[1]"
		;
connectAttr "Corner_Driver_Rt_In_rig.tx" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[3].pv[0]"
		;
connectAttr "Corner_Driver_Rt_In_rig.ty" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[3].pv[1]"
		;
connectAttr "Corner_Driver_Rt_In_rig.tz" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[3].pv[2]"
		;
connectAttr "unitConversion49.o" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[3].pv[3]"
		;
connectAttr "unitConversion50.o" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[3].pv[4]"
		;
connectAttr "unitConversion51.o" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[3].pv[5]"
		;
connectAttr "multiplyDivide14.ox" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[4].pi[0]"
		;
connectAttr "multiplyDivide14.oy" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[4].pi[1]"
		;
connectAttr "Corner_Driver_Rt_Ot_rig.tx" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[4].pv[0]"
		;
connectAttr "Corner_Driver_Rt_Ot_rig.ty" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[4].pv[1]"
		;
connectAttr "Corner_Driver_Rt_Ot_rig.tz" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[4].pv[2]"
		;
connectAttr "unitConversion52.o" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[4].pv[3]"
		;
connectAttr "unitConversion53.o" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[4].pv[4]"
		;
connectAttr "unitConversion54.o" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[4].pv[5]"
		;
connectAttr "multiplyDivide15.ox" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[5].pi[0]"
		;
connectAttr "multiplyDivide15.oy" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[5].pi[1]"
		;
connectAttr "Corner_Driver_Rt_inUp_rig.tx" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[5].pv[0]"
		;
connectAttr "Corner_Driver_Rt_inUp_rig.ty" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[5].pv[1]"
		;
connectAttr "Corner_Driver_Rt_inUp_rig.tz" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[5].pv[2]"
		;
connectAttr "unitConversion55.o" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[5].pv[3]"
		;
connectAttr "unitConversion56.o" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[5].pv[4]"
		;
connectAttr "unitConversion57.o" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[5].pv[5]"
		;
connectAttr "multiplyDivide16.ox" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[6].pi[0]"
		;
connectAttr "multiplyDivide16.oy" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[6].pi[1]"
		;
connectAttr "Corner_Driver_Rt_otUp_rig.tx" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[6].pv[0]"
		;
connectAttr "Corner_Driver_Rt_otUp_rig.ty" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[6].pv[1]"
		;
connectAttr "Corner_Driver_Rt_otUp_rig.tz" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[6].pv[2]"
		;
connectAttr "unitConversion58.o" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[6].pv[3]"
		;
connectAttr "unitConversion59.o" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[6].pv[4]"
		;
connectAttr "unitConversion60.o" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[6].pv[5]"
		;
connectAttr "multiplyDivide17.ox" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[7].pi[0]"
		;
connectAttr "multiplyDivide17.oy" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[7].pi[1]"
		;
connectAttr "Corner_Driver_Rt_inDn_rig.tx" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[7].pv[0]"
		;
connectAttr "Corner_Driver_Rt_inDn_rig.ty" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[7].pv[1]"
		;
connectAttr "Corner_Driver_Rt_inDn_rig.tz" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[7].pv[2]"
		;
connectAttr "unitConversion61.o" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[7].pv[3]"
		;
connectAttr "unitConversion62.o" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[7].pv[4]"
		;
connectAttr "unitConversion63.o" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[7].pv[5]"
		;
connectAttr "multiplyDivide18.ox" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[8].pi[0]"
		;
connectAttr "multiplyDivide18.oy" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[8].pi[1]"
		;
connectAttr "Corner_Driver_Rt_otDn_rig.tx" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[8].pv[0]"
		;
connectAttr "Corner_Driver_Rt_otDn_rig.ty" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[8].pv[1]"
		;
connectAttr "Corner_Driver_Rt_otDn_rig.tz" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[8].pv[2]"
		;
connectAttr "unitConversion64.o" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[8].pv[3]"
		;
connectAttr "unitConversion65.o" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[8].pv[4]"
		;
connectAttr "unitConversion66.o" "Corner_Driver_Rt_otDn_rig1_weightDriver.ps[8].pv[5]"
		;
connectAttr "Tongue1_grp.t" "Tongue1_grpw.t";
connectAttr "Tongue1_grp.r" "Tongue1_grpw.r";
connectAttr "Tongue1_grp.s" "Tongue1_grpw.s";
connectAttr "Tongue1.t" "Tongue1w.t";
connectAttr "Tongue1.r" "Tongue1w.r";
connectAttr "Tongue1.s" "Tongue1w.s";
connectAttr "Tongue2_grp.t" "Tongue2_grpw.t";
connectAttr "Tongue2_grp.r" "Tongue2_grpw.r";
connectAttr "Tongue2_grp.s" "Tongue2_grpw.s";
connectAttr "Tongue2.t" "Tongue2w.t";
connectAttr "Tongue2.r" "Tongue2w.r";
connectAttr "Tongue2.s" "Tongue2w.s";
connectAttr "Tongue3_grp.t" "Tongue3_grpw.t";
connectAttr "Tongue3_grp.r" "Tongue3_grpw.r";
connectAttr "Tongue3_grp.s" "Tongue3_grpw.s";
connectAttr "Tongue3.t" "Tongue3w.t";
connectAttr "Tongue3.r" "Tongue3w.r";
connectAttr "Tongue3.s" "Tongue3w.s";
connectAttr "Tongue4_grp.t" "Tongue4_grpw.t";
connectAttr "Tongue4_grp.r" "Tongue4_grpw.r";
connectAttr "Tongue4_grp.s" "Tongue4_grpw.s";
connectAttr "Tongue4.t" "Tongue4w.t";
connectAttr "Tongue4.r" "Tongue4w.r";
connectAttr "Tongue4.s" "Tongue4w.s";
connectAttr "LowerTeeth_grp.t" "LowerTeeth_grpw.t";
connectAttr "LowerTeeth_grp.r" "LowerTeeth_grpw.r";
connectAttr "LowerTeeth_grp.s" "LowerTeeth_grpw.s";
connectAttr "LowerTeeth.t" "LowerTeethw.t";
connectAttr "LowerTeeth.r" "LowerTeethw.r";
connectAttr "LowerTeeth.s" "LowerTeethw.s";
connectAttr "UpperTeeth_grp.t" "UpperTeeth_grpw.t";
connectAttr "UpperTeeth_grp.r" "UpperTeeth_grpw.r";
connectAttr "UpperTeeth_grp.s" "UpperTeeth_grpw.s";
connectAttr "UpperTeeth.t" "UpperTeethw.t";
connectAttr "UpperTeeth.r" "UpperTeethw.r";
connectAttr "UpperTeeth.s" "UpperTeethw.s";
connectAttr "tongue1_jnt_parentConstraint1.ctx" "tongue1_jnt.tx";
connectAttr "tongue1_jnt_parentConstraint1.cty" "tongue1_jnt.ty";
connectAttr "tongue1_jnt_parentConstraint1.ctz" "tongue1_jnt.tz";
connectAttr "tongue1_jnt_parentConstraint1.crx" "tongue1_jnt.rx";
connectAttr "tongue1_jnt_parentConstraint1.cry" "tongue1_jnt.ry";
connectAttr "tongue1_jnt_parentConstraint1.crz" "tongue1_jnt.rz";
connectAttr "tongue1_jnt.s" "tongue2_jnt.is";
connectAttr "tongue2_jnt_parentConstraint1.ctx" "tongue2_jnt.tx";
connectAttr "tongue2_jnt_parentConstraint1.cty" "tongue2_jnt.ty";
connectAttr "tongue2_jnt_parentConstraint1.ctz" "tongue2_jnt.tz";
connectAttr "tongue2_jnt_parentConstraint1.crx" "tongue2_jnt.rx";
connectAttr "tongue2_jnt_parentConstraint1.cry" "tongue2_jnt.ry";
connectAttr "tongue2_jnt_parentConstraint1.crz" "tongue2_jnt.rz";
connectAttr "tongue2_jnt.s" "tongue3_jnt.is";
connectAttr "tongue3_jnt_parentConstraint1.ctx" "tongue3_jnt.tx";
connectAttr "tongue3_jnt_parentConstraint1.cty" "tongue3_jnt.ty";
connectAttr "tongue3_jnt_parentConstraint1.ctz" "tongue3_jnt.tz";
connectAttr "tongue3_jnt_parentConstraint1.crx" "tongue3_jnt.rx";
connectAttr "tongue3_jnt_parentConstraint1.cry" "tongue3_jnt.ry";
connectAttr "tongue3_jnt_parentConstraint1.crz" "tongue3_jnt.rz";
connectAttr "tongue3_jnt.s" "tongue4_jnt.is";
connectAttr "tongue4_jnt_parentConstraint1.ctx" "tongue4_jnt.tx";
connectAttr "tongue4_jnt_parentConstraint1.cty" "tongue4_jnt.ty";
connectAttr "tongue4_jnt_parentConstraint1.ctz" "tongue4_jnt.tz";
connectAttr "tongue4_jnt_parentConstraint1.crx" "tongue4_jnt.rx";
connectAttr "tongue4_jnt_parentConstraint1.cry" "tongue4_jnt.ry";
connectAttr "tongue4_jnt_parentConstraint1.crz" "tongue4_jnt.rz";
connectAttr "tongue4_jnt.s" "tongue5_jnt.is";
connectAttr "tongue4_jnt.ro" "tongue4_jnt_parentConstraint1.cro";
connectAttr "tongue4_jnt.pim" "tongue4_jnt_parentConstraint1.cpim";
connectAttr "tongue4_jnt.rp" "tongue4_jnt_parentConstraint1.crp";
connectAttr "tongue4_jnt.rpt" "tongue4_jnt_parentConstraint1.crt";
connectAttr "tongue4_jnt.jo" "tongue4_jnt_parentConstraint1.cjo";
connectAttr "Tongue4w.t" "tongue4_jnt_parentConstraint1.tg[0].tt";
connectAttr "Tongue4w.rp" "tongue4_jnt_parentConstraint1.tg[0].trp";
connectAttr "Tongue4w.rpt" "tongue4_jnt_parentConstraint1.tg[0].trt";
connectAttr "Tongue4w.r" "tongue4_jnt_parentConstraint1.tg[0].tr";
connectAttr "Tongue4w.ro" "tongue4_jnt_parentConstraint1.tg[0].tro";
connectAttr "Tongue4w.s" "tongue4_jnt_parentConstraint1.tg[0].ts";
connectAttr "Tongue4w.pm" "tongue4_jnt_parentConstraint1.tg[0].tpm";
connectAttr "tongue4_jnt_parentConstraint1.w0" "tongue4_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "tongue3_jnt.ro" "tongue3_jnt_parentConstraint1.cro";
connectAttr "tongue3_jnt.pim" "tongue3_jnt_parentConstraint1.cpim";
connectAttr "tongue3_jnt.rp" "tongue3_jnt_parentConstraint1.crp";
connectAttr "tongue3_jnt.rpt" "tongue3_jnt_parentConstraint1.crt";
connectAttr "tongue3_jnt.jo" "tongue3_jnt_parentConstraint1.cjo";
connectAttr "Tongue3w.t" "tongue3_jnt_parentConstraint1.tg[0].tt";
connectAttr "Tongue3w.rp" "tongue3_jnt_parentConstraint1.tg[0].trp";
connectAttr "Tongue3w.rpt" "tongue3_jnt_parentConstraint1.tg[0].trt";
connectAttr "Tongue3w.r" "tongue3_jnt_parentConstraint1.tg[0].tr";
connectAttr "Tongue3w.ro" "tongue3_jnt_parentConstraint1.tg[0].tro";
connectAttr "Tongue3w.s" "tongue3_jnt_parentConstraint1.tg[0].ts";
connectAttr "Tongue3w.pm" "tongue3_jnt_parentConstraint1.tg[0].tpm";
connectAttr "tongue3_jnt_parentConstraint1.w0" "tongue3_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "tongue2_jnt.ro" "tongue2_jnt_parentConstraint1.cro";
connectAttr "tongue2_jnt.pim" "tongue2_jnt_parentConstraint1.cpim";
connectAttr "tongue2_jnt.rp" "tongue2_jnt_parentConstraint1.crp";
connectAttr "tongue2_jnt.rpt" "tongue2_jnt_parentConstraint1.crt";
connectAttr "tongue2_jnt.jo" "tongue2_jnt_parentConstraint1.cjo";
connectAttr "Tongue2w.t" "tongue2_jnt_parentConstraint1.tg[0].tt";
connectAttr "Tongue2w.rp" "tongue2_jnt_parentConstraint1.tg[0].trp";
connectAttr "Tongue2w.rpt" "tongue2_jnt_parentConstraint1.tg[0].trt";
connectAttr "Tongue2w.r" "tongue2_jnt_parentConstraint1.tg[0].tr";
connectAttr "Tongue2w.ro" "tongue2_jnt_parentConstraint1.tg[0].tro";
connectAttr "Tongue2w.s" "tongue2_jnt_parentConstraint1.tg[0].ts";
connectAttr "Tongue2w.pm" "tongue2_jnt_parentConstraint1.tg[0].tpm";
connectAttr "tongue2_jnt_parentConstraint1.w0" "tongue2_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "tongue1_jnt.ro" "tongue1_jnt_parentConstraint1.cro";
connectAttr "tongue1_jnt.pim" "tongue1_jnt_parentConstraint1.cpim";
connectAttr "tongue1_jnt.rp" "tongue1_jnt_parentConstraint1.crp";
connectAttr "tongue1_jnt.rpt" "tongue1_jnt_parentConstraint1.crt";
connectAttr "tongue1_jnt.jo" "tongue1_jnt_parentConstraint1.cjo";
connectAttr "Tongue1w.t" "tongue1_jnt_parentConstraint1.tg[0].tt";
connectAttr "Tongue1w.rp" "tongue1_jnt_parentConstraint1.tg[0].trp";
connectAttr "Tongue1w.rpt" "tongue1_jnt_parentConstraint1.tg[0].trt";
connectAttr "Tongue1w.r" "tongue1_jnt_parentConstraint1.tg[0].tr";
connectAttr "Tongue1w.ro" "tongue1_jnt_parentConstraint1.tg[0].tro";
connectAttr "Tongue1w.s" "tongue1_jnt_parentConstraint1.tg[0].ts";
connectAttr "Tongue1w.pm" "tongue1_jnt_parentConstraint1.tg[0].tpm";
connectAttr "tongue1_jnt_parentConstraint1.w0" "tongue1_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "brows_top.rig_vis" "brows_rig.v";
connectAttr "Brow_Lf_In_offset.msg" "Brow_Lf_In.root[0]";
connectAttr "Brow_Lf_Ot_offset.msg" "Brow_Lf_Ot.root[0]";
connectAttr "Brow_Lf_Md_offset_parentConstraint1.ctx" "Brow_Lf_Md_offset.tx";
connectAttr "Brow_Lf_Md_offset_parentConstraint1.cty" "Brow_Lf_Md_offset.ty";
connectAttr "Brow_Lf_Md_offset_parentConstraint1.ctz" "Brow_Lf_Md_offset.tz";
connectAttr "Brow_Lf_Md_offset_parentConstraint1.crx" "Brow_Lf_Md_offset.rx";
connectAttr "Brow_Lf_Md_offset_parentConstraint1.cry" "Brow_Lf_Md_offset.ry";
connectAttr "Brow_Lf_Md_offset_parentConstraint1.crz" "Brow_Lf_Md_offset.rz";
connectAttr "Brow_Lf_Md_offset.msg" "Brow_Lf_Md.root[0]";
connectAttr "Brow_Lf_Md_offset.ro" "Brow_Lf_Md_offset_parentConstraint1.cro";
connectAttr "Brow_Lf_Md_offset.pim" "Brow_Lf_Md_offset_parentConstraint1.cpim";
connectAttr "Brow_Lf_Md_offset.rp" "Brow_Lf_Md_offset_parentConstraint1.crp";
connectAttr "Brow_Lf_Md_offset.rpt" "Brow_Lf_Md_offset_parentConstraint1.crt";
connectAttr "Brow_Lf_In.t" "Brow_Lf_Md_offset_parentConstraint1.tg[0].tt";
connectAttr "Brow_Lf_In.rp" "Brow_Lf_Md_offset_parentConstraint1.tg[0].trp";
connectAttr "Brow_Lf_In.rpt" "Brow_Lf_Md_offset_parentConstraint1.tg[0].trt";
connectAttr "Brow_Lf_In.r" "Brow_Lf_Md_offset_parentConstraint1.tg[0].tr";
connectAttr "Brow_Lf_In.ro" "Brow_Lf_Md_offset_parentConstraint1.tg[0].tro";
connectAttr "Brow_Lf_In.s" "Brow_Lf_Md_offset_parentConstraint1.tg[0].ts";
connectAttr "Brow_Lf_In.pm" "Brow_Lf_Md_offset_parentConstraint1.tg[0].tpm";
connectAttr "Brow_Lf_Md_offset_parentConstraint1.w0" "Brow_Lf_Md_offset_parentConstraint1.tg[0].tw"
		;
connectAttr "Brow_Lf_Ot.t" "Brow_Lf_Md_offset_parentConstraint1.tg[1].tt";
connectAttr "Brow_Lf_Ot.rp" "Brow_Lf_Md_offset_parentConstraint1.tg[1].trp";
connectAttr "Brow_Lf_Ot.rpt" "Brow_Lf_Md_offset_parentConstraint1.tg[1].trt";
connectAttr "Brow_Lf_Ot.r" "Brow_Lf_Md_offset_parentConstraint1.tg[1].tr";
connectAttr "Brow_Lf_Ot.ro" "Brow_Lf_Md_offset_parentConstraint1.tg[1].tro";
connectAttr "Brow_Lf_Ot.s" "Brow_Lf_Md_offset_parentConstraint1.tg[1].ts";
connectAttr "Brow_Lf_Ot.pm" "Brow_Lf_Md_offset_parentConstraint1.tg[1].tpm";
connectAttr "Brow_Lf_Md_offset_parentConstraint1.w1" "Brow_Lf_Md_offset_parentConstraint1.tg[1].tw"
		;
connectAttr "Brow_Rt_Md_offset_parentConstraint2.ctx" "Brow_Rt_Md_offset.tx";
connectAttr "Brow_Rt_Md_offset_parentConstraint2.cty" "Brow_Rt_Md_offset.ty";
connectAttr "Brow_Rt_Md_offset_parentConstraint2.ctz" "Brow_Rt_Md_offset.tz";
connectAttr "Brow_Rt_Md_offset_parentConstraint2.crx" "Brow_Rt_Md_offset.rx";
connectAttr "Brow_Rt_Md_offset_parentConstraint2.cry" "Brow_Rt_Md_offset.ry";
connectAttr "Brow_Rt_Md_offset_parentConstraint2.crz" "Brow_Rt_Md_offset.rz";
connectAttr "Brow_Rt_Md_offset.msg" "Brow_Rt_Md.root[0]";
connectAttr "Brow_Rt_Md_offset.ro" "Brow_Rt_Md_offset_parentConstraint2.cro";
connectAttr "Brow_Rt_Md_offset.pim" "Brow_Rt_Md_offset_parentConstraint2.cpim";
connectAttr "Brow_Rt_Md_offset.rp" "Brow_Rt_Md_offset_parentConstraint2.crp";
connectAttr "Brow_Rt_Md_offset.rpt" "Brow_Rt_Md_offset_parentConstraint2.crt";
connectAttr "Brow_Rt_In.t" "Brow_Rt_Md_offset_parentConstraint2.tg[0].tt";
connectAttr "Brow_Rt_In.rp" "Brow_Rt_Md_offset_parentConstraint2.tg[0].trp";
connectAttr "Brow_Rt_In.rpt" "Brow_Rt_Md_offset_parentConstraint2.tg[0].trt";
connectAttr "Brow_Rt_In.r" "Brow_Rt_Md_offset_parentConstraint2.tg[0].tr";
connectAttr "Brow_Rt_In.ro" "Brow_Rt_Md_offset_parentConstraint2.tg[0].tro";
connectAttr "Brow_Rt_In.s" "Brow_Rt_Md_offset_parentConstraint2.tg[0].ts";
connectAttr "Brow_Rt_In.pm" "Brow_Rt_Md_offset_parentConstraint2.tg[0].tpm";
connectAttr "Brow_Rt_Md_offset_parentConstraint2.w0" "Brow_Rt_Md_offset_parentConstraint2.tg[0].tw"
		;
connectAttr "Brow_Rt_Ot.t" "Brow_Rt_Md_offset_parentConstraint2.tg[1].tt";
connectAttr "Brow_Rt_Ot.rp" "Brow_Rt_Md_offset_parentConstraint2.tg[1].trp";
connectAttr "Brow_Rt_Ot.rpt" "Brow_Rt_Md_offset_parentConstraint2.tg[1].trt";
connectAttr "Brow_Rt_Ot.r" "Brow_Rt_Md_offset_parentConstraint2.tg[1].tr";
connectAttr "Brow_Rt_Ot.ro" "Brow_Rt_Md_offset_parentConstraint2.tg[1].tro";
connectAttr "Brow_Rt_Ot.s" "Brow_Rt_Md_offset_parentConstraint2.tg[1].ts";
connectAttr "Brow_Rt_Ot.pm" "Brow_Rt_Md_offset_parentConstraint2.tg[1].tpm";
connectAttr "Brow_Rt_Md_offset_parentConstraint2.w1" "Brow_Rt_Md_offset_parentConstraint2.tg[1].tw"
		;
connectAttr "jaw_muzzle_top.rig_vis" "jaw_muzzle_rig.v";
connectAttr "Muzzle_jnt.ro" "Muzzle_jnt_parentConstraint1.cro";
connectAttr "Muzzle_jnt.pim" "Muzzle_jnt_parentConstraint1.cpim";
connectAttr "Muzzle_jnt.rp" "Muzzle_jnt_parentConstraint1.crp";
connectAttr "Muzzle_jnt.rpt" "Muzzle_jnt_parentConstraint1.crt";
connectAttr "Muzzle_jnt.jo" "Muzzle_jnt_parentConstraint1.cjo";
connectAttr "Muzzle_world.t" "Muzzle_jnt_parentConstraint1.tg[0].tt";
connectAttr "Muzzle_world.rp" "Muzzle_jnt_parentConstraint1.tg[0].trp";
connectAttr "Muzzle_world.rpt" "Muzzle_jnt_parentConstraint1.tg[0].trt";
connectAttr "Muzzle_world.r" "Muzzle_jnt_parentConstraint1.tg[0].tr";
connectAttr "Muzzle_world.ro" "Muzzle_jnt_parentConstraint1.tg[0].tro";
connectAttr "Muzzle_world.s" "Muzzle_jnt_parentConstraint1.tg[0].ts";
connectAttr "Muzzle_world.pm" "Muzzle_jnt_parentConstraint1.tg[0].tpm";
connectAttr "Muzzle_jnt_parentConstraint1.w0" "Muzzle_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Jaw_jnt.ro" "Jaw_jnt_parentConstraint1.cro";
connectAttr "Jaw_jnt.pim" "Jaw_jnt_parentConstraint1.cpim";
connectAttr "Jaw_jnt.rp" "Jaw_jnt_parentConstraint1.crp";
connectAttr "Jaw_jnt.rpt" "Jaw_jnt_parentConstraint1.crt";
connectAttr "Jaw_jnt.jo" "Jaw_jnt_parentConstraint1.cjo";
connectAttr "Jaw_world.t" "Jaw_jnt_parentConstraint1.tg[0].tt";
connectAttr "Jaw_world.rp" "Jaw_jnt_parentConstraint1.tg[0].trp";
connectAttr "Jaw_world.rpt" "Jaw_jnt_parentConstraint1.tg[0].trt";
connectAttr "Jaw_world.r" "Jaw_jnt_parentConstraint1.tg[0].tr";
connectAttr "Jaw_world.ro" "Jaw_jnt_parentConstraint1.tg[0].tro";
connectAttr "Jaw_world.s" "Jaw_jnt_parentConstraint1.tg[0].ts";
connectAttr "Jaw_world.pm" "Jaw_jnt_parentConstraint1.tg[0].tpm";
connectAttr "Jaw_jnt_parentConstraint1.w0" "Jaw_jnt_parentConstraint1.tg[0].tw";
connectAttr "Muzzle_offset.tx" "Muzzle_offset_world.tx";
connectAttr "Muzzle_offset.ty" "Muzzle_offset_world.ty";
connectAttr "Muzzle_offset.tz" "Muzzle_offset_world.tz";
connectAttr "Muzzle_offset.rx" "Muzzle_offset_world.rx";
connectAttr "Muzzle_offset.ry" "Muzzle_offset_world.ry";
connectAttr "Muzzle_offset.rz" "Muzzle_offset_world.rz";
connectAttr "Muzzle_offset.sx" "Muzzle_offset_world.sx";
connectAttr "Muzzle_offset.sy" "Muzzle_offset_world.sy";
connectAttr "Muzzle_offset.sz" "Muzzle_offset_world.sz";
connectAttr "Muzzle.tx" "Muzzle_world.tx";
connectAttr "Muzzle.ty" "Muzzle_world.ty";
connectAttr "Muzzle.tz" "Muzzle_world.tz";
connectAttr "Muzzle.rx" "Muzzle_world.rx";
connectAttr "Muzzle.ry" "Muzzle_world.ry";
connectAttr "Muzzle.rz" "Muzzle_world.rz";
connectAttr "Muzzle.sx" "Muzzle_world.sx";
connectAttr "Muzzle.sy" "Muzzle_world.sy";
connectAttr "Muzzle.sz" "Muzzle_world.sz";
connectAttr "Muzzle_offset_world.msg" "Muzzle_world.root[0]";
connectAttr "Jaw_offset.tx" "Jaw_offset_world.tx";
connectAttr "Jaw_offset.ty" "Jaw_offset_world.ty";
connectAttr "Jaw_offset.tz" "Jaw_offset_world.tz";
connectAttr "Jaw_offset.rx" "Jaw_offset_world.rx";
connectAttr "Jaw_offset.ry" "Jaw_offset_world.ry";
connectAttr "Jaw_offset.rz" "Jaw_offset_world.rz";
connectAttr "Jaw_offset.sx" "Jaw_offset_world.sx";
connectAttr "Jaw_offset.sy" "Jaw_offset_world.sy";
connectAttr "Jaw_offset.sz" "Jaw_offset_world.sz";
connectAttr "Jaw.tx" "Jaw_world.tx";
connectAttr "Jaw.ty" "Jaw_world.ty";
connectAttr "Jaw.tz" "Jaw_world.tz";
connectAttr "Jaw.rx" "Jaw_world.rx";
connectAttr "Jaw.ry" "Jaw_world.ry";
connectAttr "Jaw.rz" "Jaw_world.rz";
connectAttr "Jaw.sx" "Jaw_world.sx";
connectAttr "Jaw.sy" "Jaw_world.sy";
connectAttr "Jaw.sz" "Jaw_world.sz";
connectAttr "Jaw_offset_world.msg" "Jaw_world.root[0]";
connectAttr "Muzzle_offset.msg" "Muzzle.root[0]";
connectAttr "Muzzle_world.msg" "Muzzle.world[0]";
connectAttr "Jaw_offset.msg" "Jaw.root[0]";
connectAttr "Jaw_world.msg" "Jaw.world[0]";
connectAttr "unitConversion3.o" "jaw_muzzle_top_lip_driver.rz";
connectAttr "jaw_muzzle_top_lip_translate_condition.ocg" "jaw_muzzle_top_lip_driver.ty"
		;
connectAttr "jaw_muzzle_corner_trans_multiplyDivide.ox" "jaw_muzzle_corner_driver.tx"
		;
connectAttr "jaw_muzzle_corner_trans_multiplyDivide.oy" "jaw_muzzle_corner_driver.ty"
		;
connectAttr "jaw_muzzle_corner_trans_multiplyDivide.oz" "jaw_muzzle_corner_driver.tz"
		;
connectAttr "unitConversion5.o" "jaw_muzzle_corner_driver.rx";
connectAttr "unitConversion7.o" "jaw_muzzle_corner_driver.ry";
connectAttr "unitConversion9.o" "jaw_muzzle_corner_driver.rz";
connectAttr "lips_top.rig_vis" "lips_rig.v";
connectAttr "top_lip_curve_skinCluster.og[0]" "curveShape1.cr";
connectAttr "tweak1.pl[0].cp[0]" "curveShape1.twl";
connectAttr "top_lip_curve_skinClusterGroupId.id" "curveShape1.iog.og[0].gid";
connectAttr "top_lip_curve_skinClusterSet.mwc" "curveShape1.iog.og[0].gco";
connectAttr "groupId2.id" "curveShape1.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "curveShape1.iog.og[1].gco";
connectAttr "bot_lip_curve_skinCluster.og[0]" "curveShape2.cr";
connectAttr "tweak2.pl[0].cp[0]" "curveShape2.twl";
connectAttr "bot_lip_curve_skinClusterGroupId.id" "curveShape2.iog.og[0].gid";
connectAttr "bot_lip_curve_skinClusterSet.mwc" "curveShape2.iog.og[0].gco";
connectAttr "groupId4.id" "curveShape2.iog.og[1].gid";
connectAttr "tweakSet2.mwc" "curveShape2.iog.og[1].gco";
connectAttr "Lip_Top_offset.tx" "Lip_Top_offset_world.tx";
connectAttr "Lip_Top_offset.ty" "Lip_Top_offset_world.ty";
connectAttr "Lip_Top_offset.tz" "Lip_Top_offset_world.tz";
connectAttr "Lip_Top_offset.rx" "Lip_Top_offset_world.rx";
connectAttr "Lip_Top_offset.ry" "Lip_Top_offset_world.ry";
connectAttr "Lip_Top_offset.rz" "Lip_Top_offset_world.rz";
connectAttr "Lip_Top_offset.sx" "Lip_Top_offset_world.sx";
connectAttr "Lip_Top_offset.sy" "Lip_Top_offset_world.sy";
connectAttr "Lip_Top_offset.sz" "Lip_Top_offset_world.sz";
connectAttr "Lip_Top.tx" "Lip_Top_world.tx";
connectAttr "Lip_Top.ty" "Lip_Top_world.ty";
connectAttr "Lip_Top.tz" "Lip_Top_world.tz";
connectAttr "Lip_Top.rx" "Lip_Top_world.rx";
connectAttr "Lip_Top.ry" "Lip_Top_world.ry";
connectAttr "Lip_Top.rz" "Lip_Top_world.rz";
connectAttr "Lip_Top.sx" "Lip_Top_world.sx";
connectAttr "Lip_Top.sy" "Lip_Top_world.sy";
connectAttr "Lip_Top.sz" "Lip_Top_world.sz";
connectAttr "Lip_Top_offset_world.msg" "Lip_Top_world.root[0]";
connectAttr "Lip_Bot_offset.tx" "Lip_Bot_offset_world.tx";
connectAttr "Lip_Bot_offset.ty" "Lip_Bot_offset_world.ty";
connectAttr "Lip_Bot_offset.tz" "Lip_Bot_offset_world.tz";
connectAttr "Lip_Bot_offset.rx" "Lip_Bot_offset_world.rx";
connectAttr "Lip_Bot_offset.ry" "Lip_Bot_offset_world.ry";
connectAttr "Lip_Bot_offset.rz" "Lip_Bot_offset_world.rz";
connectAttr "Lip_Bot_offset.sx" "Lip_Bot_offset_world.sx";
connectAttr "Lip_Bot_offset.sy" "Lip_Bot_offset_world.sy";
connectAttr "Lip_Bot_offset.sz" "Lip_Bot_offset_world.sz";
connectAttr "Lip_Bot.tx" "Lip_Bot_world.tx";
connectAttr "Lip_Bot.ty" "Lip_Bot_world.ty";
connectAttr "Lip_Bot.tz" "Lip_Bot_world.tz";
connectAttr "Lip_Bot.rx" "Lip_Bot_world.rx";
connectAttr "Lip_Bot.ry" "Lip_Bot_world.ry";
connectAttr "Lip_Bot.rz" "Lip_Bot_world.rz";
connectAttr "Lip_Bot.sx" "Lip_Bot_world.sx";
connectAttr "Lip_Bot.sy" "Lip_Bot_world.sy";
connectAttr "Lip_Bot.sz" "Lip_Bot_world.sz";
connectAttr "Lip_Bot_offset_world.msg" "Lip_Bot_world.root[0]";
connectAttr "Lip_Lf_offset.tx" "Lip_Lf_offset_world.tx";
connectAttr "Lip_Lf_offset.ty" "Lip_Lf_offset_world.ty";
connectAttr "Lip_Lf_offset.tz" "Lip_Lf_offset_world.tz";
connectAttr "Lip_Lf_offset.rx" "Lip_Lf_offset_world.rx";
connectAttr "Lip_Lf_offset.ry" "Lip_Lf_offset_world.ry";
connectAttr "Lip_Lf_offset.rz" "Lip_Lf_offset_world.rz";
connectAttr "Lip_Lf_offset.sx" "Lip_Lf_offset_world.sx";
connectAttr "Lip_Lf_offset.sy" "Lip_Lf_offset_world.sy";
connectAttr "Lip_Lf_offset.sz" "Lip_Lf_offset_world.sz";
connectAttr "Lip_Lf.tx" "Lip_Lf_world.tx";
connectAttr "Lip_Lf.ty" "Lip_Lf_world.ty";
connectAttr "Lip_Lf.tz" "Lip_Lf_world.tz";
connectAttr "Lip_Lf.rx" "Lip_Lf_world.rx";
connectAttr "Lip_Lf.ry" "Lip_Lf_world.ry";
connectAttr "Lip_Lf.rz" "Lip_Lf_world.rz";
connectAttr "Lip_Lf.sx" "Lip_Lf_world.sx";
connectAttr "Lip_Lf.sy" "Lip_Lf_world.sy";
connectAttr "Lip_Lf.sz" "Lip_Lf_world.sz";
connectAttr "Lip_Lf_offset_world.msg" "Lip_Lf_world.root[0]";
connectAttr "Lip_Top_Rt_04_offset.tx" "Lip_Top_Rt_04_offset_world.tx";
connectAttr "Lip_Top_Rt_04_offset.ty" "Lip_Top_Rt_04_offset_world.ty";
connectAttr "Lip_Top_Rt_04_offset.tz" "Lip_Top_Rt_04_offset_world.tz";
connectAttr "Lip_Top_Rt_04_offset.rx" "Lip_Top_Rt_04_offset_world.rx";
connectAttr "Lip_Top_Rt_04_offset.ry" "Lip_Top_Rt_04_offset_world.ry";
connectAttr "Lip_Top_Rt_04_offset.rz" "Lip_Top_Rt_04_offset_world.rz";
connectAttr "Lip_Top_Rt_04_offset.sx" "Lip_Top_Rt_04_offset_world.sx";
connectAttr "Lip_Top_Rt_04_offset.sy" "Lip_Top_Rt_04_offset_world.sy";
connectAttr "Lip_Top_Rt_04_offset.sz" "Lip_Top_Rt_04_offset_world.sz";
connectAttr "Lip_Top_Rt_04.tx" "Lip_Top_Rt_04_world.tx";
connectAttr "Lip_Top_Rt_04.ty" "Lip_Top_Rt_04_world.ty";
connectAttr "Lip_Top_Rt_04.tz" "Lip_Top_Rt_04_world.tz";
connectAttr "Lip_Top_Rt_04.rx" "Lip_Top_Rt_04_world.rx";
connectAttr "Lip_Top_Rt_04.ry" "Lip_Top_Rt_04_world.ry";
connectAttr "Lip_Top_Rt_04.rz" "Lip_Top_Rt_04_world.rz";
connectAttr "Lip_Top_Rt_04.sx" "Lip_Top_Rt_04_world.sx";
connectAttr "Lip_Top_Rt_04.sy" "Lip_Top_Rt_04_world.sy";
connectAttr "Lip_Top_Rt_04.sz" "Lip_Top_Rt_04_world.sz";
connectAttr "Lip_Top_Rt_04_offset_world.msg" "Lip_Top_Rt_04_world.root[0]";
connectAttr "Lip_Top_Rt_03_offset.tx" "Lip_Top_Rt_03_offset_world.tx";
connectAttr "Lip_Top_Rt_03_offset.ty" "Lip_Top_Rt_03_offset_world.ty";
connectAttr "Lip_Top_Rt_03_offset.tz" "Lip_Top_Rt_03_offset_world.tz";
connectAttr "Lip_Top_Rt_03_offset.rx" "Lip_Top_Rt_03_offset_world.rx";
connectAttr "Lip_Top_Rt_03_offset.ry" "Lip_Top_Rt_03_offset_world.ry";
connectAttr "Lip_Top_Rt_03_offset.rz" "Lip_Top_Rt_03_offset_world.rz";
connectAttr "Lip_Top_Rt_03_offset.sx" "Lip_Top_Rt_03_offset_world.sx";
connectAttr "Lip_Top_Rt_03_offset.sy" "Lip_Top_Rt_03_offset_world.sy";
connectAttr "Lip_Top_Rt_03_offset.sz" "Lip_Top_Rt_03_offset_world.sz";
connectAttr "Lip_Top_Rt_03.tx" "Lip_Top_Rt_03_world.tx";
connectAttr "Lip_Top_Rt_03.ty" "Lip_Top_Rt_03_world.ty";
connectAttr "Lip_Top_Rt_03.tz" "Lip_Top_Rt_03_world.tz";
connectAttr "Lip_Top_Rt_03.rx" "Lip_Top_Rt_03_world.rx";
connectAttr "Lip_Top_Rt_03.ry" "Lip_Top_Rt_03_world.ry";
connectAttr "Lip_Top_Rt_03.rz" "Lip_Top_Rt_03_world.rz";
connectAttr "Lip_Top_Rt_03.sx" "Lip_Top_Rt_03_world.sx";
connectAttr "Lip_Top_Rt_03.sy" "Lip_Top_Rt_03_world.sy";
connectAttr "Lip_Top_Rt_03.sz" "Lip_Top_Rt_03_world.sz";
connectAttr "Lip_Top_Rt_03_offset_world.msg" "Lip_Top_Rt_03_world.root[0]";
connectAttr "Lip_Top_Rt_02_offset.tx" "Lip_Top_Rt_02_offset_world.tx";
connectAttr "Lip_Top_Rt_02_offset.ty" "Lip_Top_Rt_02_offset_world.ty";
connectAttr "Lip_Top_Rt_02_offset.tz" "Lip_Top_Rt_02_offset_world.tz";
connectAttr "Lip_Top_Rt_02_offset.rx" "Lip_Top_Rt_02_offset_world.rx";
connectAttr "Lip_Top_Rt_02_offset.ry" "Lip_Top_Rt_02_offset_world.ry";
connectAttr "Lip_Top_Rt_02_offset.rz" "Lip_Top_Rt_02_offset_world.rz";
connectAttr "Lip_Top_Rt_02_offset.sx" "Lip_Top_Rt_02_offset_world.sx";
connectAttr "Lip_Top_Rt_02_offset.sy" "Lip_Top_Rt_02_offset_world.sy";
connectAttr "Lip_Top_Rt_02_offset.sz" "Lip_Top_Rt_02_offset_world.sz";
connectAttr "Lip_Top_Rt_02.tx" "Lip_Top_Rt_02_world.tx";
connectAttr "Lip_Top_Rt_02.ty" "Lip_Top_Rt_02_world.ty";
connectAttr "Lip_Top_Rt_02.tz" "Lip_Top_Rt_02_world.tz";
connectAttr "Lip_Top_Rt_02.rx" "Lip_Top_Rt_02_world.rx";
connectAttr "Lip_Top_Rt_02.ry" "Lip_Top_Rt_02_world.ry";
connectAttr "Lip_Top_Rt_02.rz" "Lip_Top_Rt_02_world.rz";
connectAttr "Lip_Top_Rt_02.sx" "Lip_Top_Rt_02_world.sx";
connectAttr "Lip_Top_Rt_02.sy" "Lip_Top_Rt_02_world.sy";
connectAttr "Lip_Top_Rt_02.sz" "Lip_Top_Rt_02_world.sz";
connectAttr "Lip_Top_Rt_02_offset_world.msg" "Lip_Top_Rt_02_world.root[0]";
connectAttr "Lip_Top_Rt_01_offset.tx" "Lip_Top_Rt_01_offset_world.tx";
connectAttr "Lip_Top_Rt_01_offset.ty" "Lip_Top_Rt_01_offset_world.ty";
connectAttr "Lip_Top_Rt_01_offset.tz" "Lip_Top_Rt_01_offset_world.tz";
connectAttr "Lip_Top_Rt_01_offset.rx" "Lip_Top_Rt_01_offset_world.rx";
connectAttr "Lip_Top_Rt_01_offset.ry" "Lip_Top_Rt_01_offset_world.ry";
connectAttr "Lip_Top_Rt_01_offset.rz" "Lip_Top_Rt_01_offset_world.rz";
connectAttr "Lip_Top_Rt_01_offset.sx" "Lip_Top_Rt_01_offset_world.sx";
connectAttr "Lip_Top_Rt_01_offset.sy" "Lip_Top_Rt_01_offset_world.sy";
connectAttr "Lip_Top_Rt_01_offset.sz" "Lip_Top_Rt_01_offset_world.sz";
connectAttr "Lip_Top_Rt_01.tx" "Lip_Top_Rt_01_world.tx";
connectAttr "Lip_Top_Rt_01.ty" "Lip_Top_Rt_01_world.ty";
connectAttr "Lip_Top_Rt_01.tz" "Lip_Top_Rt_01_world.tz";
connectAttr "Lip_Top_Rt_01.rx" "Lip_Top_Rt_01_world.rx";
connectAttr "Lip_Top_Rt_01.ry" "Lip_Top_Rt_01_world.ry";
connectAttr "Lip_Top_Rt_01.rz" "Lip_Top_Rt_01_world.rz";
connectAttr "Lip_Top_Rt_01.sx" "Lip_Top_Rt_01_world.sx";
connectAttr "Lip_Top_Rt_01.sy" "Lip_Top_Rt_01_world.sy";
connectAttr "Lip_Top_Rt_01.sz" "Lip_Top_Rt_01_world.sz";
connectAttr "Lip_Top_Rt_01_offset_world.msg" "Lip_Top_Rt_01_world.root[0]";
connectAttr "Lip_Top_Ct_offset.tx" "Lip_Top_Ct_offset_world.tx";
connectAttr "Lip_Top_Ct_offset.ty" "Lip_Top_Ct_offset_world.ty";
connectAttr "Lip_Top_Ct_offset.tz" "Lip_Top_Ct_offset_world.tz";
connectAttr "Lip_Top_Ct_offset.rx" "Lip_Top_Ct_offset_world.rx";
connectAttr "Lip_Top_Ct_offset.ry" "Lip_Top_Ct_offset_world.ry";
connectAttr "Lip_Top_Ct_offset.rz" "Lip_Top_Ct_offset_world.rz";
connectAttr "Lip_Top_Ct_offset.sx" "Lip_Top_Ct_offset_world.sx";
connectAttr "Lip_Top_Ct_offset.sy" "Lip_Top_Ct_offset_world.sy";
connectAttr "Lip_Top_Ct_offset.sz" "Lip_Top_Ct_offset_world.sz";
connectAttr "Lip_Top_Ct.tx" "Lip_Top_Ct_world.tx";
connectAttr "Lip_Top_Ct.ty" "Lip_Top_Ct_world.ty";
connectAttr "Lip_Top_Ct.tz" "Lip_Top_Ct_world.tz";
connectAttr "Lip_Top_Ct.rx" "Lip_Top_Ct_world.rx";
connectAttr "Lip_Top_Ct.ry" "Lip_Top_Ct_world.ry";
connectAttr "Lip_Top_Ct.rz" "Lip_Top_Ct_world.rz";
connectAttr "Lip_Top_Ct.sx" "Lip_Top_Ct_world.sx";
connectAttr "Lip_Top_Ct.sy" "Lip_Top_Ct_world.sy";
connectAttr "Lip_Top_Ct.sz" "Lip_Top_Ct_world.sz";
connectAttr "Lip_Top_Ct_offset_world.msg" "Lip_Top_Ct_world.root[0]";
connectAttr "Lip_Top_Lf_01_offset.tx" "Lip_Top_Lf_01_offset_world.tx";
connectAttr "Lip_Top_Lf_01_offset.ty" "Lip_Top_Lf_01_offset_world.ty";
connectAttr "Lip_Top_Lf_01_offset.tz" "Lip_Top_Lf_01_offset_world.tz";
connectAttr "Lip_Top_Lf_01_offset.rx" "Lip_Top_Lf_01_offset_world.rx";
connectAttr "Lip_Top_Lf_01_offset.ry" "Lip_Top_Lf_01_offset_world.ry";
connectAttr "Lip_Top_Lf_01_offset.rz" "Lip_Top_Lf_01_offset_world.rz";
connectAttr "Lip_Top_Lf_01_offset.sx" "Lip_Top_Lf_01_offset_world.sx";
connectAttr "Lip_Top_Lf_01_offset.sy" "Lip_Top_Lf_01_offset_world.sy";
connectAttr "Lip_Top_Lf_01_offset.sz" "Lip_Top_Lf_01_offset_world.sz";
connectAttr "Lip_Top_Lf_01.tx" "Lip_Top_Lf_01_world.tx";
connectAttr "Lip_Top_Lf_01.ty" "Lip_Top_Lf_01_world.ty";
connectAttr "Lip_Top_Lf_01.tz" "Lip_Top_Lf_01_world.tz";
connectAttr "Lip_Top_Lf_01.rx" "Lip_Top_Lf_01_world.rx";
connectAttr "Lip_Top_Lf_01.ry" "Lip_Top_Lf_01_world.ry";
connectAttr "Lip_Top_Lf_01.rz" "Lip_Top_Lf_01_world.rz";
connectAttr "Lip_Top_Lf_01.sx" "Lip_Top_Lf_01_world.sx";
connectAttr "Lip_Top_Lf_01.sy" "Lip_Top_Lf_01_world.sy";
connectAttr "Lip_Top_Lf_01.sz" "Lip_Top_Lf_01_world.sz";
connectAttr "Lip_Top_Lf_01_offset_world.msg" "Lip_Top_Lf_01_world.root[0]";
connectAttr "Lip_Top_Lf_02_offset.tx" "Lip_Top_Lf_02_offset_world.tx";
connectAttr "Lip_Top_Lf_02_offset.ty" "Lip_Top_Lf_02_offset_world.ty";
connectAttr "Lip_Top_Lf_02_offset.tz" "Lip_Top_Lf_02_offset_world.tz";
connectAttr "Lip_Top_Lf_02_offset.rx" "Lip_Top_Lf_02_offset_world.rx";
connectAttr "Lip_Top_Lf_02_offset.ry" "Lip_Top_Lf_02_offset_world.ry";
connectAttr "Lip_Top_Lf_02_offset.rz" "Lip_Top_Lf_02_offset_world.rz";
connectAttr "Lip_Top_Lf_02_offset.sx" "Lip_Top_Lf_02_offset_world.sx";
connectAttr "Lip_Top_Lf_02_offset.sy" "Lip_Top_Lf_02_offset_world.sy";
connectAttr "Lip_Top_Lf_02_offset.sz" "Lip_Top_Lf_02_offset_world.sz";
connectAttr "Lip_Top_Lf_02.tx" "Lip_Top_Lf_02_world.tx";
connectAttr "Lip_Top_Lf_02.ty" "Lip_Top_Lf_02_world.ty";
connectAttr "Lip_Top_Lf_02.tz" "Lip_Top_Lf_02_world.tz";
connectAttr "Lip_Top_Lf_02.rx" "Lip_Top_Lf_02_world.rx";
connectAttr "Lip_Top_Lf_02.ry" "Lip_Top_Lf_02_world.ry";
connectAttr "Lip_Top_Lf_02.rz" "Lip_Top_Lf_02_world.rz";
connectAttr "Lip_Top_Lf_02.sx" "Lip_Top_Lf_02_world.sx";
connectAttr "Lip_Top_Lf_02.sy" "Lip_Top_Lf_02_world.sy";
connectAttr "Lip_Top_Lf_02.sz" "Lip_Top_Lf_02_world.sz";
connectAttr "Lip_Top_Lf_02_offset_world.msg" "Lip_Top_Lf_02_world.root[0]";
connectAttr "Lip_Top_Lf_03_offset.tx" "Lip_Top_Lf_03_offset_world.tx";
connectAttr "Lip_Top_Lf_03_offset.ty" "Lip_Top_Lf_03_offset_world.ty";
connectAttr "Lip_Top_Lf_03_offset.tz" "Lip_Top_Lf_03_offset_world.tz";
connectAttr "Lip_Top_Lf_03_offset.rx" "Lip_Top_Lf_03_offset_world.rx";
connectAttr "Lip_Top_Lf_03_offset.ry" "Lip_Top_Lf_03_offset_world.ry";
connectAttr "Lip_Top_Lf_03_offset.rz" "Lip_Top_Lf_03_offset_world.rz";
connectAttr "Lip_Top_Lf_03_offset.sx" "Lip_Top_Lf_03_offset_world.sx";
connectAttr "Lip_Top_Lf_03_offset.sy" "Lip_Top_Lf_03_offset_world.sy";
connectAttr "Lip_Top_Lf_03_offset.sz" "Lip_Top_Lf_03_offset_world.sz";
connectAttr "Lip_Top_Lf_03.tx" "Lip_Top_Lf_03_world.tx";
connectAttr "Lip_Top_Lf_03.ty" "Lip_Top_Lf_03_world.ty";
connectAttr "Lip_Top_Lf_03.tz" "Lip_Top_Lf_03_world.tz";
connectAttr "Lip_Top_Lf_03.rx" "Lip_Top_Lf_03_world.rx";
connectAttr "Lip_Top_Lf_03.ry" "Lip_Top_Lf_03_world.ry";
connectAttr "Lip_Top_Lf_03.rz" "Lip_Top_Lf_03_world.rz";
connectAttr "Lip_Top_Lf_03.sx" "Lip_Top_Lf_03_world.sx";
connectAttr "Lip_Top_Lf_03.sy" "Lip_Top_Lf_03_world.sy";
connectAttr "Lip_Top_Lf_03.sz" "Lip_Top_Lf_03_world.sz";
connectAttr "Lip_Top_Lf_03_offset_world.msg" "Lip_Top_Lf_03_world.root[0]";
connectAttr "Lip_Top_Lf_04_offset.tx" "Lip_Top_Lf_04_offset_world.tx";
connectAttr "Lip_Top_Lf_04_offset.ty" "Lip_Top_Lf_04_offset_world.ty";
connectAttr "Lip_Top_Lf_04_offset.tz" "Lip_Top_Lf_04_offset_world.tz";
connectAttr "Lip_Top_Lf_04_offset.rx" "Lip_Top_Lf_04_offset_world.rx";
connectAttr "Lip_Top_Lf_04_offset.ry" "Lip_Top_Lf_04_offset_world.ry";
connectAttr "Lip_Top_Lf_04_offset.rz" "Lip_Top_Lf_04_offset_world.rz";
connectAttr "Lip_Top_Lf_04_offset.sx" "Lip_Top_Lf_04_offset_world.sx";
connectAttr "Lip_Top_Lf_04_offset.sy" "Lip_Top_Lf_04_offset_world.sy";
connectAttr "Lip_Top_Lf_04_offset.sz" "Lip_Top_Lf_04_offset_world.sz";
connectAttr "Lip_Top_Lf_04.tx" "Lip_Top_Lf_04_world.tx";
connectAttr "Lip_Top_Lf_04.ty" "Lip_Top_Lf_04_world.ty";
connectAttr "Lip_Top_Lf_04.tz" "Lip_Top_Lf_04_world.tz";
connectAttr "Lip_Top_Lf_04.rx" "Lip_Top_Lf_04_world.rx";
connectAttr "Lip_Top_Lf_04.ry" "Lip_Top_Lf_04_world.ry";
connectAttr "Lip_Top_Lf_04.rz" "Lip_Top_Lf_04_world.rz";
connectAttr "Lip_Top_Lf_04.sx" "Lip_Top_Lf_04_world.sx";
connectAttr "Lip_Top_Lf_04.sy" "Lip_Top_Lf_04_world.sy";
connectAttr "Lip_Top_Lf_04.sz" "Lip_Top_Lf_04_world.sz";
connectAttr "Lip_Top_Lf_04_offset_world.msg" "Lip_Top_Lf_04_world.root[0]";
connectAttr "Lip_Bot_Rt_04_offset.tx" "Lip_Bot_Rt_04_offset_world.tx";
connectAttr "Lip_Bot_Rt_04_offset.ty" "Lip_Bot_Rt_04_offset_world.ty";
connectAttr "Lip_Bot_Rt_04_offset.tz" "Lip_Bot_Rt_04_offset_world.tz";
connectAttr "Lip_Bot_Rt_04_offset.rx" "Lip_Bot_Rt_04_offset_world.rx";
connectAttr "Lip_Bot_Rt_04_offset.ry" "Lip_Bot_Rt_04_offset_world.ry";
connectAttr "Lip_Bot_Rt_04_offset.rz" "Lip_Bot_Rt_04_offset_world.rz";
connectAttr "Lip_Bot_Rt_04_offset.sx" "Lip_Bot_Rt_04_offset_world.sx";
connectAttr "Lip_Bot_Rt_04_offset.sy" "Lip_Bot_Rt_04_offset_world.sy";
connectAttr "Lip_Bot_Rt_04_offset.sz" "Lip_Bot_Rt_04_offset_world.sz";
connectAttr "Lip_Bot_Rt_04.tx" "Lip_Bot_Rt_04_world.tx";
connectAttr "Lip_Bot_Rt_04.ty" "Lip_Bot_Rt_04_world.ty";
connectAttr "Lip_Bot_Rt_04.tz" "Lip_Bot_Rt_04_world.tz";
connectAttr "Lip_Bot_Rt_04.rx" "Lip_Bot_Rt_04_world.rx";
connectAttr "Lip_Bot_Rt_04.ry" "Lip_Bot_Rt_04_world.ry";
connectAttr "Lip_Bot_Rt_04.rz" "Lip_Bot_Rt_04_world.rz";
connectAttr "Lip_Bot_Rt_04.sx" "Lip_Bot_Rt_04_world.sx";
connectAttr "Lip_Bot_Rt_04.sy" "Lip_Bot_Rt_04_world.sy";
connectAttr "Lip_Bot_Rt_04.sz" "Lip_Bot_Rt_04_world.sz";
connectAttr "Lip_Bot_Rt_04_offset_world.msg" "Lip_Bot_Rt_04_world.root[0]";
connectAttr "Lip_Bot_Rt_03_offset.tx" "Lip_Bot_Rt_03_offset_world.tx";
connectAttr "Lip_Bot_Rt_03_offset.ty" "Lip_Bot_Rt_03_offset_world.ty";
connectAttr "Lip_Bot_Rt_03_offset.tz" "Lip_Bot_Rt_03_offset_world.tz";
connectAttr "Lip_Bot_Rt_03_offset.rx" "Lip_Bot_Rt_03_offset_world.rx";
connectAttr "Lip_Bot_Rt_03_offset.ry" "Lip_Bot_Rt_03_offset_world.ry";
connectAttr "Lip_Bot_Rt_03_offset.rz" "Lip_Bot_Rt_03_offset_world.rz";
connectAttr "Lip_Bot_Rt_03_offset.sx" "Lip_Bot_Rt_03_offset_world.sx";
connectAttr "Lip_Bot_Rt_03_offset.sy" "Lip_Bot_Rt_03_offset_world.sy";
connectAttr "Lip_Bot_Rt_03_offset.sz" "Lip_Bot_Rt_03_offset_world.sz";
connectAttr "Lip_Bot_Rt_03.tx" "Lip_Bot_Rt_03_world.tx";
connectAttr "Lip_Bot_Rt_03.ty" "Lip_Bot_Rt_03_world.ty";
connectAttr "Lip_Bot_Rt_03.tz" "Lip_Bot_Rt_03_world.tz";
connectAttr "Lip_Bot_Rt_03.rx" "Lip_Bot_Rt_03_world.rx";
connectAttr "Lip_Bot_Rt_03.ry" "Lip_Bot_Rt_03_world.ry";
connectAttr "Lip_Bot_Rt_03.rz" "Lip_Bot_Rt_03_world.rz";
connectAttr "Lip_Bot_Rt_03.sx" "Lip_Bot_Rt_03_world.sx";
connectAttr "Lip_Bot_Rt_03.sy" "Lip_Bot_Rt_03_world.sy";
connectAttr "Lip_Bot_Rt_03.sz" "Lip_Bot_Rt_03_world.sz";
connectAttr "Lip_Bot_Rt_03_offset_world.msg" "Lip_Bot_Rt_03_world.root[0]";
connectAttr "Lip_Bot_Rt_02_offset.tx" "Lip_Bot_Rt_02_offset_world.tx";
connectAttr "Lip_Bot_Rt_02_offset.ty" "Lip_Bot_Rt_02_offset_world.ty";
connectAttr "Lip_Bot_Rt_02_offset.tz" "Lip_Bot_Rt_02_offset_world.tz";
connectAttr "Lip_Bot_Rt_02_offset.rx" "Lip_Bot_Rt_02_offset_world.rx";
connectAttr "Lip_Bot_Rt_02_offset.ry" "Lip_Bot_Rt_02_offset_world.ry";
connectAttr "Lip_Bot_Rt_02_offset.rz" "Lip_Bot_Rt_02_offset_world.rz";
connectAttr "Lip_Bot_Rt_02_offset.sx" "Lip_Bot_Rt_02_offset_world.sx";
connectAttr "Lip_Bot_Rt_02_offset.sy" "Lip_Bot_Rt_02_offset_world.sy";
connectAttr "Lip_Bot_Rt_02_offset.sz" "Lip_Bot_Rt_02_offset_world.sz";
connectAttr "Lip_Bot_Rt_02.tx" "Lip_Bot_Rt_02_world.tx";
connectAttr "Lip_Bot_Rt_02.ty" "Lip_Bot_Rt_02_world.ty";
connectAttr "Lip_Bot_Rt_02.tz" "Lip_Bot_Rt_02_world.tz";
connectAttr "Lip_Bot_Rt_02.rx" "Lip_Bot_Rt_02_world.rx";
connectAttr "Lip_Bot_Rt_02.ry" "Lip_Bot_Rt_02_world.ry";
connectAttr "Lip_Bot_Rt_02.rz" "Lip_Bot_Rt_02_world.rz";
connectAttr "Lip_Bot_Rt_02.sx" "Lip_Bot_Rt_02_world.sx";
connectAttr "Lip_Bot_Rt_02.sy" "Lip_Bot_Rt_02_world.sy";
connectAttr "Lip_Bot_Rt_02.sz" "Lip_Bot_Rt_02_world.sz";
connectAttr "Lip_Bot_Rt_02_offset_world.msg" "Lip_Bot_Rt_02_world.root[0]";
connectAttr "Lip_Bot_Rt_01_offset.tx" "Lip_Bot_Rt_01_offset_world.tx";
connectAttr "Lip_Bot_Rt_01_offset.ty" "Lip_Bot_Rt_01_offset_world.ty";
connectAttr "Lip_Bot_Rt_01_offset.tz" "Lip_Bot_Rt_01_offset_world.tz";
connectAttr "Lip_Bot_Rt_01_offset.rx" "Lip_Bot_Rt_01_offset_world.rx";
connectAttr "Lip_Bot_Rt_01_offset.ry" "Lip_Bot_Rt_01_offset_world.ry";
connectAttr "Lip_Bot_Rt_01_offset.rz" "Lip_Bot_Rt_01_offset_world.rz";
connectAttr "Lip_Bot_Rt_01_offset.sx" "Lip_Bot_Rt_01_offset_world.sx";
connectAttr "Lip_Bot_Rt_01_offset.sy" "Lip_Bot_Rt_01_offset_world.sy";
connectAttr "Lip_Bot_Rt_01_offset.sz" "Lip_Bot_Rt_01_offset_world.sz";
connectAttr "Lip_Bot_Rt_01.tx" "Lip_Bot_Rt_01_world.tx";
connectAttr "Lip_Bot_Rt_01.ty" "Lip_Bot_Rt_01_world.ty";
connectAttr "Lip_Bot_Rt_01.tz" "Lip_Bot_Rt_01_world.tz";
connectAttr "Lip_Bot_Rt_01.rx" "Lip_Bot_Rt_01_world.rx";
connectAttr "Lip_Bot_Rt_01.ry" "Lip_Bot_Rt_01_world.ry";
connectAttr "Lip_Bot_Rt_01.rz" "Lip_Bot_Rt_01_world.rz";
connectAttr "Lip_Bot_Rt_01.sx" "Lip_Bot_Rt_01_world.sx";
connectAttr "Lip_Bot_Rt_01.sy" "Lip_Bot_Rt_01_world.sy";
connectAttr "Lip_Bot_Rt_01.sz" "Lip_Bot_Rt_01_world.sz";
connectAttr "Lip_Bot_Rt_01_offset_world.msg" "Lip_Bot_Rt_01_world.root[0]";
connectAttr "Lip_Bot_Ct_offset.tx" "Lip_Bot_Ct_offset_world.tx";
connectAttr "Lip_Bot_Ct_offset.ty" "Lip_Bot_Ct_offset_world.ty";
connectAttr "Lip_Bot_Ct_offset.tz" "Lip_Bot_Ct_offset_world.tz";
connectAttr "Lip_Bot_Ct_offset.rx" "Lip_Bot_Ct_offset_world.rx";
connectAttr "Lip_Bot_Ct_offset.ry" "Lip_Bot_Ct_offset_world.ry";
connectAttr "Lip_Bot_Ct_offset.rz" "Lip_Bot_Ct_offset_world.rz";
connectAttr "Lip_Bot_Ct_offset.sx" "Lip_Bot_Ct_offset_world.sx";
connectAttr "Lip_Bot_Ct_offset.sy" "Lip_Bot_Ct_offset_world.sy";
connectAttr "Lip_Bot_Ct_offset.sz" "Lip_Bot_Ct_offset_world.sz";
connectAttr "Lip_Bot_Ct.tx" "Lip_Bot_Ct_world.tx";
connectAttr "Lip_Bot_Ct.ty" "Lip_Bot_Ct_world.ty";
connectAttr "Lip_Bot_Ct.tz" "Lip_Bot_Ct_world.tz";
connectAttr "Lip_Bot_Ct.rx" "Lip_Bot_Ct_world.rx";
connectAttr "Lip_Bot_Ct.ry" "Lip_Bot_Ct_world.ry";
connectAttr "Lip_Bot_Ct.rz" "Lip_Bot_Ct_world.rz";
connectAttr "Lip_Bot_Ct.sx" "Lip_Bot_Ct_world.sx";
connectAttr "Lip_Bot_Ct.sy" "Lip_Bot_Ct_world.sy";
connectAttr "Lip_Bot_Ct.sz" "Lip_Bot_Ct_world.sz";
connectAttr "Lip_Bot_Ct_offset_world.msg" "Lip_Bot_Ct_world.root[0]";
connectAttr "Lip_Bot_Lf_01_offset.tx" "Lip_Bot_Lf_01_offset_world.tx";
connectAttr "Lip_Bot_Lf_01_offset.ty" "Lip_Bot_Lf_01_offset_world.ty";
connectAttr "Lip_Bot_Lf_01_offset.tz" "Lip_Bot_Lf_01_offset_world.tz";
connectAttr "Lip_Bot_Lf_01_offset.rx" "Lip_Bot_Lf_01_offset_world.rx";
connectAttr "Lip_Bot_Lf_01_offset.ry" "Lip_Bot_Lf_01_offset_world.ry";
connectAttr "Lip_Bot_Lf_01_offset.rz" "Lip_Bot_Lf_01_offset_world.rz";
connectAttr "Lip_Bot_Lf_01_offset.sx" "Lip_Bot_Lf_01_offset_world.sx";
connectAttr "Lip_Bot_Lf_01_offset.sy" "Lip_Bot_Lf_01_offset_world.sy";
connectAttr "Lip_Bot_Lf_01_offset.sz" "Lip_Bot_Lf_01_offset_world.sz";
connectAttr "Lip_Bot_Lf_01.tx" "Lip_Bot_Lf_01_world.tx";
connectAttr "Lip_Bot_Lf_01.ty" "Lip_Bot_Lf_01_world.ty";
connectAttr "Lip_Bot_Lf_01.tz" "Lip_Bot_Lf_01_world.tz";
connectAttr "Lip_Bot_Lf_01.rx" "Lip_Bot_Lf_01_world.rx";
connectAttr "Lip_Bot_Lf_01.ry" "Lip_Bot_Lf_01_world.ry";
connectAttr "Lip_Bot_Lf_01.rz" "Lip_Bot_Lf_01_world.rz";
connectAttr "Lip_Bot_Lf_01.sx" "Lip_Bot_Lf_01_world.sx";
connectAttr "Lip_Bot_Lf_01.sy" "Lip_Bot_Lf_01_world.sy";
connectAttr "Lip_Bot_Lf_01.sz" "Lip_Bot_Lf_01_world.sz";
connectAttr "Lip_Bot_Lf_01_offset_world.msg" "Lip_Bot_Lf_01_world.root[0]";
connectAttr "Lip_Bot_Lf_02_offset.tx" "Lip_Bot_Lf_02_offset_world.tx";
connectAttr "Lip_Bot_Lf_02_offset.ty" "Lip_Bot_Lf_02_offset_world.ty";
connectAttr "Lip_Bot_Lf_02_offset.tz" "Lip_Bot_Lf_02_offset_world.tz";
connectAttr "Lip_Bot_Lf_02_offset.rx" "Lip_Bot_Lf_02_offset_world.rx";
connectAttr "Lip_Bot_Lf_02_offset.ry" "Lip_Bot_Lf_02_offset_world.ry";
connectAttr "Lip_Bot_Lf_02_offset.rz" "Lip_Bot_Lf_02_offset_world.rz";
connectAttr "Lip_Bot_Lf_02_offset.sx" "Lip_Bot_Lf_02_offset_world.sx";
connectAttr "Lip_Bot_Lf_02_offset.sy" "Lip_Bot_Lf_02_offset_world.sy";
connectAttr "Lip_Bot_Lf_02_offset.sz" "Lip_Bot_Lf_02_offset_world.sz";
connectAttr "Lip_Bot_Lf_02.tx" "Lip_Bot_Lf_02_world.tx";
connectAttr "Lip_Bot_Lf_02.ty" "Lip_Bot_Lf_02_world.ty";
connectAttr "Lip_Bot_Lf_02.tz" "Lip_Bot_Lf_02_world.tz";
connectAttr "Lip_Bot_Lf_02.rx" "Lip_Bot_Lf_02_world.rx";
connectAttr "Lip_Bot_Lf_02.ry" "Lip_Bot_Lf_02_world.ry";
connectAttr "Lip_Bot_Lf_02.rz" "Lip_Bot_Lf_02_world.rz";
connectAttr "Lip_Bot_Lf_02.sx" "Lip_Bot_Lf_02_world.sx";
connectAttr "Lip_Bot_Lf_02.sy" "Lip_Bot_Lf_02_world.sy";
connectAttr "Lip_Bot_Lf_02.sz" "Lip_Bot_Lf_02_world.sz";
connectAttr "Lip_Bot_Lf_02_offset_world.msg" "Lip_Bot_Lf_02_world.root[0]";
connectAttr "Lip_Bot_Lf_03_offset.tx" "Lip_Bot_Lf_03_offset_world.tx";
connectAttr "Lip_Bot_Lf_03_offset.ty" "Lip_Bot_Lf_03_offset_world.ty";
connectAttr "Lip_Bot_Lf_03_offset.tz" "Lip_Bot_Lf_03_offset_world.tz";
connectAttr "Lip_Bot_Lf_03_offset.rx" "Lip_Bot_Lf_03_offset_world.rx";
connectAttr "Lip_Bot_Lf_03_offset.ry" "Lip_Bot_Lf_03_offset_world.ry";
connectAttr "Lip_Bot_Lf_03_offset.rz" "Lip_Bot_Lf_03_offset_world.rz";
connectAttr "Lip_Bot_Lf_03_offset.sx" "Lip_Bot_Lf_03_offset_world.sx";
connectAttr "Lip_Bot_Lf_03_offset.sy" "Lip_Bot_Lf_03_offset_world.sy";
connectAttr "Lip_Bot_Lf_03_offset.sz" "Lip_Bot_Lf_03_offset_world.sz";
connectAttr "Lip_Bot_Lf_03.tx" "Lip_Bot_Lf_03_world.tx";
connectAttr "Lip_Bot_Lf_03.ty" "Lip_Bot_Lf_03_world.ty";
connectAttr "Lip_Bot_Lf_03.tz" "Lip_Bot_Lf_03_world.tz";
connectAttr "Lip_Bot_Lf_03.rx" "Lip_Bot_Lf_03_world.rx";
connectAttr "Lip_Bot_Lf_03.ry" "Lip_Bot_Lf_03_world.ry";
connectAttr "Lip_Bot_Lf_03.rz" "Lip_Bot_Lf_03_world.rz";
connectAttr "Lip_Bot_Lf_03.sx" "Lip_Bot_Lf_03_world.sx";
connectAttr "Lip_Bot_Lf_03.sy" "Lip_Bot_Lf_03_world.sy";
connectAttr "Lip_Bot_Lf_03.sz" "Lip_Bot_Lf_03_world.sz";
connectAttr "Lip_Bot_Lf_03_offset_world.msg" "Lip_Bot_Lf_03_world.root[0]";
connectAttr "Lip_Bot_Lf_04_offset.tx" "Lip_Bot_Lf_04_offset_world.tx";
connectAttr "Lip_Bot_Lf_04_offset.ty" "Lip_Bot_Lf_04_offset_world.ty";
connectAttr "Lip_Bot_Lf_04_offset.tz" "Lip_Bot_Lf_04_offset_world.tz";
connectAttr "Lip_Bot_Lf_04_offset.rx" "Lip_Bot_Lf_04_offset_world.rx";
connectAttr "Lip_Bot_Lf_04_offset.ry" "Lip_Bot_Lf_04_offset_world.ry";
connectAttr "Lip_Bot_Lf_04_offset.rz" "Lip_Bot_Lf_04_offset_world.rz";
connectAttr "Lip_Bot_Lf_04_offset.sx" "Lip_Bot_Lf_04_offset_world.sx";
connectAttr "Lip_Bot_Lf_04_offset.sy" "Lip_Bot_Lf_04_offset_world.sy";
connectAttr "Lip_Bot_Lf_04_offset.sz" "Lip_Bot_Lf_04_offset_world.sz";
connectAttr "Lip_Bot_Lf_04.tx" "Lip_Bot_Lf_04_world.tx";
connectAttr "Lip_Bot_Lf_04.ty" "Lip_Bot_Lf_04_world.ty";
connectAttr "Lip_Bot_Lf_04.tz" "Lip_Bot_Lf_04_world.tz";
connectAttr "Lip_Bot_Lf_04.rx" "Lip_Bot_Lf_04_world.rx";
connectAttr "Lip_Bot_Lf_04.ry" "Lip_Bot_Lf_04_world.ry";
connectAttr "Lip_Bot_Lf_04.rz" "Lip_Bot_Lf_04_world.rz";
connectAttr "Lip_Bot_Lf_04.sx" "Lip_Bot_Lf_04_world.sx";
connectAttr "Lip_Bot_Lf_04.sy" "Lip_Bot_Lf_04_world.sy";
connectAttr "Lip_Bot_Lf_04.sz" "Lip_Bot_Lf_04_world.sz";
connectAttr "Lip_Bot_Lf_04_offset_world.msg" "Lip_Bot_Lf_04_world.root[0]";
connectAttr "Lip_Rt_offset.tx" "Lip_Rt_offset_world.tx";
connectAttr "Lip_Rt_offset.ty" "Lip_Rt_offset_world.ty";
connectAttr "Lip_Rt_offset.tz" "Lip_Rt_offset_world.tz";
connectAttr "Lip_Rt_offset.rx" "Lip_Rt_offset_world.rx";
connectAttr "Lip_Rt_offset.ry" "Lip_Rt_offset_world.ry";
connectAttr "Lip_Rt_offset.rz" "Lip_Rt_offset_world.rz";
connectAttr "Lip_Rt_offset.sx" "Lip_Rt_offset_world.sx";
connectAttr "Lip_Rt_offset.sy" "Lip_Rt_offset_world.sy";
connectAttr "Lip_Rt_offset.sz" "Lip_Rt_offset_world.sz";
connectAttr "Lip_Rt.tx" "Lip_Rt_world.tx";
connectAttr "Lip_Rt.ty" "Lip_Rt_world.ty";
connectAttr "Lip_Rt.tz" "Lip_Rt_world.tz";
connectAttr "Lip_Rt.rx" "Lip_Rt_world.rx";
connectAttr "Lip_Rt.ry" "Lip_Rt_world.ry";
connectAttr "Lip_Rt.rz" "Lip_Rt_world.rz";
connectAttr "Lip_Rt.sx" "Lip_Rt_world.sx";
connectAttr "Lip_Rt.sy" "Lip_Rt_world.sy";
connectAttr "Lip_Rt.sz" "Lip_Rt_world.sz";
connectAttr "Lip_Top_offset_parentConstraint1.ctx" "Lip_Top_offset.tx";
connectAttr "Lip_Top_offset_parentConstraint1.cty" "Lip_Top_offset.ty";
connectAttr "Lip_Top_offset_parentConstraint1.ctz" "Lip_Top_offset.tz";
connectAttr "Lip_Top_offset_parentConstraint1.crx" "Lip_Top_offset.rx";
connectAttr "Lip_Top_offset_parentConstraint1.cry" "Lip_Top_offset.ry";
connectAttr "Lip_Top_offset_parentConstraint1.crz" "Lip_Top_offset.rz";
connectAttr "Lip_Top_offset.msg" "Lip_Top.root[0]";
connectAttr "Lip_Top_world.msg" "Lip_Top.world[0]";
connectAttr "Lip_Top_offset.ro" "Lip_Top_offset_parentConstraint1.cro";
connectAttr "Lip_Top_offset.pim" "Lip_Top_offset_parentConstraint1.cpim";
connectAttr "Lip_Top_offset.rp" "Lip_Top_offset_parentConstraint1.crp";
connectAttr "Lip_Top_offset.rpt" "Lip_Top_offset_parentConstraint1.crt";
connectAttr "jaw_muzzle_top_lip_driver.t" "Lip_Top_offset_parentConstraint1.tg[0].tt"
		;
connectAttr "jaw_muzzle_top_lip_driver.rp" "Lip_Top_offset_parentConstraint1.tg[0].trp"
		;
connectAttr "jaw_muzzle_top_lip_driver.rpt" "Lip_Top_offset_parentConstraint1.tg[0].trt"
		;
connectAttr "jaw_muzzle_top_lip_driver.r" "Lip_Top_offset_parentConstraint1.tg[0].tr"
		;
connectAttr "jaw_muzzle_top_lip_driver.ro" "Lip_Top_offset_parentConstraint1.tg[0].tro"
		;
connectAttr "jaw_muzzle_top_lip_driver.s" "Lip_Top_offset_parentConstraint1.tg[0].ts"
		;
connectAttr "jaw_muzzle_top_lip_driver.pm" "Lip_Top_offset_parentConstraint1.tg[0].tpm"
		;
connectAttr "Lip_Top_offset_parentConstraint1.w0" "Lip_Top_offset_parentConstraint1.tg[0].tw"
		;
connectAttr "Lip_Bot_offset_parentConstraint1.ctx" "Lip_Bot_offset.tx";
connectAttr "Lip_Bot_offset_parentConstraint1.cty" "Lip_Bot_offset.ty";
connectAttr "Lip_Bot_offset_parentConstraint1.ctz" "Lip_Bot_offset.tz";
connectAttr "Lip_Bot_offset_parentConstraint1.crx" "Lip_Bot_offset.rx";
connectAttr "Lip_Bot_offset_parentConstraint1.cry" "Lip_Bot_offset.ry";
connectAttr "Lip_Bot_offset_parentConstraint1.crz" "Lip_Bot_offset.rz";
connectAttr "Lip_Bot_offset.msg" "Lip_Bot.root[0]";
connectAttr "Lip_Bot_world.msg" "Lip_Bot.world[0]";
connectAttr "Lip_Bot_offset.ro" "Lip_Bot_offset_parentConstraint1.cro";
connectAttr "Lip_Bot_offset.pim" "Lip_Bot_offset_parentConstraint1.cpim";
connectAttr "Lip_Bot_offset.rp" "Lip_Bot_offset_parentConstraint1.crp";
connectAttr "Lip_Bot_offset.rpt" "Lip_Bot_offset_parentConstraint1.crt";
connectAttr "Jaw.t" "Lip_Bot_offset_parentConstraint1.tg[0].tt";
connectAttr "Jaw.rp" "Lip_Bot_offset_parentConstraint1.tg[0].trp";
connectAttr "Jaw.rpt" "Lip_Bot_offset_parentConstraint1.tg[0].trt";
connectAttr "Jaw.r" "Lip_Bot_offset_parentConstraint1.tg[0].tr";
connectAttr "Jaw.ro" "Lip_Bot_offset_parentConstraint1.tg[0].tro";
connectAttr "Jaw.s" "Lip_Bot_offset_parentConstraint1.tg[0].ts";
connectAttr "Jaw.pm" "Lip_Bot_offset_parentConstraint1.tg[0].tpm";
connectAttr "Lip_Bot_offset_parentConstraint1.w0" "Lip_Bot_offset_parentConstraint1.tg[0].tw"
		;
connectAttr "Lip_Lf_offset.msg" "Lip_Lf.root[0]";
connectAttr "Lip_Lf_world.msg" "Lip_Lf.world[0]";
connectAttr "multiplyDivide2.oy" "Lip_Lf.xtyl";
connectAttr "multiplyDivide5.ox" "Lip_Lf.xtxl";
connectAttr "multiplyDivide3.oy" "Lip_Lf.mtyl";
connectAttr "multiplyDivide4.ox" "Lip_Lf.mtxl";
connectAttr "Lf_driver_group_parentConstraint1.ctx" "Lf_driver_group.tx";
connectAttr "Lf_driver_group_parentConstraint1.cty" "Lf_driver_group.ty";
connectAttr "Lf_driver_group_parentConstraint1.ctz" "Lf_driver_group.tz";
connectAttr "Lf_driver_group_parentConstraint1.crx" "Lf_driver_group.rx";
connectAttr "Lf_driver_group_parentConstraint1.cry" "Lf_driver_group.ry";
connectAttr "Lf_driver_group_parentConstraint1.crz" "Lf_driver_group.rz";
connectAttr "Corner_Driver_Lf_otDn_rig1_weightDriver.o[0]" "Corner_Driver_Lf_otDn_rig1.tx"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1_weightDriver.o[1]" "Corner_Driver_Lf_otDn_rig1.ty"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1_weightDriver.o[2]" "Corner_Driver_Lf_otDn_rig1.tz"
		;
connectAttr "unitConversion37.o" "Corner_Driver_Lf_otDn_rig1.rx";
connectAttr "unitConversion38.o" "Corner_Driver_Lf_otDn_rig1.ry";
connectAttr "unitConversion39.o" "Corner_Driver_Lf_otDn_rig1.rz";
connectAttr "Lf_driver_group.ro" "Lf_driver_group_parentConstraint1.cro";
connectAttr "Lf_driver_group.pim" "Lf_driver_group_parentConstraint1.cpim";
connectAttr "Lf_driver_group.rp" "Lf_driver_group_parentConstraint1.crp";
connectAttr "Lf_driver_group.rpt" "Lf_driver_group_parentConstraint1.crt";
connectAttr "jaw_muzzle_corner_driver.t" "Lf_driver_group_parentConstraint1.tg[0].tt"
		;
connectAttr "jaw_muzzle_corner_driver.rp" "Lf_driver_group_parentConstraint1.tg[0].trp"
		;
connectAttr "jaw_muzzle_corner_driver.rpt" "Lf_driver_group_parentConstraint1.tg[0].trt"
		;
connectAttr "jaw_muzzle_corner_driver.r" "Lf_driver_group_parentConstraint1.tg[0].tr"
		;
connectAttr "jaw_muzzle_corner_driver.ro" "Lf_driver_group_parentConstraint1.tg[0].tro"
		;
connectAttr "jaw_muzzle_corner_driver.s" "Lf_driver_group_parentConstraint1.tg[0].ts"
		;
connectAttr "jaw_muzzle_corner_driver.pm" "Lf_driver_group_parentConstraint1.tg[0].tpm"
		;
connectAttr "Lf_driver_group_parentConstraint1.w0" "Lf_driver_group_parentConstraint1.tg[0].tw"
		;
connectAttr "Lip_Top_Rt_04_offset_parentConstraint1.ctx" "Lip_Top_Rt_04_offset.tx"
		;
connectAttr "Lip_Top_Rt_04_offset_parentConstraint1.cty" "Lip_Top_Rt_04_offset.ty"
		;
connectAttr "Lip_Top_Rt_04_offset_parentConstraint1.ctz" "Lip_Top_Rt_04_offset.tz"
		;
connectAttr "Lip_Top_Rt_04_offset_parentConstraint1.crx" "Lip_Top_Rt_04_offset.rx"
		;
connectAttr "Lip_Top_Rt_04_offset_parentConstraint1.cry" "Lip_Top_Rt_04_offset.ry"
		;
connectAttr "Lip_Top_Rt_04_offset_parentConstraint1.crz" "Lip_Top_Rt_04_offset.rz"
		;
connectAttr "Lip_Top_Rt_04_offset.msg" "Lip_Top_Rt_04.root[0]";
connectAttr "Lip_Top_Rt_04_world.msg" "Lip_Top_Rt_04.world[0]";
connectAttr "Lip_Top_Rt_04_offset.ro" "Lip_Top_Rt_04_offset_parentConstraint1.cro"
		;
connectAttr "Lip_Top_Rt_04_offset.pim" "Lip_Top_Rt_04_offset_parentConstraint1.cpim"
		;
connectAttr "Lip_Top_Rt_04_offset.rp" "Lip_Top_Rt_04_offset_parentConstraint1.crp"
		;
connectAttr "Lip_Top_Rt_04_offset.rpt" "Lip_Top_Rt_04_offset_parentConstraint1.crt"
		;
connectAttr "Lip_Top.t" "Lip_Top_Rt_04_offset_parentConstraint1.tg[0].tt";
connectAttr "Lip_Top.rp" "Lip_Top_Rt_04_offset_parentConstraint1.tg[0].trp";
connectAttr "Lip_Top.rpt" "Lip_Top_Rt_04_offset_parentConstraint1.tg[0].trt";
connectAttr "Lip_Top.r" "Lip_Top_Rt_04_offset_parentConstraint1.tg[0].tr";
connectAttr "Lip_Top.ro" "Lip_Top_Rt_04_offset_parentConstraint1.tg[0].tro";
connectAttr "Lip_Top.s" "Lip_Top_Rt_04_offset_parentConstraint1.tg[0].ts";
connectAttr "Lip_Top.pm" "Lip_Top_Rt_04_offset_parentConstraint1.tg[0].tpm";
connectAttr "Lip_Top_Rt_04_offset_parentConstraint1.w0" "Lip_Top_Rt_04_offset_parentConstraint1.tg[0].tw"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.t" "Lip_Top_Rt_04_offset_parentConstraint1.tg[1].tt"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.rp" "Lip_Top_Rt_04_offset_parentConstraint1.tg[1].trp"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.rpt" "Lip_Top_Rt_04_offset_parentConstraint1.tg[1].trt"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.r" "Lip_Top_Rt_04_offset_parentConstraint1.tg[1].tr"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.ro" "Lip_Top_Rt_04_offset_parentConstraint1.tg[1].tro"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.s" "Lip_Top_Rt_04_offset_parentConstraint1.tg[1].ts"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.pm" "Lip_Top_Rt_04_offset_parentConstraint1.tg[1].tpm"
		;
connectAttr "Lip_Top_Rt_04_offset_parentConstraint1.w1" "Lip_Top_Rt_04_offset_parentConstraint1.tg[1].tw"
		;
connectAttr "Lip_Top_Rt_03_offset_parentConstraint1.ctx" "Lip_Top_Rt_03_offset.tx"
		;
connectAttr "Lip_Top_Rt_03_offset_parentConstraint1.cty" "Lip_Top_Rt_03_offset.ty"
		;
connectAttr "Lip_Top_Rt_03_offset_parentConstraint1.ctz" "Lip_Top_Rt_03_offset.tz"
		;
connectAttr "Lip_Top_Rt_03_offset_parentConstraint1.crx" "Lip_Top_Rt_03_offset.rx"
		;
connectAttr "Lip_Top_Rt_03_offset_parentConstraint1.cry" "Lip_Top_Rt_03_offset.ry"
		;
connectAttr "Lip_Top_Rt_03_offset_parentConstraint1.crz" "Lip_Top_Rt_03_offset.rz"
		;
connectAttr "Lip_Top_Rt_03_offset.msg" "Lip_Top_Rt_03.root[0]";
connectAttr "Lip_Top_Rt_03_world.msg" "Lip_Top_Rt_03.world[0]";
connectAttr "Lip_Top_Rt_03_offset.ro" "Lip_Top_Rt_03_offset_parentConstraint1.cro"
		;
connectAttr "Lip_Top_Rt_03_offset.pim" "Lip_Top_Rt_03_offset_parentConstraint1.cpim"
		;
connectAttr "Lip_Top_Rt_03_offset.rp" "Lip_Top_Rt_03_offset_parentConstraint1.crp"
		;
connectAttr "Lip_Top_Rt_03_offset.rpt" "Lip_Top_Rt_03_offset_parentConstraint1.crt"
		;
connectAttr "Lip_Top.t" "Lip_Top_Rt_03_offset_parentConstraint1.tg[0].tt";
connectAttr "Lip_Top.rp" "Lip_Top_Rt_03_offset_parentConstraint1.tg[0].trp";
connectAttr "Lip_Top.rpt" "Lip_Top_Rt_03_offset_parentConstraint1.tg[0].trt";
connectAttr "Lip_Top.r" "Lip_Top_Rt_03_offset_parentConstraint1.tg[0].tr";
connectAttr "Lip_Top.ro" "Lip_Top_Rt_03_offset_parentConstraint1.tg[0].tro";
connectAttr "Lip_Top.s" "Lip_Top_Rt_03_offset_parentConstraint1.tg[0].ts";
connectAttr "Lip_Top.pm" "Lip_Top_Rt_03_offset_parentConstraint1.tg[0].tpm";
connectAttr "Lip_Top_Rt_03_offset_parentConstraint1.w0" "Lip_Top_Rt_03_offset_parentConstraint1.tg[0].tw"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.t" "Lip_Top_Rt_03_offset_parentConstraint1.tg[1].tt"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.rp" "Lip_Top_Rt_03_offset_parentConstraint1.tg[1].trp"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.rpt" "Lip_Top_Rt_03_offset_parentConstraint1.tg[1].trt"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.r" "Lip_Top_Rt_03_offset_parentConstraint1.tg[1].tr"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.ro" "Lip_Top_Rt_03_offset_parentConstraint1.tg[1].tro"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.s" "Lip_Top_Rt_03_offset_parentConstraint1.tg[1].ts"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.pm" "Lip_Top_Rt_03_offset_parentConstraint1.tg[1].tpm"
		;
connectAttr "Lip_Top_Rt_03_offset_parentConstraint1.w1" "Lip_Top_Rt_03_offset_parentConstraint1.tg[1].tw"
		;
connectAttr "Lip_Top_Rt_02_offset_parentConstraint1.ctx" "Lip_Top_Rt_02_offset.tx"
		;
connectAttr "Lip_Top_Rt_02_offset_parentConstraint1.cty" "Lip_Top_Rt_02_offset.ty"
		;
connectAttr "Lip_Top_Rt_02_offset_parentConstraint1.ctz" "Lip_Top_Rt_02_offset.tz"
		;
connectAttr "Lip_Top_Rt_02_offset_parentConstraint1.crx" "Lip_Top_Rt_02_offset.rx"
		;
connectAttr "Lip_Top_Rt_02_offset_parentConstraint1.cry" "Lip_Top_Rt_02_offset.ry"
		;
connectAttr "Lip_Top_Rt_02_offset_parentConstraint1.crz" "Lip_Top_Rt_02_offset.rz"
		;
connectAttr "Lip_Top_Rt_02_offset.msg" "Lip_Top_Rt_02.root[0]";
connectAttr "Lip_Top_Rt_02_world.msg" "Lip_Top_Rt_02.world[0]";
connectAttr "Lip_Top_Rt_02_offset.ro" "Lip_Top_Rt_02_offset_parentConstraint1.cro"
		;
connectAttr "Lip_Top_Rt_02_offset.pim" "Lip_Top_Rt_02_offset_parentConstraint1.cpim"
		;
connectAttr "Lip_Top_Rt_02_offset.rp" "Lip_Top_Rt_02_offset_parentConstraint1.crp"
		;
connectAttr "Lip_Top_Rt_02_offset.rpt" "Lip_Top_Rt_02_offset_parentConstraint1.crt"
		;
connectAttr "Lip_Top.t" "Lip_Top_Rt_02_offset_parentConstraint1.tg[0].tt";
connectAttr "Lip_Top.rp" "Lip_Top_Rt_02_offset_parentConstraint1.tg[0].trp";
connectAttr "Lip_Top.rpt" "Lip_Top_Rt_02_offset_parentConstraint1.tg[0].trt";
connectAttr "Lip_Top.r" "Lip_Top_Rt_02_offset_parentConstraint1.tg[0].tr";
connectAttr "Lip_Top.ro" "Lip_Top_Rt_02_offset_parentConstraint1.tg[0].tro";
connectAttr "Lip_Top.s" "Lip_Top_Rt_02_offset_parentConstraint1.tg[0].ts";
connectAttr "Lip_Top.pm" "Lip_Top_Rt_02_offset_parentConstraint1.tg[0].tpm";
connectAttr "Lip_Top_Rt_02_offset_parentConstraint1.w0" "Lip_Top_Rt_02_offset_parentConstraint1.tg[0].tw"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.t" "Lip_Top_Rt_02_offset_parentConstraint1.tg[1].tt"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.rp" "Lip_Top_Rt_02_offset_parentConstraint1.tg[1].trp"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.rpt" "Lip_Top_Rt_02_offset_parentConstraint1.tg[1].trt"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.r" "Lip_Top_Rt_02_offset_parentConstraint1.tg[1].tr"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.ro" "Lip_Top_Rt_02_offset_parentConstraint1.tg[1].tro"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.s" "Lip_Top_Rt_02_offset_parentConstraint1.tg[1].ts"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.pm" "Lip_Top_Rt_02_offset_parentConstraint1.tg[1].tpm"
		;
connectAttr "Lip_Top_Rt_02_offset_parentConstraint1.w1" "Lip_Top_Rt_02_offset_parentConstraint1.tg[1].tw"
		;
connectAttr "Lip_Top_Rt_01_offset_parentConstraint1.ctx" "Lip_Top_Rt_01_offset.tx"
		;
connectAttr "Lip_Top_Rt_01_offset_parentConstraint1.cty" "Lip_Top_Rt_01_offset.ty"
		;
connectAttr "Lip_Top_Rt_01_offset_parentConstraint1.ctz" "Lip_Top_Rt_01_offset.tz"
		;
connectAttr "Lip_Top_Rt_01_offset_parentConstraint1.crx" "Lip_Top_Rt_01_offset.rx"
		;
connectAttr "Lip_Top_Rt_01_offset_parentConstraint1.cry" "Lip_Top_Rt_01_offset.ry"
		;
connectAttr "Lip_Top_Rt_01_offset_parentConstraint1.crz" "Lip_Top_Rt_01_offset.rz"
		;
connectAttr "Lip_Top_Rt_01_offset.msg" "Lip_Top_Rt_01.root[0]";
connectAttr "Lip_Top_Rt_01_world.msg" "Lip_Top_Rt_01.world[0]";
connectAttr "Lip_Top_Rt_01_offset.ro" "Lip_Top_Rt_01_offset_parentConstraint1.cro"
		;
connectAttr "Lip_Top_Rt_01_offset.pim" "Lip_Top_Rt_01_offset_parentConstraint1.cpim"
		;
connectAttr "Lip_Top_Rt_01_offset.rp" "Lip_Top_Rt_01_offset_parentConstraint1.crp"
		;
connectAttr "Lip_Top_Rt_01_offset.rpt" "Lip_Top_Rt_01_offset_parentConstraint1.crt"
		;
connectAttr "Lip_Top.t" "Lip_Top_Rt_01_offset_parentConstraint1.tg[0].tt";
connectAttr "Lip_Top.rp" "Lip_Top_Rt_01_offset_parentConstraint1.tg[0].trp";
connectAttr "Lip_Top.rpt" "Lip_Top_Rt_01_offset_parentConstraint1.tg[0].trt";
connectAttr "Lip_Top.r" "Lip_Top_Rt_01_offset_parentConstraint1.tg[0].tr";
connectAttr "Lip_Top.ro" "Lip_Top_Rt_01_offset_parentConstraint1.tg[0].tro";
connectAttr "Lip_Top.s" "Lip_Top_Rt_01_offset_parentConstraint1.tg[0].ts";
connectAttr "Lip_Top.pm" "Lip_Top_Rt_01_offset_parentConstraint1.tg[0].tpm";
connectAttr "Lip_Top_Rt_01_offset_parentConstraint1.w0" "Lip_Top_Rt_01_offset_parentConstraint1.tg[0].tw"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.t" "Lip_Top_Rt_01_offset_parentConstraint1.tg[1].tt"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.rp" "Lip_Top_Rt_01_offset_parentConstraint1.tg[1].trp"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.rpt" "Lip_Top_Rt_01_offset_parentConstraint1.tg[1].trt"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.r" "Lip_Top_Rt_01_offset_parentConstraint1.tg[1].tr"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.ro" "Lip_Top_Rt_01_offset_parentConstraint1.tg[1].tro"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.s" "Lip_Top_Rt_01_offset_parentConstraint1.tg[1].ts"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.pm" "Lip_Top_Rt_01_offset_parentConstraint1.tg[1].tpm"
		;
connectAttr "Lip_Top_Rt_01_offset_parentConstraint1.w1" "Lip_Top_Rt_01_offset_parentConstraint1.tg[1].tw"
		;
connectAttr "Lip_Top_Ct_offset_parentConstraint1.ctx" "Lip_Top_Ct_offset.tx";
connectAttr "Lip_Top_Ct_offset_parentConstraint1.cty" "Lip_Top_Ct_offset.ty";
connectAttr "Lip_Top_Ct_offset_parentConstraint1.ctz" "Lip_Top_Ct_offset.tz";
connectAttr "Lip_Top_Ct_offset_parentConstraint1.crx" "Lip_Top_Ct_offset.rx";
connectAttr "Lip_Top_Ct_offset_parentConstraint1.cry" "Lip_Top_Ct_offset.ry";
connectAttr "Lip_Top_Ct_offset_parentConstraint1.crz" "Lip_Top_Ct_offset.rz";
connectAttr "Lip_Top_Ct_offset.msg" "Lip_Top_Ct.root[0]";
connectAttr "Lip_Top_Ct_world.msg" "Lip_Top_Ct.world[0]";
connectAttr "Lip_Top_Ct_offset.ro" "Lip_Top_Ct_offset_parentConstraint1.cro";
connectAttr "Lip_Top_Ct_offset.pim" "Lip_Top_Ct_offset_parentConstraint1.cpim";
connectAttr "Lip_Top_Ct_offset.rp" "Lip_Top_Ct_offset_parentConstraint1.crp";
connectAttr "Lip_Top_Ct_offset.rpt" "Lip_Top_Ct_offset_parentConstraint1.crt";
connectAttr "Lip_Top.t" "Lip_Top_Ct_offset_parentConstraint1.tg[0].tt";
connectAttr "Lip_Top.rp" "Lip_Top_Ct_offset_parentConstraint1.tg[0].trp";
connectAttr "Lip_Top.rpt" "Lip_Top_Ct_offset_parentConstraint1.tg[0].trt";
connectAttr "Lip_Top.r" "Lip_Top_Ct_offset_parentConstraint1.tg[0].tr";
connectAttr "Lip_Top.ro" "Lip_Top_Ct_offset_parentConstraint1.tg[0].tro";
connectAttr "Lip_Top.s" "Lip_Top_Ct_offset_parentConstraint1.tg[0].ts";
connectAttr "Lip_Top.pm" "Lip_Top_Ct_offset_parentConstraint1.tg[0].tpm";
connectAttr "Lip_Top_Ct_offset_parentConstraint1.w0" "Lip_Top_Ct_offset_parentConstraint1.tg[0].tw"
		;
connectAttr "Lip_Top_Lf_01_offset_parentConstraint1.ctx" "Lip_Top_Lf_01_offset.tx"
		;
connectAttr "Lip_Top_Lf_01_offset_parentConstraint1.cty" "Lip_Top_Lf_01_offset.ty"
		;
connectAttr "Lip_Top_Lf_01_offset_parentConstraint1.ctz" "Lip_Top_Lf_01_offset.tz"
		;
connectAttr "Lip_Top_Lf_01_offset_parentConstraint1.crx" "Lip_Top_Lf_01_offset.rx"
		;
connectAttr "Lip_Top_Lf_01_offset_parentConstraint1.cry" "Lip_Top_Lf_01_offset.ry"
		;
connectAttr "Lip_Top_Lf_01_offset_parentConstraint1.crz" "Lip_Top_Lf_01_offset.rz"
		;
connectAttr "Lip_Top_Lf_01_offset.msg" "Lip_Top_Lf_01.root[0]";
connectAttr "Lip_Top_Lf_01_world.msg" "Lip_Top_Lf_01.world[0]";
connectAttr "Lip_Top_Lf_01_offset.ro" "Lip_Top_Lf_01_offset_parentConstraint1.cro"
		;
connectAttr "Lip_Top_Lf_01_offset.pim" "Lip_Top_Lf_01_offset_parentConstraint1.cpim"
		;
connectAttr "Lip_Top_Lf_01_offset.rp" "Lip_Top_Lf_01_offset_parentConstraint1.crp"
		;
connectAttr "Lip_Top_Lf_01_offset.rpt" "Lip_Top_Lf_01_offset_parentConstraint1.crt"
		;
connectAttr "Lip_Top.t" "Lip_Top_Lf_01_offset_parentConstraint1.tg[0].tt";
connectAttr "Lip_Top.rp" "Lip_Top_Lf_01_offset_parentConstraint1.tg[0].trp";
connectAttr "Lip_Top.rpt" "Lip_Top_Lf_01_offset_parentConstraint1.tg[0].trt";
connectAttr "Lip_Top.r" "Lip_Top_Lf_01_offset_parentConstraint1.tg[0].tr";
connectAttr "Lip_Top.ro" "Lip_Top_Lf_01_offset_parentConstraint1.tg[0].tro";
connectAttr "Lip_Top.s" "Lip_Top_Lf_01_offset_parentConstraint1.tg[0].ts";
connectAttr "Lip_Top.pm" "Lip_Top_Lf_01_offset_parentConstraint1.tg[0].tpm";
connectAttr "Lip_Top_Lf_01_offset_parentConstraint1.w0" "Lip_Top_Lf_01_offset_parentConstraint1.tg[0].tw"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.t" "Lip_Top_Lf_01_offset_parentConstraint1.tg[1].tt"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.rp" "Lip_Top_Lf_01_offset_parentConstraint1.tg[1].trp"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.rpt" "Lip_Top_Lf_01_offset_parentConstraint1.tg[1].trt"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.r" "Lip_Top_Lf_01_offset_parentConstraint1.tg[1].tr"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.ro" "Lip_Top_Lf_01_offset_parentConstraint1.tg[1].tro"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.s" "Lip_Top_Lf_01_offset_parentConstraint1.tg[1].ts"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.pm" "Lip_Top_Lf_01_offset_parentConstraint1.tg[1].tpm"
		;
connectAttr "Lip_Top_Lf_01_offset_parentConstraint1.w1" "Lip_Top_Lf_01_offset_parentConstraint1.tg[1].tw"
		;
connectAttr "Lip_Top_Lf_02_offset_parentConstraint1.ctx" "Lip_Top_Lf_02_offset.tx"
		;
connectAttr "Lip_Top_Lf_02_offset_parentConstraint1.cty" "Lip_Top_Lf_02_offset.ty"
		;
connectAttr "Lip_Top_Lf_02_offset_parentConstraint1.ctz" "Lip_Top_Lf_02_offset.tz"
		;
connectAttr "Lip_Top_Lf_02_offset_parentConstraint1.crx" "Lip_Top_Lf_02_offset.rx"
		;
connectAttr "Lip_Top_Lf_02_offset_parentConstraint1.cry" "Lip_Top_Lf_02_offset.ry"
		;
connectAttr "Lip_Top_Lf_02_offset_parentConstraint1.crz" "Lip_Top_Lf_02_offset.rz"
		;
connectAttr "Lip_Top_Lf_02_offset.msg" "Lip_Top_Lf_02.root[0]";
connectAttr "Lip_Top_Lf_02_world.msg" "Lip_Top_Lf_02.world[0]";
connectAttr "Lip_Top_Lf_02_offset.ro" "Lip_Top_Lf_02_offset_parentConstraint1.cro"
		;
connectAttr "Lip_Top_Lf_02_offset.pim" "Lip_Top_Lf_02_offset_parentConstraint1.cpim"
		;
connectAttr "Lip_Top_Lf_02_offset.rp" "Lip_Top_Lf_02_offset_parentConstraint1.crp"
		;
connectAttr "Lip_Top_Lf_02_offset.rpt" "Lip_Top_Lf_02_offset_parentConstraint1.crt"
		;
connectAttr "Lip_Top.t" "Lip_Top_Lf_02_offset_parentConstraint1.tg[0].tt";
connectAttr "Lip_Top.rp" "Lip_Top_Lf_02_offset_parentConstraint1.tg[0].trp";
connectAttr "Lip_Top.rpt" "Lip_Top_Lf_02_offset_parentConstraint1.tg[0].trt";
connectAttr "Lip_Top.r" "Lip_Top_Lf_02_offset_parentConstraint1.tg[0].tr";
connectAttr "Lip_Top.ro" "Lip_Top_Lf_02_offset_parentConstraint1.tg[0].tro";
connectAttr "Lip_Top.s" "Lip_Top_Lf_02_offset_parentConstraint1.tg[0].ts";
connectAttr "Lip_Top.pm" "Lip_Top_Lf_02_offset_parentConstraint1.tg[0].tpm";
connectAttr "Lip_Top_Lf_02_offset_parentConstraint1.w0" "Lip_Top_Lf_02_offset_parentConstraint1.tg[0].tw"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.t" "Lip_Top_Lf_02_offset_parentConstraint1.tg[1].tt"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.rp" "Lip_Top_Lf_02_offset_parentConstraint1.tg[1].trp"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.rpt" "Lip_Top_Lf_02_offset_parentConstraint1.tg[1].trt"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.r" "Lip_Top_Lf_02_offset_parentConstraint1.tg[1].tr"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.ro" "Lip_Top_Lf_02_offset_parentConstraint1.tg[1].tro"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.s" "Lip_Top_Lf_02_offset_parentConstraint1.tg[1].ts"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.pm" "Lip_Top_Lf_02_offset_parentConstraint1.tg[1].tpm"
		;
connectAttr "Lip_Top_Lf_02_offset_parentConstraint1.w1" "Lip_Top_Lf_02_offset_parentConstraint1.tg[1].tw"
		;
connectAttr "Lip_Top_Lf_03_offset_parentConstraint1.ctx" "Lip_Top_Lf_03_offset.tx"
		;
connectAttr "Lip_Top_Lf_03_offset_parentConstraint1.cty" "Lip_Top_Lf_03_offset.ty"
		;
connectAttr "Lip_Top_Lf_03_offset_parentConstraint1.ctz" "Lip_Top_Lf_03_offset.tz"
		;
connectAttr "Lip_Top_Lf_03_offset_parentConstraint1.crx" "Lip_Top_Lf_03_offset.rx"
		;
connectAttr "Lip_Top_Lf_03_offset_parentConstraint1.cry" "Lip_Top_Lf_03_offset.ry"
		;
connectAttr "Lip_Top_Lf_03_offset_parentConstraint1.crz" "Lip_Top_Lf_03_offset.rz"
		;
connectAttr "Lip_Top_Lf_03_offset.msg" "Lip_Top_Lf_03.root[0]";
connectAttr "Lip_Top_Lf_03_world.msg" "Lip_Top_Lf_03.world[0]";
connectAttr "Lip_Top_Lf_03_offset.ro" "Lip_Top_Lf_03_offset_parentConstraint1.cro"
		;
connectAttr "Lip_Top_Lf_03_offset.pim" "Lip_Top_Lf_03_offset_parentConstraint1.cpim"
		;
connectAttr "Lip_Top_Lf_03_offset.rp" "Lip_Top_Lf_03_offset_parentConstraint1.crp"
		;
connectAttr "Lip_Top_Lf_03_offset.rpt" "Lip_Top_Lf_03_offset_parentConstraint1.crt"
		;
connectAttr "Lip_Top.t" "Lip_Top_Lf_03_offset_parentConstraint1.tg[0].tt";
connectAttr "Lip_Top.rp" "Lip_Top_Lf_03_offset_parentConstraint1.tg[0].trp";
connectAttr "Lip_Top.rpt" "Lip_Top_Lf_03_offset_parentConstraint1.tg[0].trt";
connectAttr "Lip_Top.r" "Lip_Top_Lf_03_offset_parentConstraint1.tg[0].tr";
connectAttr "Lip_Top.ro" "Lip_Top_Lf_03_offset_parentConstraint1.tg[0].tro";
connectAttr "Lip_Top.s" "Lip_Top_Lf_03_offset_parentConstraint1.tg[0].ts";
connectAttr "Lip_Top.pm" "Lip_Top_Lf_03_offset_parentConstraint1.tg[0].tpm";
connectAttr "Lip_Top_Lf_03_offset_parentConstraint1.w0" "Lip_Top_Lf_03_offset_parentConstraint1.tg[0].tw"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.t" "Lip_Top_Lf_03_offset_parentConstraint1.tg[1].tt"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.rp" "Lip_Top_Lf_03_offset_parentConstraint1.tg[1].trp"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.rpt" "Lip_Top_Lf_03_offset_parentConstraint1.tg[1].trt"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.r" "Lip_Top_Lf_03_offset_parentConstraint1.tg[1].tr"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.ro" "Lip_Top_Lf_03_offset_parentConstraint1.tg[1].tro"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.s" "Lip_Top_Lf_03_offset_parentConstraint1.tg[1].ts"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.pm" "Lip_Top_Lf_03_offset_parentConstraint1.tg[1].tpm"
		;
connectAttr "Lip_Top_Lf_03_offset_parentConstraint1.w1" "Lip_Top_Lf_03_offset_parentConstraint1.tg[1].tw"
		;
connectAttr "Lip_Top_Lf_04_offset_parentConstraint1.ctx" "Lip_Top_Lf_04_offset.tx"
		;
connectAttr "Lip_Top_Lf_04_offset_parentConstraint1.cty" "Lip_Top_Lf_04_offset.ty"
		;
connectAttr "Lip_Top_Lf_04_offset_parentConstraint1.ctz" "Lip_Top_Lf_04_offset.tz"
		;
connectAttr "Lip_Top_Lf_04_offset_parentConstraint1.crx" "Lip_Top_Lf_04_offset.rx"
		;
connectAttr "Lip_Top_Lf_04_offset_parentConstraint1.cry" "Lip_Top_Lf_04_offset.ry"
		;
connectAttr "Lip_Top_Lf_04_offset_parentConstraint1.crz" "Lip_Top_Lf_04_offset.rz"
		;
connectAttr "Lip_Top_Lf_04_offset.msg" "Lip_Top_Lf_04.root[0]";
connectAttr "Lip_Top_Lf_04_world.msg" "Lip_Top_Lf_04.world[0]";
connectAttr "Lip_Top_Lf_04_offset.ro" "Lip_Top_Lf_04_offset_parentConstraint1.cro"
		;
connectAttr "Lip_Top_Lf_04_offset.pim" "Lip_Top_Lf_04_offset_parentConstraint1.cpim"
		;
connectAttr "Lip_Top_Lf_04_offset.rp" "Lip_Top_Lf_04_offset_parentConstraint1.crp"
		;
connectAttr "Lip_Top_Lf_04_offset.rpt" "Lip_Top_Lf_04_offset_parentConstraint1.crt"
		;
connectAttr "Lip_Top.t" "Lip_Top_Lf_04_offset_parentConstraint1.tg[0].tt";
connectAttr "Lip_Top.rp" "Lip_Top_Lf_04_offset_parentConstraint1.tg[0].trp";
connectAttr "Lip_Top.rpt" "Lip_Top_Lf_04_offset_parentConstraint1.tg[0].trt";
connectAttr "Lip_Top.r" "Lip_Top_Lf_04_offset_parentConstraint1.tg[0].tr";
connectAttr "Lip_Top.ro" "Lip_Top_Lf_04_offset_parentConstraint1.tg[0].tro";
connectAttr "Lip_Top.s" "Lip_Top_Lf_04_offset_parentConstraint1.tg[0].ts";
connectAttr "Lip_Top.pm" "Lip_Top_Lf_04_offset_parentConstraint1.tg[0].tpm";
connectAttr "Lip_Top_Lf_04_offset_parentConstraint1.w0" "Lip_Top_Lf_04_offset_parentConstraint1.tg[0].tw"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.t" "Lip_Top_Lf_04_offset_parentConstraint1.tg[1].tt"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.rp" "Lip_Top_Lf_04_offset_parentConstraint1.tg[1].trp"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.rpt" "Lip_Top_Lf_04_offset_parentConstraint1.tg[1].trt"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.r" "Lip_Top_Lf_04_offset_parentConstraint1.tg[1].tr"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.ro" "Lip_Top_Lf_04_offset_parentConstraint1.tg[1].tro"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.s" "Lip_Top_Lf_04_offset_parentConstraint1.tg[1].ts"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.pm" "Lip_Top_Lf_04_offset_parentConstraint1.tg[1].tpm"
		;
connectAttr "Lip_Top_Lf_04_offset_parentConstraint1.w1" "Lip_Top_Lf_04_offset_parentConstraint1.tg[1].tw"
		;
connectAttr "Lip_Bot_Rt_04_offset_parentConstraint1.ctx" "Lip_Bot_Rt_04_offset.tx"
		;
connectAttr "Lip_Bot_Rt_04_offset_parentConstraint1.cty" "Lip_Bot_Rt_04_offset.ty"
		;
connectAttr "Lip_Bot_Rt_04_offset_parentConstraint1.ctz" "Lip_Bot_Rt_04_offset.tz"
		;
connectAttr "Lip_Bot_Rt_04_offset_parentConstraint1.crx" "Lip_Bot_Rt_04_offset.rx"
		;
connectAttr "Lip_Bot_Rt_04_offset_parentConstraint1.cry" "Lip_Bot_Rt_04_offset.ry"
		;
connectAttr "Lip_Bot_Rt_04_offset_parentConstraint1.crz" "Lip_Bot_Rt_04_offset.rz"
		;
connectAttr "Lip_Bot_Rt_04_offset.msg" "Lip_Bot_Rt_04.root[0]";
connectAttr "Lip_Bot_Rt_04_world.msg" "Lip_Bot_Rt_04.world[0]";
connectAttr "Lip_Bot_Rt_04_offset.ro" "Lip_Bot_Rt_04_offset_parentConstraint1.cro"
		;
connectAttr "Lip_Bot_Rt_04_offset.pim" "Lip_Bot_Rt_04_offset_parentConstraint1.cpim"
		;
connectAttr "Lip_Bot_Rt_04_offset.rp" "Lip_Bot_Rt_04_offset_parentConstraint1.crp"
		;
connectAttr "Lip_Bot_Rt_04_offset.rpt" "Lip_Bot_Rt_04_offset_parentConstraint1.crt"
		;
connectAttr "Lip_Bot.t" "Lip_Bot_Rt_04_offset_parentConstraint1.tg[0].tt";
connectAttr "Lip_Bot.rp" "Lip_Bot_Rt_04_offset_parentConstraint1.tg[0].trp";
connectAttr "Lip_Bot.rpt" "Lip_Bot_Rt_04_offset_parentConstraint1.tg[0].trt";
connectAttr "Lip_Bot.r" "Lip_Bot_Rt_04_offset_parentConstraint1.tg[0].tr";
connectAttr "Lip_Bot.ro" "Lip_Bot_Rt_04_offset_parentConstraint1.tg[0].tro";
connectAttr "Lip_Bot.s" "Lip_Bot_Rt_04_offset_parentConstraint1.tg[0].ts";
connectAttr "Lip_Bot.pm" "Lip_Bot_Rt_04_offset_parentConstraint1.tg[0].tpm";
connectAttr "Lip_Bot_Rt_04_offset_parentConstraint1.w0" "Lip_Bot_Rt_04_offset_parentConstraint1.tg[0].tw"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.t" "Lip_Bot_Rt_04_offset_parentConstraint1.tg[1].tt"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.rp" "Lip_Bot_Rt_04_offset_parentConstraint1.tg[1].trp"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.rpt" "Lip_Bot_Rt_04_offset_parentConstraint1.tg[1].trt"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.r" "Lip_Bot_Rt_04_offset_parentConstraint1.tg[1].tr"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.ro" "Lip_Bot_Rt_04_offset_parentConstraint1.tg[1].tro"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.s" "Lip_Bot_Rt_04_offset_parentConstraint1.tg[1].ts"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.pm" "Lip_Bot_Rt_04_offset_parentConstraint1.tg[1].tpm"
		;
connectAttr "Lip_Bot_Rt_04_offset_parentConstraint1.w1" "Lip_Bot_Rt_04_offset_parentConstraint1.tg[1].tw"
		;
connectAttr "Lip_Bot_Rt_03_offset_parentConstraint1.ctx" "Lip_Bot_Rt_03_offset.tx"
		;
connectAttr "Lip_Bot_Rt_03_offset_parentConstraint1.cty" "Lip_Bot_Rt_03_offset.ty"
		;
connectAttr "Lip_Bot_Rt_03_offset_parentConstraint1.ctz" "Lip_Bot_Rt_03_offset.tz"
		;
connectAttr "Lip_Bot_Rt_03_offset_parentConstraint1.crx" "Lip_Bot_Rt_03_offset.rx"
		;
connectAttr "Lip_Bot_Rt_03_offset_parentConstraint1.cry" "Lip_Bot_Rt_03_offset.ry"
		;
connectAttr "Lip_Bot_Rt_03_offset_parentConstraint1.crz" "Lip_Bot_Rt_03_offset.rz"
		;
connectAttr "Lip_Bot_Rt_03_offset.msg" "Lip_Bot_Rt_03.root[0]";
connectAttr "Lip_Bot_Rt_03_world.msg" "Lip_Bot_Rt_03.world[0]";
connectAttr "Lip_Bot_Rt_03_offset.ro" "Lip_Bot_Rt_03_offset_parentConstraint1.cro"
		;
connectAttr "Lip_Bot_Rt_03_offset.pim" "Lip_Bot_Rt_03_offset_parentConstraint1.cpim"
		;
connectAttr "Lip_Bot_Rt_03_offset.rp" "Lip_Bot_Rt_03_offset_parentConstraint1.crp"
		;
connectAttr "Lip_Bot_Rt_03_offset.rpt" "Lip_Bot_Rt_03_offset_parentConstraint1.crt"
		;
connectAttr "Lip_Bot.t" "Lip_Bot_Rt_03_offset_parentConstraint1.tg[0].tt";
connectAttr "Lip_Bot.rp" "Lip_Bot_Rt_03_offset_parentConstraint1.tg[0].trp";
connectAttr "Lip_Bot.rpt" "Lip_Bot_Rt_03_offset_parentConstraint1.tg[0].trt";
connectAttr "Lip_Bot.r" "Lip_Bot_Rt_03_offset_parentConstraint1.tg[0].tr";
connectAttr "Lip_Bot.ro" "Lip_Bot_Rt_03_offset_parentConstraint1.tg[0].tro";
connectAttr "Lip_Bot.s" "Lip_Bot_Rt_03_offset_parentConstraint1.tg[0].ts";
connectAttr "Lip_Bot.pm" "Lip_Bot_Rt_03_offset_parentConstraint1.tg[0].tpm";
connectAttr "Lip_Bot_Rt_03_offset_parentConstraint1.w0" "Lip_Bot_Rt_03_offset_parentConstraint1.tg[0].tw"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.t" "Lip_Bot_Rt_03_offset_parentConstraint1.tg[1].tt"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.rp" "Lip_Bot_Rt_03_offset_parentConstraint1.tg[1].trp"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.rpt" "Lip_Bot_Rt_03_offset_parentConstraint1.tg[1].trt"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.r" "Lip_Bot_Rt_03_offset_parentConstraint1.tg[1].tr"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.ro" "Lip_Bot_Rt_03_offset_parentConstraint1.tg[1].tro"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.s" "Lip_Bot_Rt_03_offset_parentConstraint1.tg[1].ts"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.pm" "Lip_Bot_Rt_03_offset_parentConstraint1.tg[1].tpm"
		;
connectAttr "Lip_Bot_Rt_03_offset_parentConstraint1.w1" "Lip_Bot_Rt_03_offset_parentConstraint1.tg[1].tw"
		;
connectAttr "Lip_Bot_Rt_02_offset_parentConstraint1.ctx" "Lip_Bot_Rt_02_offset.tx"
		;
connectAttr "Lip_Bot_Rt_02_offset_parentConstraint1.cty" "Lip_Bot_Rt_02_offset.ty"
		;
connectAttr "Lip_Bot_Rt_02_offset_parentConstraint1.ctz" "Lip_Bot_Rt_02_offset.tz"
		;
connectAttr "Lip_Bot_Rt_02_offset_parentConstraint1.crx" "Lip_Bot_Rt_02_offset.rx"
		;
connectAttr "Lip_Bot_Rt_02_offset_parentConstraint1.cry" "Lip_Bot_Rt_02_offset.ry"
		;
connectAttr "Lip_Bot_Rt_02_offset_parentConstraint1.crz" "Lip_Bot_Rt_02_offset.rz"
		;
connectAttr "Lip_Bot_Rt_02_offset.msg" "Lip_Bot_Rt_02.root[0]";
connectAttr "Lip_Bot_Rt_02_world.msg" "Lip_Bot_Rt_02.world[0]";
connectAttr "Lip_Bot_Rt_02_offset.ro" "Lip_Bot_Rt_02_offset_parentConstraint1.cro"
		;
connectAttr "Lip_Bot_Rt_02_offset.pim" "Lip_Bot_Rt_02_offset_parentConstraint1.cpim"
		;
connectAttr "Lip_Bot_Rt_02_offset.rp" "Lip_Bot_Rt_02_offset_parentConstraint1.crp"
		;
connectAttr "Lip_Bot_Rt_02_offset.rpt" "Lip_Bot_Rt_02_offset_parentConstraint1.crt"
		;
connectAttr "Lip_Bot.t" "Lip_Bot_Rt_02_offset_parentConstraint1.tg[0].tt";
connectAttr "Lip_Bot.rp" "Lip_Bot_Rt_02_offset_parentConstraint1.tg[0].trp";
connectAttr "Lip_Bot.rpt" "Lip_Bot_Rt_02_offset_parentConstraint1.tg[0].trt";
connectAttr "Lip_Bot.r" "Lip_Bot_Rt_02_offset_parentConstraint1.tg[0].tr";
connectAttr "Lip_Bot.ro" "Lip_Bot_Rt_02_offset_parentConstraint1.tg[0].tro";
connectAttr "Lip_Bot.s" "Lip_Bot_Rt_02_offset_parentConstraint1.tg[0].ts";
connectAttr "Lip_Bot.pm" "Lip_Bot_Rt_02_offset_parentConstraint1.tg[0].tpm";
connectAttr "Lip_Bot_Rt_02_offset_parentConstraint1.w0" "Lip_Bot_Rt_02_offset_parentConstraint1.tg[0].tw"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.t" "Lip_Bot_Rt_02_offset_parentConstraint1.tg[1].tt"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.rp" "Lip_Bot_Rt_02_offset_parentConstraint1.tg[1].trp"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.rpt" "Lip_Bot_Rt_02_offset_parentConstraint1.tg[1].trt"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.r" "Lip_Bot_Rt_02_offset_parentConstraint1.tg[1].tr"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.ro" "Lip_Bot_Rt_02_offset_parentConstraint1.tg[1].tro"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.s" "Lip_Bot_Rt_02_offset_parentConstraint1.tg[1].ts"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.pm" "Lip_Bot_Rt_02_offset_parentConstraint1.tg[1].tpm"
		;
connectAttr "Lip_Bot_Rt_02_offset_parentConstraint1.w1" "Lip_Bot_Rt_02_offset_parentConstraint1.tg[1].tw"
		;
connectAttr "Lip_Bot_Rt_01_offset_parentConstraint1.ctx" "Lip_Bot_Rt_01_offset.tx"
		;
connectAttr "Lip_Bot_Rt_01_offset_parentConstraint1.cty" "Lip_Bot_Rt_01_offset.ty"
		;
connectAttr "Lip_Bot_Rt_01_offset_parentConstraint1.ctz" "Lip_Bot_Rt_01_offset.tz"
		;
connectAttr "Lip_Bot_Rt_01_offset_parentConstraint1.crx" "Lip_Bot_Rt_01_offset.rx"
		;
connectAttr "Lip_Bot_Rt_01_offset_parentConstraint1.cry" "Lip_Bot_Rt_01_offset.ry"
		;
connectAttr "Lip_Bot_Rt_01_offset_parentConstraint1.crz" "Lip_Bot_Rt_01_offset.rz"
		;
connectAttr "Lip_Bot_Rt_01_offset.msg" "Lip_Bot_Rt_01.root[0]";
connectAttr "Lip_Bot_Rt_01_world.msg" "Lip_Bot_Rt_01.world[0]";
connectAttr "Lip_Bot_Rt_01_offset.ro" "Lip_Bot_Rt_01_offset_parentConstraint1.cro"
		;
connectAttr "Lip_Bot_Rt_01_offset.pim" "Lip_Bot_Rt_01_offset_parentConstraint1.cpim"
		;
connectAttr "Lip_Bot_Rt_01_offset.rp" "Lip_Bot_Rt_01_offset_parentConstraint1.crp"
		;
connectAttr "Lip_Bot_Rt_01_offset.rpt" "Lip_Bot_Rt_01_offset_parentConstraint1.crt"
		;
connectAttr "Lip_Bot.t" "Lip_Bot_Rt_01_offset_parentConstraint1.tg[0].tt";
connectAttr "Lip_Bot.rp" "Lip_Bot_Rt_01_offset_parentConstraint1.tg[0].trp";
connectAttr "Lip_Bot.rpt" "Lip_Bot_Rt_01_offset_parentConstraint1.tg[0].trt";
connectAttr "Lip_Bot.r" "Lip_Bot_Rt_01_offset_parentConstraint1.tg[0].tr";
connectAttr "Lip_Bot.ro" "Lip_Bot_Rt_01_offset_parentConstraint1.tg[0].tro";
connectAttr "Lip_Bot.s" "Lip_Bot_Rt_01_offset_parentConstraint1.tg[0].ts";
connectAttr "Lip_Bot.pm" "Lip_Bot_Rt_01_offset_parentConstraint1.tg[0].tpm";
connectAttr "Lip_Bot_Rt_01_offset_parentConstraint1.w0" "Lip_Bot_Rt_01_offset_parentConstraint1.tg[0].tw"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.t" "Lip_Bot_Rt_01_offset_parentConstraint1.tg[1].tt"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.rp" "Lip_Bot_Rt_01_offset_parentConstraint1.tg[1].trp"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.rpt" "Lip_Bot_Rt_01_offset_parentConstraint1.tg[1].trt"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.r" "Lip_Bot_Rt_01_offset_parentConstraint1.tg[1].tr"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.ro" "Lip_Bot_Rt_01_offset_parentConstraint1.tg[1].tro"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.s" "Lip_Bot_Rt_01_offset_parentConstraint1.tg[1].ts"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1.pm" "Lip_Bot_Rt_01_offset_parentConstraint1.tg[1].tpm"
		;
connectAttr "Lip_Bot_Rt_01_offset_parentConstraint1.w1" "Lip_Bot_Rt_01_offset_parentConstraint1.tg[1].tw"
		;
connectAttr "Lip_Bot_Ct_offset_parentConstraint1.ctx" "Lip_Bot_Ct_offset.tx";
connectAttr "Lip_Bot_Ct_offset_parentConstraint1.cty" "Lip_Bot_Ct_offset.ty";
connectAttr "Lip_Bot_Ct_offset_parentConstraint1.ctz" "Lip_Bot_Ct_offset.tz";
connectAttr "Lip_Bot_Ct_offset_parentConstraint1.crx" "Lip_Bot_Ct_offset.rx";
connectAttr "Lip_Bot_Ct_offset_parentConstraint1.cry" "Lip_Bot_Ct_offset.ry";
connectAttr "Lip_Bot_Ct_offset_parentConstraint1.crz" "Lip_Bot_Ct_offset.rz";
connectAttr "Lip_Bot_Ct_offset.msg" "Lip_Bot_Ct.root[0]";
connectAttr "Lip_Bot_Ct_world.msg" "Lip_Bot_Ct.world[0]";
connectAttr "Lip_Bot_Ct_offset.ro" "Lip_Bot_Ct_offset_parentConstraint1.cro";
connectAttr "Lip_Bot_Ct_offset.pim" "Lip_Bot_Ct_offset_parentConstraint1.cpim";
connectAttr "Lip_Bot_Ct_offset.rp" "Lip_Bot_Ct_offset_parentConstraint1.crp";
connectAttr "Lip_Bot_Ct_offset.rpt" "Lip_Bot_Ct_offset_parentConstraint1.crt";
connectAttr "Lip_Bot.t" "Lip_Bot_Ct_offset_parentConstraint1.tg[0].tt";
connectAttr "Lip_Bot.rp" "Lip_Bot_Ct_offset_parentConstraint1.tg[0].trp";
connectAttr "Lip_Bot.rpt" "Lip_Bot_Ct_offset_parentConstraint1.tg[0].trt";
connectAttr "Lip_Bot.r" "Lip_Bot_Ct_offset_parentConstraint1.tg[0].tr";
connectAttr "Lip_Bot.ro" "Lip_Bot_Ct_offset_parentConstraint1.tg[0].tro";
connectAttr "Lip_Bot.s" "Lip_Bot_Ct_offset_parentConstraint1.tg[0].ts";
connectAttr "Lip_Bot.pm" "Lip_Bot_Ct_offset_parentConstraint1.tg[0].tpm";
connectAttr "Lip_Bot_Ct_offset_parentConstraint1.w0" "Lip_Bot_Ct_offset_parentConstraint1.tg[0].tw"
		;
connectAttr "Lip_Bot_Lf_01_offset_parentConstraint1.ctx" "Lip_Bot_Lf_01_offset.tx"
		;
connectAttr "Lip_Bot_Lf_01_offset_parentConstraint1.cty" "Lip_Bot_Lf_01_offset.ty"
		;
connectAttr "Lip_Bot_Lf_01_offset_parentConstraint1.ctz" "Lip_Bot_Lf_01_offset.tz"
		;
connectAttr "Lip_Bot_Lf_01_offset_parentConstraint1.crx" "Lip_Bot_Lf_01_offset.rx"
		;
connectAttr "Lip_Bot_Lf_01_offset_parentConstraint1.cry" "Lip_Bot_Lf_01_offset.ry"
		;
connectAttr "Lip_Bot_Lf_01_offset_parentConstraint1.crz" "Lip_Bot_Lf_01_offset.rz"
		;
connectAttr "Lip_Bot_Lf_01_offset.msg" "Lip_Bot_Lf_01.root[0]";
connectAttr "Lip_Bot_Lf_01_world.msg" "Lip_Bot_Lf_01.world[0]";
connectAttr "Lip_Bot_Lf_01_offset.ro" "Lip_Bot_Lf_01_offset_parentConstraint1.cro"
		;
connectAttr "Lip_Bot_Lf_01_offset.pim" "Lip_Bot_Lf_01_offset_parentConstraint1.cpim"
		;
connectAttr "Lip_Bot_Lf_01_offset.rp" "Lip_Bot_Lf_01_offset_parentConstraint1.crp"
		;
connectAttr "Lip_Bot_Lf_01_offset.rpt" "Lip_Bot_Lf_01_offset_parentConstraint1.crt"
		;
connectAttr "Lip_Bot.t" "Lip_Bot_Lf_01_offset_parentConstraint1.tg[0].tt";
connectAttr "Lip_Bot.rp" "Lip_Bot_Lf_01_offset_parentConstraint1.tg[0].trp";
connectAttr "Lip_Bot.rpt" "Lip_Bot_Lf_01_offset_parentConstraint1.tg[0].trt";
connectAttr "Lip_Bot.r" "Lip_Bot_Lf_01_offset_parentConstraint1.tg[0].tr";
connectAttr "Lip_Bot.ro" "Lip_Bot_Lf_01_offset_parentConstraint1.tg[0].tro";
connectAttr "Lip_Bot.s" "Lip_Bot_Lf_01_offset_parentConstraint1.tg[0].ts";
connectAttr "Lip_Bot.pm" "Lip_Bot_Lf_01_offset_parentConstraint1.tg[0].tpm";
connectAttr "Lip_Bot_Lf_01_offset_parentConstraint1.w0" "Lip_Bot_Lf_01_offset_parentConstraint1.tg[0].tw"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.t" "Lip_Bot_Lf_01_offset_parentConstraint1.tg[1].tt"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.rp" "Lip_Bot_Lf_01_offset_parentConstraint1.tg[1].trp"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.rpt" "Lip_Bot_Lf_01_offset_parentConstraint1.tg[1].trt"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.r" "Lip_Bot_Lf_01_offset_parentConstraint1.tg[1].tr"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.ro" "Lip_Bot_Lf_01_offset_parentConstraint1.tg[1].tro"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.s" "Lip_Bot_Lf_01_offset_parentConstraint1.tg[1].ts"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.pm" "Lip_Bot_Lf_01_offset_parentConstraint1.tg[1].tpm"
		;
connectAttr "Lip_Bot_Lf_01_offset_parentConstraint1.w1" "Lip_Bot_Lf_01_offset_parentConstraint1.tg[1].tw"
		;
connectAttr "Lip_Bot_Lf_02_offset_parentConstraint1.ctx" "Lip_Bot_Lf_02_offset.tx"
		;
connectAttr "Lip_Bot_Lf_02_offset_parentConstraint1.cty" "Lip_Bot_Lf_02_offset.ty"
		;
connectAttr "Lip_Bot_Lf_02_offset_parentConstraint1.ctz" "Lip_Bot_Lf_02_offset.tz"
		;
connectAttr "Lip_Bot_Lf_02_offset_parentConstraint1.crx" "Lip_Bot_Lf_02_offset.rx"
		;
connectAttr "Lip_Bot_Lf_02_offset_parentConstraint1.cry" "Lip_Bot_Lf_02_offset.ry"
		;
connectAttr "Lip_Bot_Lf_02_offset_parentConstraint1.crz" "Lip_Bot_Lf_02_offset.rz"
		;
connectAttr "Lip_Bot_Lf_02_offset.msg" "Lip_Bot_Lf_02.root[0]";
connectAttr "Lip_Bot_Lf_02_world.msg" "Lip_Bot_Lf_02.world[0]";
connectAttr "Lip_Bot_Lf_02_offset.ro" "Lip_Bot_Lf_02_offset_parentConstraint1.cro"
		;
connectAttr "Lip_Bot_Lf_02_offset.pim" "Lip_Bot_Lf_02_offset_parentConstraint1.cpim"
		;
connectAttr "Lip_Bot_Lf_02_offset.rp" "Lip_Bot_Lf_02_offset_parentConstraint1.crp"
		;
connectAttr "Lip_Bot_Lf_02_offset.rpt" "Lip_Bot_Lf_02_offset_parentConstraint1.crt"
		;
connectAttr "Lip_Bot.t" "Lip_Bot_Lf_02_offset_parentConstraint1.tg[0].tt";
connectAttr "Lip_Bot.rp" "Lip_Bot_Lf_02_offset_parentConstraint1.tg[0].trp";
connectAttr "Lip_Bot.rpt" "Lip_Bot_Lf_02_offset_parentConstraint1.tg[0].trt";
connectAttr "Lip_Bot.r" "Lip_Bot_Lf_02_offset_parentConstraint1.tg[0].tr";
connectAttr "Lip_Bot.ro" "Lip_Bot_Lf_02_offset_parentConstraint1.tg[0].tro";
connectAttr "Lip_Bot.s" "Lip_Bot_Lf_02_offset_parentConstraint1.tg[0].ts";
connectAttr "Lip_Bot.pm" "Lip_Bot_Lf_02_offset_parentConstraint1.tg[0].tpm";
connectAttr "Lip_Bot_Lf_02_offset_parentConstraint1.w0" "Lip_Bot_Lf_02_offset_parentConstraint1.tg[0].tw"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.t" "Lip_Bot_Lf_02_offset_parentConstraint1.tg[1].tt"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.rp" "Lip_Bot_Lf_02_offset_parentConstraint1.tg[1].trp"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.rpt" "Lip_Bot_Lf_02_offset_parentConstraint1.tg[1].trt"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.r" "Lip_Bot_Lf_02_offset_parentConstraint1.tg[1].tr"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.ro" "Lip_Bot_Lf_02_offset_parentConstraint1.tg[1].tro"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.s" "Lip_Bot_Lf_02_offset_parentConstraint1.tg[1].ts"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.pm" "Lip_Bot_Lf_02_offset_parentConstraint1.tg[1].tpm"
		;
connectAttr "Lip_Bot_Lf_02_offset_parentConstraint1.w1" "Lip_Bot_Lf_02_offset_parentConstraint1.tg[1].tw"
		;
connectAttr "Lip_Bot_Lf_03_offset_parentConstraint1.ctx" "Lip_Bot_Lf_03_offset.tx"
		;
connectAttr "Lip_Bot_Lf_03_offset_parentConstraint1.cty" "Lip_Bot_Lf_03_offset.ty"
		;
connectAttr "Lip_Bot_Lf_03_offset_parentConstraint1.ctz" "Lip_Bot_Lf_03_offset.tz"
		;
connectAttr "Lip_Bot_Lf_03_offset_parentConstraint1.crx" "Lip_Bot_Lf_03_offset.rx"
		;
connectAttr "Lip_Bot_Lf_03_offset_parentConstraint1.cry" "Lip_Bot_Lf_03_offset.ry"
		;
connectAttr "Lip_Bot_Lf_03_offset_parentConstraint1.crz" "Lip_Bot_Lf_03_offset.rz"
		;
connectAttr "Lip_Bot_Lf_03_offset.msg" "Lip_Bot_Lf_03.root[0]";
connectAttr "Lip_Bot_Lf_03_world.msg" "Lip_Bot_Lf_03.world[0]";
connectAttr "Lip_Bot_Lf_03_offset.ro" "Lip_Bot_Lf_03_offset_parentConstraint1.cro"
		;
connectAttr "Lip_Bot_Lf_03_offset.pim" "Lip_Bot_Lf_03_offset_parentConstraint1.cpim"
		;
connectAttr "Lip_Bot_Lf_03_offset.rp" "Lip_Bot_Lf_03_offset_parentConstraint1.crp"
		;
connectAttr "Lip_Bot_Lf_03_offset.rpt" "Lip_Bot_Lf_03_offset_parentConstraint1.crt"
		;
connectAttr "Lip_Bot.t" "Lip_Bot_Lf_03_offset_parentConstraint1.tg[0].tt";
connectAttr "Lip_Bot.rp" "Lip_Bot_Lf_03_offset_parentConstraint1.tg[0].trp";
connectAttr "Lip_Bot.rpt" "Lip_Bot_Lf_03_offset_parentConstraint1.tg[0].trt";
connectAttr "Lip_Bot.r" "Lip_Bot_Lf_03_offset_parentConstraint1.tg[0].tr";
connectAttr "Lip_Bot.ro" "Lip_Bot_Lf_03_offset_parentConstraint1.tg[0].tro";
connectAttr "Lip_Bot.s" "Lip_Bot_Lf_03_offset_parentConstraint1.tg[0].ts";
connectAttr "Lip_Bot.pm" "Lip_Bot_Lf_03_offset_parentConstraint1.tg[0].tpm";
connectAttr "Lip_Bot_Lf_03_offset_parentConstraint1.w0" "Lip_Bot_Lf_03_offset_parentConstraint1.tg[0].tw"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.t" "Lip_Bot_Lf_03_offset_parentConstraint1.tg[1].tt"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.rp" "Lip_Bot_Lf_03_offset_parentConstraint1.tg[1].trp"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.rpt" "Lip_Bot_Lf_03_offset_parentConstraint1.tg[1].trt"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.r" "Lip_Bot_Lf_03_offset_parentConstraint1.tg[1].tr"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.ro" "Lip_Bot_Lf_03_offset_parentConstraint1.tg[1].tro"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.s" "Lip_Bot_Lf_03_offset_parentConstraint1.tg[1].ts"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.pm" "Lip_Bot_Lf_03_offset_parentConstraint1.tg[1].tpm"
		;
connectAttr "Lip_Bot_Lf_03_offset_parentConstraint1.w1" "Lip_Bot_Lf_03_offset_parentConstraint1.tg[1].tw"
		;
connectAttr "Lip_Bot_Lf_04_offset_parentConstraint1.ctx" "Lip_Bot_Lf_04_offset.tx"
		;
connectAttr "Lip_Bot_Lf_04_offset_parentConstraint1.cty" "Lip_Bot_Lf_04_offset.ty"
		;
connectAttr "Lip_Bot_Lf_04_offset_parentConstraint1.ctz" "Lip_Bot_Lf_04_offset.tz"
		;
connectAttr "Lip_Bot_Lf_04_offset_parentConstraint1.crx" "Lip_Bot_Lf_04_offset.rx"
		;
connectAttr "Lip_Bot_Lf_04_offset_parentConstraint1.cry" "Lip_Bot_Lf_04_offset.ry"
		;
connectAttr "Lip_Bot_Lf_04_offset_parentConstraint1.crz" "Lip_Bot_Lf_04_offset.rz"
		;
connectAttr "Lip_Bot_Lf_04_offset.msg" "Lip_Bot_Lf_04.root[0]";
connectAttr "Lip_Bot_Lf_04_world.msg" "Lip_Bot_Lf_04.world[0]";
connectAttr "Lip_Bot_Lf_04_offset.ro" "Lip_Bot_Lf_04_offset_parentConstraint1.cro"
		;
connectAttr "Lip_Bot_Lf_04_offset.pim" "Lip_Bot_Lf_04_offset_parentConstraint1.cpim"
		;
connectAttr "Lip_Bot_Lf_04_offset.rp" "Lip_Bot_Lf_04_offset_parentConstraint1.crp"
		;
connectAttr "Lip_Bot_Lf_04_offset.rpt" "Lip_Bot_Lf_04_offset_parentConstraint1.crt"
		;
connectAttr "Lip_Bot.t" "Lip_Bot_Lf_04_offset_parentConstraint1.tg[0].tt";
connectAttr "Lip_Bot.rp" "Lip_Bot_Lf_04_offset_parentConstraint1.tg[0].trp";
connectAttr "Lip_Bot.rpt" "Lip_Bot_Lf_04_offset_parentConstraint1.tg[0].trt";
connectAttr "Lip_Bot.r" "Lip_Bot_Lf_04_offset_parentConstraint1.tg[0].tr";
connectAttr "Lip_Bot.ro" "Lip_Bot_Lf_04_offset_parentConstraint1.tg[0].tro";
connectAttr "Lip_Bot.s" "Lip_Bot_Lf_04_offset_parentConstraint1.tg[0].ts";
connectAttr "Lip_Bot.pm" "Lip_Bot_Lf_04_offset_parentConstraint1.tg[0].tpm";
connectAttr "Lip_Bot_Lf_04_offset_parentConstraint1.w0" "Lip_Bot_Lf_04_offset_parentConstraint1.tg[0].tw"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.t" "Lip_Bot_Lf_04_offset_parentConstraint1.tg[1].tt"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.rp" "Lip_Bot_Lf_04_offset_parentConstraint1.tg[1].trp"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.rpt" "Lip_Bot_Lf_04_offset_parentConstraint1.tg[1].trt"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.r" "Lip_Bot_Lf_04_offset_parentConstraint1.tg[1].tr"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.ro" "Lip_Bot_Lf_04_offset_parentConstraint1.tg[1].tro"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.s" "Lip_Bot_Lf_04_offset_parentConstraint1.tg[1].ts"
		;
connectAttr "Corner_Driver_Lf_otDn_rig1.pm" "Lip_Bot_Lf_04_offset_parentConstraint1.tg[1].tpm"
		;
connectAttr "Lip_Bot_Lf_04_offset_parentConstraint1.w1" "Lip_Bot_Lf_04_offset_parentConstraint1.tg[1].tw"
		;
connectAttr "Lip_Rt_offset.msg" "Lip_Rt.root[0]";
connectAttr "multiplyDivide11.oy" "Lip_Rt.xtyl";
connectAttr "multiplyDivide14.ox" "Lip_Rt.xtxl";
connectAttr "multiplyDivide12.oy" "Lip_Rt.mtyl";
connectAttr "multiplyDivide13.ox" "Lip_Rt.mtxl";
connectAttr "Rt_driver_group_parentConstraint1.ctx" "Rt_driver_group.tx";
connectAttr "Rt_driver_group_parentConstraint1.cty" "Rt_driver_group.ty";
connectAttr "Rt_driver_group_parentConstraint1.ctz" "Rt_driver_group.tz";
connectAttr "Rt_driver_group_parentConstraint1.crx" "Rt_driver_group.rx";
connectAttr "Rt_driver_group_parentConstraint1.cry" "Rt_driver_group.ry";
connectAttr "Rt_driver_group_parentConstraint1.crz" "Rt_driver_group.rz";
connectAttr "Corner_Driver_Rt_otDn_rig1_weightDriver.o[0]" "Corner_Driver_Rt_otDn_rig1.tx"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1_weightDriver.o[1]" "Corner_Driver_Rt_otDn_rig1.ty"
		;
connectAttr "Corner_Driver_Rt_otDn_rig1_weightDriver.o[2]" "Corner_Driver_Rt_otDn_rig1.tz"
		;
connectAttr "unitConversion67.o" "Corner_Driver_Rt_otDn_rig1.rx";
connectAttr "unitConversion68.o" "Corner_Driver_Rt_otDn_rig1.ry";
connectAttr "unitConversion69.o" "Corner_Driver_Rt_otDn_rig1.rz";
connectAttr "Rt_driver_group.ro" "Rt_driver_group_parentConstraint1.cro";
connectAttr "Rt_driver_group.pim" "Rt_driver_group_parentConstraint1.cpim";
connectAttr "Rt_driver_group.rp" "Rt_driver_group_parentConstraint1.crp";
connectAttr "Rt_driver_group.rpt" "Rt_driver_group_parentConstraint1.crt";
connectAttr "jaw_muzzle_corner_driver.t" "Rt_driver_group_parentConstraint1.tg[0].tt"
		;
connectAttr "jaw_muzzle_corner_driver.rp" "Rt_driver_group_parentConstraint1.tg[0].trp"
		;
connectAttr "jaw_muzzle_corner_driver.rpt" "Rt_driver_group_parentConstraint1.tg[0].trt"
		;
connectAttr "jaw_muzzle_corner_driver.r" "Rt_driver_group_parentConstraint1.tg[0].tr"
		;
connectAttr "jaw_muzzle_corner_driver.ro" "Rt_driver_group_parentConstraint1.tg[0].tro"
		;
connectAttr "jaw_muzzle_corner_driver.s" "Rt_driver_group_parentConstraint1.tg[0].ts"
		;
connectAttr "jaw_muzzle_corner_driver.pm" "Rt_driver_group_parentConstraint1.tg[0].tpm"
		;
connectAttr "Rt_driver_group_parentConstraint1.w0" "Rt_driver_group_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Lip_Bot_4_motionPath.ac" "L_Lip_Bot_4_null.t";
connectAttr "L_Lip_Bot_7_motionPath.ac" "L_Lip_Bot_7_null.t";
connectAttr "R_Lip_Bot_4_motionPath.ac" "R_Lip_Bot_4_null.t";
connectAttr "R_Lip_Bot_7_motionPath.ac" "R_Lip_Bot_7_null.t";
connectAttr "C_Lip_Bot_motionPath.ac" "C_Lip_Bot_null.t";
connectAttr "C_Lip_Top_motionPath.ac" "C_Lip_Top_null.t";
connectAttr "L_Lip_Top_4_motionPath.ac" "L_Lip_Top_4_null.t";
connectAttr "R_Lip_Top_4_motionPath.ac" "R_Lip_Top_4_null.t";
connectAttr "R_Lip_Top_7_motionPath.ac" "R_Lip_Top_7_null.t";
connectAttr "L_Lip_Top_7_motionPath.ac" "L_Lip_Top_7_null.t";
connectAttr "nose_top.rig_vis" "nose_rig.v";
connectAttr "Nose_jnt.ro" "Nose_jnt_parentConstraint1.cro";
connectAttr "Nose_jnt.pim" "Nose_jnt_parentConstraint1.cpim";
connectAttr "Nose_jnt.rp" "Nose_jnt_parentConstraint1.crp";
connectAttr "Nose_jnt.rpt" "Nose_jnt_parentConstraint1.crt";
connectAttr "Nose_jnt.jo" "Nose_jnt_parentConstraint1.cjo";
connectAttr "Rig_world.t" "Nose_jnt_parentConstraint1.tg[0].tt";
connectAttr "Rig_world.rp" "Nose_jnt_parentConstraint1.tg[0].trp";
connectAttr "Rig_world.rpt" "Nose_jnt_parentConstraint1.tg[0].trt";
connectAttr "Rig_world.r" "Nose_jnt_parentConstraint1.tg[0].tr";
connectAttr "Rig_world.ro" "Nose_jnt_parentConstraint1.tg[0].tro";
connectAttr "Rig_world.s" "Nose_jnt_parentConstraint1.tg[0].ts";
connectAttr "Rig_world.pm" "Nose_jnt_parentConstraint1.tg[0].tpm";
connectAttr "Nose_jnt_parentConstraint1.w0" "Nose_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Lf_nostril_jnt.ro" "Lf_nostril_jnt_parentConstraint1.cro";
connectAttr "Lf_nostril_jnt.pim" "Lf_nostril_jnt_parentConstraint1.cpim";
connectAttr "Lf_nostril_jnt.rp" "Lf_nostril_jnt_parentConstraint1.crp";
connectAttr "Lf_nostril_jnt.rpt" "Lf_nostril_jnt_parentConstraint1.crt";
connectAttr "Lf_nostril_jnt.jo" "Lf_nostril_jnt_parentConstraint1.cjo";
connectAttr "Lf_Nostril_world.t" "Lf_nostril_jnt_parentConstraint1.tg[0].tt";
connectAttr "Lf_Nostril_world.rp" "Lf_nostril_jnt_parentConstraint1.tg[0].trp";
connectAttr "Lf_Nostril_world.rpt" "Lf_nostril_jnt_parentConstraint1.tg[0].trt";
connectAttr "Lf_Nostril_world.r" "Lf_nostril_jnt_parentConstraint1.tg[0].tr";
connectAttr "Lf_Nostril_world.ro" "Lf_nostril_jnt_parentConstraint1.tg[0].tro";
connectAttr "Lf_Nostril_world.s" "Lf_nostril_jnt_parentConstraint1.tg[0].ts";
connectAttr "Lf_Nostril_world.pm" "Lf_nostril_jnt_parentConstraint1.tg[0].tpm";
connectAttr "Lf_nostril_jnt_parentConstraint1.w0" "Lf_nostril_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Rt_nostril_jnt.ro" "Rt_nostril_jnt_parentConstraint1.cro";
connectAttr "Rt_nostril_jnt.pim" "Rt_nostril_jnt_parentConstraint1.cpim";
connectAttr "Rt_nostril_jnt.rp" "Rt_nostril_jnt_parentConstraint1.crp";
connectAttr "Rt_nostril_jnt.rpt" "Rt_nostril_jnt_parentConstraint1.crt";
connectAttr "Rt_nostril_jnt.jo" "Rt_nostril_jnt_parentConstraint1.cjo";
connectAttr "Rt_Nostril_world.t" "Rt_nostril_jnt_parentConstraint1.tg[0].tt";
connectAttr "Rt_Nostril_world.rp" "Rt_nostril_jnt_parentConstraint1.tg[0].trp";
connectAttr "Rt_Nostril_world.rpt" "Rt_nostril_jnt_parentConstraint1.tg[0].trt";
connectAttr "Rt_Nostril_world.r" "Rt_nostril_jnt_parentConstraint1.tg[0].tr";
connectAttr "Rt_Nostril_world.ro" "Rt_nostril_jnt_parentConstraint1.tg[0].tro";
connectAttr "Rt_Nostril_world.s" "Rt_nostril_jnt_parentConstraint1.tg[0].ts";
connectAttr "Rt_Nostril_world.pm" "Rt_nostril_jnt_parentConstraint1.tg[0].tpm";
connectAttr "Rt_nostril_jnt_parentConstraint1.w0" "Rt_nostril_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Nose_offset.tx" "Rig_offset_world.tx";
connectAttr "Nose_offset.ty" "Rig_offset_world.ty";
connectAttr "Nose_offset.tz" "Rig_offset_world.tz";
connectAttr "Nose_offset.rx" "Rig_offset_world.rx";
connectAttr "Nose_offset.ry" "Rig_offset_world.ry";
connectAttr "Nose_offset.rz" "Rig_offset_world.rz";
connectAttr "Nose_offset.sx" "Rig_offset_world.sx";
connectAttr "Nose_offset.sy" "Rig_offset_world.sy";
connectAttr "Nose_offset.sz" "Rig_offset_world.sz";
connectAttr "Nose.tx" "Rig_world.tx";
connectAttr "Nose.ty" "Rig_world.ty";
connectAttr "Nose.tz" "Rig_world.tz";
connectAttr "Nose.rx" "Rig_world.rx";
connectAttr "Nose.ry" "Rig_world.ry";
connectAttr "Nose.rz" "Rig_world.rz";
connectAttr "Nose.sx" "Rig_world.sx";
connectAttr "Nose.sy" "Rig_world.sy";
connectAttr "Nose.sz" "Rig_world.sz";
connectAttr "Rig_offset_world.msg" "Rig_world.root[0]";
connectAttr "Lf_Nostril_offset.tx" "Lf_Nostril_offset_world.tx";
connectAttr "Lf_Nostril_offset.ty" "Lf_Nostril_offset_world.ty";
connectAttr "Lf_Nostril_offset.tz" "Lf_Nostril_offset_world.tz";
connectAttr "Lf_Nostril_offset.rx" "Lf_Nostril_offset_world.rx";
connectAttr "Lf_Nostril_offset.ry" "Lf_Nostril_offset_world.ry";
connectAttr "Lf_Nostril_offset.rz" "Lf_Nostril_offset_world.rz";
connectAttr "Lf_Nostril_offset.sx" "Lf_Nostril_offset_world.sx";
connectAttr "Lf_Nostril_offset.sy" "Lf_Nostril_offset_world.sy";
connectAttr "Lf_Nostril_offset.sz" "Lf_Nostril_offset_world.sz";
connectAttr "Lf_Nostril.tx" "Lf_Nostril_world.tx";
connectAttr "Lf_Nostril.ty" "Lf_Nostril_world.ty";
connectAttr "Lf_Nostril.tz" "Lf_Nostril_world.tz";
connectAttr "Lf_Nostril.rx" "Lf_Nostril_world.rx";
connectAttr "Lf_Nostril.ry" "Lf_Nostril_world.ry";
connectAttr "Lf_Nostril.rz" "Lf_Nostril_world.rz";
connectAttr "Lf_Nostril.sx" "Lf_Nostril_world.sx";
connectAttr "Lf_Nostril.sy" "Lf_Nostril_world.sy";
connectAttr "Lf_Nostril.sz" "Lf_Nostril_world.sz";
connectAttr "Lf_Nostril_offset_world.msg" "Lf_Nostril_world.root[0]";
connectAttr "Rt_Nostril_offset.tx" "Rt_Nostril_offset_world.tx";
connectAttr "Rt_Nostril_offset.ty" "Rt_Nostril_offset_world.ty";
connectAttr "Rt_Nostril_offset.tz" "Rt_Nostril_offset_world.tz";
connectAttr "Rt_Nostril_offset.rx" "Rt_Nostril_offset_world.rx";
connectAttr "Rt_Nostril_offset.ry" "Rt_Nostril_offset_world.ry";
connectAttr "Rt_Nostril_offset.rz" "Rt_Nostril_offset_world.rz";
connectAttr "Rt_Nostril_offset.sx" "Rt_Nostril_offset_world.sx";
connectAttr "Rt_Nostril_offset.sy" "Rt_Nostril_offset_world.sy";
connectAttr "Rt_Nostril_offset.sz" "Rt_Nostril_offset_world.sz";
connectAttr "Rt_Nostril.tx" "Rt_Nostril_world.tx";
connectAttr "Rt_Nostril.ty" "Rt_Nostril_world.ty";
connectAttr "Rt_Nostril.tz" "Rt_Nostril_world.tz";
connectAttr "Rt_Nostril.rx" "Rt_Nostril_world.rx";
connectAttr "Rt_Nostril.ry" "Rt_Nostril_world.ry";
connectAttr "Rt_Nostril.rz" "Rt_Nostril_world.rz";
connectAttr "Rt_Nostril.sx" "Rt_Nostril_world.sx";
connectAttr "Rt_Nostril.sy" "Rt_Nostril_world.sy";
connectAttr "Rt_Nostril.sz" "Rt_Nostril_world.sz";
connectAttr "Rt_Nostril_offset_world.msg" "Rt_Nostril_world.root[0]";
connectAttr "Rig_offset_parentConstraint1.ctx" "Nose_offset.tx";
connectAttr "Rig_offset_parentConstraint1.cty" "Nose_offset.ty";
connectAttr "Rig_offset_parentConstraint1.ctz" "Nose_offset.tz";
connectAttr "Rig_offset_parentConstraint1.crx" "Nose_offset.rx";
connectAttr "Rig_offset_parentConstraint1.cry" "Nose_offset.ry";
connectAttr "Rig_offset_parentConstraint1.crz" "Nose_offset.rz";
connectAttr "Nose_offset.msg" "Nose.root[0]";
connectAttr "Rig_world.msg" "Nose.world[0]";
connectAttr "Lf_Nostril_offset.msg" "Lf_Nostril.root[0]";
connectAttr "Lf_Nostril_world.msg" "Lf_Nostril.world[0]";
connectAttr "Rt_Nostril_offset.msg" "Rt_Nostril.root[0]";
connectAttr "Rt_Nostril_world.msg" "Rt_Nostril.world[0]";
connectAttr "Nose_offset.ro" "Rig_offset_parentConstraint1.cro";
connectAttr "Nose_offset.pim" "Rig_offset_parentConstraint1.cpim";
connectAttr "Nose_offset.rp" "Rig_offset_parentConstraint1.crp";
connectAttr "Nose_offset.rpt" "Rig_offset_parentConstraint1.crt";
connectAttr "Muzzle.t" "Rig_offset_parentConstraint1.tg[0].tt";
connectAttr "Muzzle.rp" "Rig_offset_parentConstraint1.tg[0].trp";
connectAttr "Muzzle.rpt" "Rig_offset_parentConstraint1.tg[0].trt";
connectAttr "Muzzle.r" "Rig_offset_parentConstraint1.tg[0].tr";
connectAttr "Muzzle.ro" "Rig_offset_parentConstraint1.tg[0].tro";
connectAttr "Muzzle.s" "Rig_offset_parentConstraint1.tg[0].ts";
connectAttr "Muzzle.pm" "Rig_offset_parentConstraint1.tg[0].tpm";
connectAttr "Rig_offset_parentConstraint1.w0" "Rig_offset_parentConstraint1.tg[0].tw"
		;
connectAttr "lf_brow_in_jnt.ro" "lf_brow_in_jnt_parentConstraint1.cro";
connectAttr "lf_brow_in_jnt.pim" "lf_brow_in_jnt_parentConstraint1.cpim";
connectAttr "lf_brow_in_jnt.rp" "lf_brow_in_jnt_parentConstraint1.crp";
connectAttr "lf_brow_in_jnt.rpt" "lf_brow_in_jnt_parentConstraint1.crt";
connectAttr "lf_brow_in_jnt.jo" "lf_brow_in_jnt_parentConstraint1.cjo";
connectAttr "Brow_Lf_In.t" "lf_brow_in_jnt_parentConstraint1.tg[0].tt";
connectAttr "Brow_Lf_In.rp" "lf_brow_in_jnt_parentConstraint1.tg[0].trp";
connectAttr "Brow_Lf_In.rpt" "lf_brow_in_jnt_parentConstraint1.tg[0].trt";
connectAttr "Brow_Lf_In.r" "lf_brow_in_jnt_parentConstraint1.tg[0].tr";
connectAttr "Brow_Lf_In.ro" "lf_brow_in_jnt_parentConstraint1.tg[0].tro";
connectAttr "Brow_Lf_In.s" "lf_brow_in_jnt_parentConstraint1.tg[0].ts";
connectAttr "Brow_Lf_In.pm" "lf_brow_in_jnt_parentConstraint1.tg[0].tpm";
connectAttr "lf_brow_in_jnt_parentConstraint1.w0" "lf_brow_in_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "lf_brow_md_jnt.ro" "lf_brow_md_jnt_parentConstraint1.cro";
connectAttr "lf_brow_md_jnt.pim" "lf_brow_md_jnt_parentConstraint1.cpim";
connectAttr "lf_brow_md_jnt.rp" "lf_brow_md_jnt_parentConstraint1.crp";
connectAttr "lf_brow_md_jnt.rpt" "lf_brow_md_jnt_parentConstraint1.crt";
connectAttr "lf_brow_md_jnt.jo" "lf_brow_md_jnt_parentConstraint1.cjo";
connectAttr "Brow_Lf_Md.t" "lf_brow_md_jnt_parentConstraint1.tg[0].tt";
connectAttr "Brow_Lf_Md.rp" "lf_brow_md_jnt_parentConstraint1.tg[0].trp";
connectAttr "Brow_Lf_Md.rpt" "lf_brow_md_jnt_parentConstraint1.tg[0].trt";
connectAttr "Brow_Lf_Md.r" "lf_brow_md_jnt_parentConstraint1.tg[0].tr";
connectAttr "Brow_Lf_Md.ro" "lf_brow_md_jnt_parentConstraint1.tg[0].tro";
connectAttr "Brow_Lf_Md.s" "lf_brow_md_jnt_parentConstraint1.tg[0].ts";
connectAttr "Brow_Lf_Md.pm" "lf_brow_md_jnt_parentConstraint1.tg[0].tpm";
connectAttr "lf_brow_md_jnt_parentConstraint1.w0" "lf_brow_md_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "lf_brow_ot_jnt.ro" "lf_brow_ot_jnt_parentConstraint1.cro";
connectAttr "lf_brow_ot_jnt.pim" "lf_brow_ot_jnt_parentConstraint1.cpim";
connectAttr "lf_brow_ot_jnt.rp" "lf_brow_ot_jnt_parentConstraint1.crp";
connectAttr "lf_brow_ot_jnt.rpt" "lf_brow_ot_jnt_parentConstraint1.crt";
connectAttr "lf_brow_ot_jnt.jo" "lf_brow_ot_jnt_parentConstraint1.cjo";
connectAttr "Brow_Lf_Ot.t" "lf_brow_ot_jnt_parentConstraint1.tg[0].tt";
connectAttr "Brow_Lf_Ot.rp" "lf_brow_ot_jnt_parentConstraint1.tg[0].trp";
connectAttr "Brow_Lf_Ot.rpt" "lf_brow_ot_jnt_parentConstraint1.tg[0].trt";
connectAttr "Brow_Lf_Ot.r" "lf_brow_ot_jnt_parentConstraint1.tg[0].tr";
connectAttr "Brow_Lf_Ot.ro" "lf_brow_ot_jnt_parentConstraint1.tg[0].tro";
connectAttr "Brow_Lf_Ot.s" "lf_brow_ot_jnt_parentConstraint1.tg[0].ts";
connectAttr "Brow_Lf_Ot.pm" "lf_brow_ot_jnt_parentConstraint1.tg[0].tpm";
connectAttr "lf_brow_ot_jnt_parentConstraint1.w0" "lf_brow_ot_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "rt_brow_in_jnt.ro" "rt_brow_in_jnt_parentConstraint1.cro";
connectAttr "rt_brow_in_jnt.pim" "rt_brow_in_jnt_parentConstraint1.cpim";
connectAttr "rt_brow_in_jnt.rp" "rt_brow_in_jnt_parentConstraint1.crp";
connectAttr "rt_brow_in_jnt.rpt" "rt_brow_in_jnt_parentConstraint1.crt";
connectAttr "rt_brow_in_jnt.jo" "rt_brow_in_jnt_parentConstraint1.cjo";
connectAttr "Brow_Rt_In.t" "rt_brow_in_jnt_parentConstraint1.tg[0].tt";
connectAttr "Brow_Rt_In.rp" "rt_brow_in_jnt_parentConstraint1.tg[0].trp";
connectAttr "Brow_Rt_In.rpt" "rt_brow_in_jnt_parentConstraint1.tg[0].trt";
connectAttr "Brow_Rt_In.r" "rt_brow_in_jnt_parentConstraint1.tg[0].tr";
connectAttr "Brow_Rt_In.ro" "rt_brow_in_jnt_parentConstraint1.tg[0].tro";
connectAttr "Brow_Rt_In.s" "rt_brow_in_jnt_parentConstraint1.tg[0].ts";
connectAttr "Brow_Rt_In.pm" "rt_brow_in_jnt_parentConstraint1.tg[0].tpm";
connectAttr "rt_brow_in_jnt_parentConstraint1.w0" "rt_brow_in_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "rt_brow_md_jnt.ro" "rt_brow_md_jnt_parentConstraint1.cro";
connectAttr "rt_brow_md_jnt.pim" "rt_brow_md_jnt_parentConstraint1.cpim";
connectAttr "rt_brow_md_jnt.rp" "rt_brow_md_jnt_parentConstraint1.crp";
connectAttr "rt_brow_md_jnt.rpt" "rt_brow_md_jnt_parentConstraint1.crt";
connectAttr "rt_brow_md_jnt.jo" "rt_brow_md_jnt_parentConstraint1.cjo";
connectAttr "Brow_Rt_Md.t" "rt_brow_md_jnt_parentConstraint1.tg[0].tt";
connectAttr "Brow_Rt_Md.rp" "rt_brow_md_jnt_parentConstraint1.tg[0].trp";
connectAttr "Brow_Rt_Md.rpt" "rt_brow_md_jnt_parentConstraint1.tg[0].trt";
connectAttr "Brow_Rt_Md.r" "rt_brow_md_jnt_parentConstraint1.tg[0].tr";
connectAttr "Brow_Rt_Md.ro" "rt_brow_md_jnt_parentConstraint1.tg[0].tro";
connectAttr "Brow_Rt_Md.s" "rt_brow_md_jnt_parentConstraint1.tg[0].ts";
connectAttr "Brow_Rt_Md.pm" "rt_brow_md_jnt_parentConstraint1.tg[0].tpm";
connectAttr "rt_brow_md_jnt_parentConstraint1.w0" "rt_brow_md_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "rt_brow_ot_jnt.ro" "rt_brow_ot_jnt_parentConstraint1.cro";
connectAttr "rt_brow_ot_jnt.pim" "rt_brow_ot_jnt_parentConstraint1.cpim";
connectAttr "rt_brow_ot_jnt.rp" "rt_brow_ot_jnt_parentConstraint1.crp";
connectAttr "rt_brow_ot_jnt.rpt" "rt_brow_ot_jnt_parentConstraint1.crt";
connectAttr "rt_brow_ot_jnt.jo" "rt_brow_ot_jnt_parentConstraint1.cjo";
connectAttr "Brow_Rt_Ot.t" "rt_brow_ot_jnt_parentConstraint1.tg[0].tt";
connectAttr "Brow_Rt_Ot.rp" "rt_brow_ot_jnt_parentConstraint1.tg[0].trp";
connectAttr "Brow_Rt_Ot.rpt" "rt_brow_ot_jnt_parentConstraint1.tg[0].trt";
connectAttr "Brow_Rt_Ot.r" "rt_brow_ot_jnt_parentConstraint1.tg[0].tr";
connectAttr "Brow_Rt_Ot.ro" "rt_brow_ot_jnt_parentConstraint1.tg[0].tro";
connectAttr "Brow_Rt_Ot.s" "rt_brow_ot_jnt_parentConstraint1.tg[0].ts";
connectAttr "Brow_Rt_Ot.pm" "rt_brow_ot_jnt_parentConstraint1.tg[0].tpm";
connectAttr "rt_brow_ot_jnt_parentConstraint1.w0" "rt_brow_ot_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Lip_Top_7.ro" "R_Lip_Top_7_parentConstraint1.cro";
connectAttr "R_Lip_Top_7.pim" "R_Lip_Top_7_parentConstraint1.cpim";
connectAttr "R_Lip_Top_7.rp" "R_Lip_Top_7_parentConstraint1.crp";
connectAttr "R_Lip_Top_7.rpt" "R_Lip_Top_7_parentConstraint1.crt";
connectAttr "R_Lip_Top_7.jo" "R_Lip_Top_7_parentConstraint1.cjo";
connectAttr "R_Lip_Top_7_null.t" "R_Lip_Top_7_parentConstraint1.tg[0].tt";
connectAttr "R_Lip_Top_7_null.rp" "R_Lip_Top_7_parentConstraint1.tg[0].trp";
connectAttr "R_Lip_Top_7_null.rpt" "R_Lip_Top_7_parentConstraint1.tg[0].trt";
connectAttr "R_Lip_Top_7_null.r" "R_Lip_Top_7_parentConstraint1.tg[0].tr";
connectAttr "R_Lip_Top_7_null.ro" "R_Lip_Top_7_parentConstraint1.tg[0].tro";
connectAttr "R_Lip_Top_7_null.s" "R_Lip_Top_7_parentConstraint1.tg[0].ts";
connectAttr "R_Lip_Top_7_null.pm" "R_Lip_Top_7_parentConstraint1.tg[0].tpm";
connectAttr "R_Lip_Top_7_parentConstraint1.w0" "R_Lip_Top_7_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Lip_Top_4.ro" "R_Lip_Top_4_parentConstraint1.cro";
connectAttr "R_Lip_Top_4.pim" "R_Lip_Top_4_parentConstraint1.cpim";
connectAttr "R_Lip_Top_4.rp" "R_Lip_Top_4_parentConstraint1.crp";
connectAttr "R_Lip_Top_4.rpt" "R_Lip_Top_4_parentConstraint1.crt";
connectAttr "R_Lip_Top_4.jo" "R_Lip_Top_4_parentConstraint1.cjo";
connectAttr "R_Lip_Top_4_null.t" "R_Lip_Top_4_parentConstraint1.tg[0].tt";
connectAttr "R_Lip_Top_4_null.rp" "R_Lip_Top_4_parentConstraint1.tg[0].trp";
connectAttr "R_Lip_Top_4_null.rpt" "R_Lip_Top_4_parentConstraint1.tg[0].trt";
connectAttr "R_Lip_Top_4_null.r" "R_Lip_Top_4_parentConstraint1.tg[0].tr";
connectAttr "R_Lip_Top_4_null.ro" "R_Lip_Top_4_parentConstraint1.tg[0].tro";
connectAttr "R_Lip_Top_4_null.s" "R_Lip_Top_4_parentConstraint1.tg[0].ts";
connectAttr "R_Lip_Top_4_null.pm" "R_Lip_Top_4_parentConstraint1.tg[0].tpm";
connectAttr "R_Lip_Top_4_parentConstraint1.w0" "R_Lip_Top_4_parentConstraint1.tg[0].tw"
		;
connectAttr "C_Lip_Top.ro" "C_Lip_Top_parentConstraint1.cro";
connectAttr "C_Lip_Top.pim" "C_Lip_Top_parentConstraint1.cpim";
connectAttr "C_Lip_Top.rp" "C_Lip_Top_parentConstraint1.crp";
connectAttr "C_Lip_Top.rpt" "C_Lip_Top_parentConstraint1.crt";
connectAttr "C_Lip_Top.jo" "C_Lip_Top_parentConstraint1.cjo";
connectAttr "C_Lip_Top_null.t" "C_Lip_Top_parentConstraint1.tg[0].tt";
connectAttr "C_Lip_Top_null.rp" "C_Lip_Top_parentConstraint1.tg[0].trp";
connectAttr "C_Lip_Top_null.rpt" "C_Lip_Top_parentConstraint1.tg[0].trt";
connectAttr "C_Lip_Top_null.r" "C_Lip_Top_parentConstraint1.tg[0].tr";
connectAttr "C_Lip_Top_null.ro" "C_Lip_Top_parentConstraint1.tg[0].tro";
connectAttr "C_Lip_Top_null.s" "C_Lip_Top_parentConstraint1.tg[0].ts";
connectAttr "C_Lip_Top_null.pm" "C_Lip_Top_parentConstraint1.tg[0].tpm";
connectAttr "C_Lip_Top_parentConstraint1.w0" "C_Lip_Top_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Lip_Top_4.ro" "L_Lip_Top_4_parentConstraint1.cro";
connectAttr "L_Lip_Top_4.pim" "L_Lip_Top_4_parentConstraint1.cpim";
connectAttr "L_Lip_Top_4.rp" "L_Lip_Top_4_parentConstraint1.crp";
connectAttr "L_Lip_Top_4.rpt" "L_Lip_Top_4_parentConstraint1.crt";
connectAttr "L_Lip_Top_4.jo" "L_Lip_Top_4_parentConstraint1.cjo";
connectAttr "L_Lip_Top_4_null.t" "L_Lip_Top_4_parentConstraint1.tg[0].tt";
connectAttr "L_Lip_Top_4_null.rp" "L_Lip_Top_4_parentConstraint1.tg[0].trp";
connectAttr "L_Lip_Top_4_null.rpt" "L_Lip_Top_4_parentConstraint1.tg[0].trt";
connectAttr "L_Lip_Top_4_null.r" "L_Lip_Top_4_parentConstraint1.tg[0].tr";
connectAttr "L_Lip_Top_4_null.ro" "L_Lip_Top_4_parentConstraint1.tg[0].tro";
connectAttr "L_Lip_Top_4_null.s" "L_Lip_Top_4_parentConstraint1.tg[0].ts";
connectAttr "L_Lip_Top_4_null.pm" "L_Lip_Top_4_parentConstraint1.tg[0].tpm";
connectAttr "L_Lip_Top_4_parentConstraint1.w0" "L_Lip_Top_4_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Lip_Top_7.ro" "L_Lip_Top_7_parentConstraint1.cro";
connectAttr "L_Lip_Top_7.pim" "L_Lip_Top_7_parentConstraint1.cpim";
connectAttr "L_Lip_Top_7.rp" "L_Lip_Top_7_parentConstraint1.crp";
connectAttr "L_Lip_Top_7.rpt" "L_Lip_Top_7_parentConstraint1.crt";
connectAttr "L_Lip_Top_7.jo" "L_Lip_Top_7_parentConstraint1.cjo";
connectAttr "L_Lip_Top_7_null.t" "L_Lip_Top_7_parentConstraint1.tg[0].tt";
connectAttr "L_Lip_Top_7_null.rp" "L_Lip_Top_7_parentConstraint1.tg[0].trp";
connectAttr "L_Lip_Top_7_null.rpt" "L_Lip_Top_7_parentConstraint1.tg[0].trt";
connectAttr "L_Lip_Top_7_null.r" "L_Lip_Top_7_parentConstraint1.tg[0].tr";
connectAttr "L_Lip_Top_7_null.ro" "L_Lip_Top_7_parentConstraint1.tg[0].tro";
connectAttr "L_Lip_Top_7_null.s" "L_Lip_Top_7_parentConstraint1.tg[0].ts";
connectAttr "L_Lip_Top_7_null.pm" "L_Lip_Top_7_parentConstraint1.tg[0].tpm";
connectAttr "L_Lip_Top_7_parentConstraint1.w0" "L_Lip_Top_7_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Lip_Bot_7.ro" "R_Lip_Bot_7_parentConstraint1.cro";
connectAttr "R_Lip_Bot_7.pim" "R_Lip_Bot_7_parentConstraint1.cpim";
connectAttr "R_Lip_Bot_7.rp" "R_Lip_Bot_7_parentConstraint1.crp";
connectAttr "R_Lip_Bot_7.rpt" "R_Lip_Bot_7_parentConstraint1.crt";
connectAttr "R_Lip_Bot_7.jo" "R_Lip_Bot_7_parentConstraint1.cjo";
connectAttr "R_Lip_Bot_7_null.t" "R_Lip_Bot_7_parentConstraint1.tg[0].tt";
connectAttr "R_Lip_Bot_7_null.rp" "R_Lip_Bot_7_parentConstraint1.tg[0].trp";
connectAttr "R_Lip_Bot_7_null.rpt" "R_Lip_Bot_7_parentConstraint1.tg[0].trt";
connectAttr "R_Lip_Bot_7_null.r" "R_Lip_Bot_7_parentConstraint1.tg[0].tr";
connectAttr "R_Lip_Bot_7_null.ro" "R_Lip_Bot_7_parentConstraint1.tg[0].tro";
connectAttr "R_Lip_Bot_7_null.s" "R_Lip_Bot_7_parentConstraint1.tg[0].ts";
connectAttr "R_Lip_Bot_7_null.pm" "R_Lip_Bot_7_parentConstraint1.tg[0].tpm";
connectAttr "R_Lip_Bot_7_parentConstraint1.w0" "R_Lip_Bot_7_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Lip_Bot_4.ro" "R_Lip_Bot_4_parentConstraint1.cro";
connectAttr "R_Lip_Bot_4.pim" "R_Lip_Bot_4_parentConstraint1.cpim";
connectAttr "R_Lip_Bot_4.rp" "R_Lip_Bot_4_parentConstraint1.crp";
connectAttr "R_Lip_Bot_4.rpt" "R_Lip_Bot_4_parentConstraint1.crt";
connectAttr "R_Lip_Bot_4.jo" "R_Lip_Bot_4_parentConstraint1.cjo";
connectAttr "R_Lip_Bot_4_null.t" "R_Lip_Bot_4_parentConstraint1.tg[0].tt";
connectAttr "R_Lip_Bot_4_null.rp" "R_Lip_Bot_4_parentConstraint1.tg[0].trp";
connectAttr "R_Lip_Bot_4_null.rpt" "R_Lip_Bot_4_parentConstraint1.tg[0].trt";
connectAttr "R_Lip_Bot_4_null.r" "R_Lip_Bot_4_parentConstraint1.tg[0].tr";
connectAttr "R_Lip_Bot_4_null.ro" "R_Lip_Bot_4_parentConstraint1.tg[0].tro";
connectAttr "R_Lip_Bot_4_null.s" "R_Lip_Bot_4_parentConstraint1.tg[0].ts";
connectAttr "R_Lip_Bot_4_null.pm" "R_Lip_Bot_4_parentConstraint1.tg[0].tpm";
connectAttr "R_Lip_Bot_4_parentConstraint1.w0" "R_Lip_Bot_4_parentConstraint1.tg[0].tw"
		;
connectAttr "C_Lip_Bot.ro" "C_Lip_Bot_parentConstraint1.cro";
connectAttr "C_Lip_Bot.pim" "C_Lip_Bot_parentConstraint1.cpim";
connectAttr "C_Lip_Bot.rp" "C_Lip_Bot_parentConstraint1.crp";
connectAttr "C_Lip_Bot.rpt" "C_Lip_Bot_parentConstraint1.crt";
connectAttr "C_Lip_Bot.jo" "C_Lip_Bot_parentConstraint1.cjo";
connectAttr "C_Lip_Bot_null.t" "C_Lip_Bot_parentConstraint1.tg[0].tt";
connectAttr "C_Lip_Bot_null.rp" "C_Lip_Bot_parentConstraint1.tg[0].trp";
connectAttr "C_Lip_Bot_null.rpt" "C_Lip_Bot_parentConstraint1.tg[0].trt";
connectAttr "C_Lip_Bot_null.r" "C_Lip_Bot_parentConstraint1.tg[0].tr";
connectAttr "C_Lip_Bot_null.ro" "C_Lip_Bot_parentConstraint1.tg[0].tro";
connectAttr "C_Lip_Bot_null.s" "C_Lip_Bot_parentConstraint1.tg[0].ts";
connectAttr "C_Lip_Bot_null.pm" "C_Lip_Bot_parentConstraint1.tg[0].tpm";
connectAttr "C_Lip_Bot_parentConstraint1.w0" "C_Lip_Bot_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Lip_Bot_4.ro" "L_Lip_Bot_4_parentConstraint1.cro";
connectAttr "L_Lip_Bot_4.pim" "L_Lip_Bot_4_parentConstraint1.cpim";
connectAttr "L_Lip_Bot_4.rp" "L_Lip_Bot_4_parentConstraint1.crp";
connectAttr "L_Lip_Bot_4.rpt" "L_Lip_Bot_4_parentConstraint1.crt";
connectAttr "L_Lip_Bot_4.jo" "L_Lip_Bot_4_parentConstraint1.cjo";
connectAttr "L_Lip_Bot_4_null.t" "L_Lip_Bot_4_parentConstraint1.tg[0].tt";
connectAttr "L_Lip_Bot_4_null.rp" "L_Lip_Bot_4_parentConstraint1.tg[0].trp";
connectAttr "L_Lip_Bot_4_null.rpt" "L_Lip_Bot_4_parentConstraint1.tg[0].trt";
connectAttr "L_Lip_Bot_4_null.r" "L_Lip_Bot_4_parentConstraint1.tg[0].tr";
connectAttr "L_Lip_Bot_4_null.ro" "L_Lip_Bot_4_parentConstraint1.tg[0].tro";
connectAttr "L_Lip_Bot_4_null.s" "L_Lip_Bot_4_parentConstraint1.tg[0].ts";
connectAttr "L_Lip_Bot_4_null.pm" "L_Lip_Bot_4_parentConstraint1.tg[0].tpm";
connectAttr "L_Lip_Bot_4_parentConstraint1.w0" "L_Lip_Bot_4_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Lip_Bot_7.ro" "L_Lip_Bot_7_parentConstraint1.cro";
connectAttr "L_Lip_Bot_7.pim" "L_Lip_Bot_7_parentConstraint1.cpim";
connectAttr "L_Lip_Bot_7.rp" "L_Lip_Bot_7_parentConstraint1.crp";
connectAttr "L_Lip_Bot_7.rpt" "L_Lip_Bot_7_parentConstraint1.crt";
connectAttr "L_Lip_Bot_7.jo" "L_Lip_Bot_7_parentConstraint1.cjo";
connectAttr "L_Lip_Bot_7_null.t" "L_Lip_Bot_7_parentConstraint1.tg[0].tt";
connectAttr "L_Lip_Bot_7_null.rp" "L_Lip_Bot_7_parentConstraint1.tg[0].trp";
connectAttr "L_Lip_Bot_7_null.rpt" "L_Lip_Bot_7_parentConstraint1.tg[0].trt";
connectAttr "L_Lip_Bot_7_null.r" "L_Lip_Bot_7_parentConstraint1.tg[0].tr";
connectAttr "L_Lip_Bot_7_null.ro" "L_Lip_Bot_7_parentConstraint1.tg[0].tro";
connectAttr "L_Lip_Bot_7_null.s" "L_Lip_Bot_7_parentConstraint1.tg[0].ts";
connectAttr "L_Lip_Bot_7_null.pm" "L_Lip_Bot_7_parentConstraint1.tg[0].tpm";
connectAttr "L_Lip_Bot_7_parentConstraint1.w0" "L_Lip_Bot_7_parentConstraint1.tg[0].tw"
		;
connectAttr "Nose_jnt_parentConstraint1.ctx" "Nose_jnt.tx";
connectAttr "Nose_jnt_parentConstraint1.cty" "Nose_jnt.ty";
connectAttr "Nose_jnt_parentConstraint1.ctz" "Nose_jnt.tz";
connectAttr "Nose_jnt_parentConstraint1.crx" "Nose_jnt.rx";
connectAttr "Nose_jnt_parentConstraint1.cry" "Nose_jnt.ry";
connectAttr "Nose_jnt_parentConstraint1.crz" "Nose_jnt.rz";
connectAttr "Nose_jnt.s" "Lf_nostril_jnt.is";
connectAttr "Lf_nostril_jnt_parentConstraint1.ctx" "Lf_nostril_jnt.tx";
connectAttr "Lf_nostril_jnt_parentConstraint1.cty" "Lf_nostril_jnt.ty";
connectAttr "Lf_nostril_jnt_parentConstraint1.ctz" "Lf_nostril_jnt.tz";
connectAttr "Lf_nostril_jnt_parentConstraint1.crx" "Lf_nostril_jnt.rx";
connectAttr "Lf_nostril_jnt_parentConstraint1.cry" "Lf_nostril_jnt.ry";
connectAttr "Lf_nostril_jnt_parentConstraint1.crz" "Lf_nostril_jnt.rz";
connectAttr "Nose_jnt.s" "Rt_nostril_jnt.is";
connectAttr "Rt_nostril_jnt_parentConstraint1.ctx" "Rt_nostril_jnt.tx";
connectAttr "Rt_nostril_jnt_parentConstraint1.cty" "Rt_nostril_jnt.ty";
connectAttr "Rt_nostril_jnt_parentConstraint1.ctz" "Rt_nostril_jnt.tz";
connectAttr "Rt_nostril_jnt_parentConstraint1.crx" "Rt_nostril_jnt.rx";
connectAttr "Rt_nostril_jnt_parentConstraint1.cry" "Rt_nostril_jnt.ry";
connectAttr "Rt_nostril_jnt_parentConstraint1.crz" "Rt_nostril_jnt.rz";
connectAttr "Muzzle_jnt_parentConstraint1.ctx" "Muzzle_jnt.tx";
connectAttr "Muzzle_jnt_parentConstraint1.cty" "Muzzle_jnt.ty";
connectAttr "Muzzle_jnt_parentConstraint1.ctz" "Muzzle_jnt.tz";
connectAttr "Muzzle_jnt_parentConstraint1.crx" "Muzzle_jnt.rx";
connectAttr "Muzzle_jnt_parentConstraint1.cry" "Muzzle_jnt.ry";
connectAttr "Muzzle_jnt_parentConstraint1.crz" "Muzzle_jnt.rz";
connectAttr "Muzzle_jnt.s" "Jaw_jnt.is";
connectAttr "Jaw_jnt_parentConstraint1.ctx" "Jaw_jnt.tx";
connectAttr "Jaw_jnt_parentConstraint1.cty" "Jaw_jnt.ty";
connectAttr "Jaw_jnt_parentConstraint1.ctz" "Jaw_jnt.tz";
connectAttr "Jaw_jnt_parentConstraint1.crx" "Jaw_jnt.rx";
connectAttr "Jaw_jnt_parentConstraint1.cry" "Jaw_jnt.ry";
connectAttr "Jaw_jnt_parentConstraint1.crz" "Jaw_jnt.rz";
connectAttr "R_Lip_Bot_7_parentConstraint1.ctx" "R_Lip_Bot_7.tx";
connectAttr "R_Lip_Bot_7_parentConstraint1.cty" "R_Lip_Bot_7.ty";
connectAttr "R_Lip_Bot_7_parentConstraint1.ctz" "R_Lip_Bot_7.tz";
connectAttr "Jaw_jnt.s" "R_Lip_Bot_7.is";
connectAttr "R_Lip_Bot_4_parentConstraint1.ctx" "R_Lip_Bot_4.tx";
connectAttr "R_Lip_Bot_4_parentConstraint1.cty" "R_Lip_Bot_4.ty";
connectAttr "R_Lip_Bot_4_parentConstraint1.ctz" "R_Lip_Bot_4.tz";
connectAttr "Jaw_jnt.s" "R_Lip_Bot_4.is";
connectAttr "C_Lip_Bot_parentConstraint1.ctx" "C_Lip_Bot.tx";
connectAttr "C_Lip_Bot_parentConstraint1.cty" "C_Lip_Bot.ty";
connectAttr "C_Lip_Bot_parentConstraint1.ctz" "C_Lip_Bot.tz";
connectAttr "Jaw_jnt.s" "C_Lip_Bot.is";
connectAttr "L_Lip_Bot_4_parentConstraint1.ctx" "L_Lip_Bot_4.tx";
connectAttr "L_Lip_Bot_4_parentConstraint1.cty" "L_Lip_Bot_4.ty";
connectAttr "L_Lip_Bot_4_parentConstraint1.ctz" "L_Lip_Bot_4.tz";
connectAttr "Jaw_jnt.s" "L_Lip_Bot_4.is";
connectAttr "L_Lip_Bot_7_parentConstraint1.ctx" "L_Lip_Bot_7.tx";
connectAttr "L_Lip_Bot_7_parentConstraint1.cty" "L_Lip_Bot_7.ty";
connectAttr "L_Lip_Bot_7_parentConstraint1.ctz" "L_Lip_Bot_7.tz";
connectAttr "Jaw_jnt.s" "L_Lip_Bot_7.is";
connectAttr "R_Lip_Top_7_parentConstraint1.ctx" "R_Lip_Top_7.tx";
connectAttr "R_Lip_Top_7_parentConstraint1.cty" "R_Lip_Top_7.ty";
connectAttr "R_Lip_Top_7_parentConstraint1.ctz" "R_Lip_Top_7.tz";
connectAttr "Muzzle_jnt.s" "R_Lip_Top_7.is";
connectAttr "R_Lip_Top_4_parentConstraint1.ctx" "R_Lip_Top_4.tx";
connectAttr "R_Lip_Top_4_parentConstraint1.cty" "R_Lip_Top_4.ty";
connectAttr "R_Lip_Top_4_parentConstraint1.ctz" "R_Lip_Top_4.tz";
connectAttr "Muzzle_jnt.s" "R_Lip_Top_4.is";
connectAttr "C_Lip_Top_parentConstraint1.ctx" "C_Lip_Top.tx";
connectAttr "C_Lip_Top_parentConstraint1.cty" "C_Lip_Top.ty";
connectAttr "C_Lip_Top_parentConstraint1.ctz" "C_Lip_Top.tz";
connectAttr "Muzzle_jnt.s" "C_Lip_Top.is";
connectAttr "L_Lip_Top_4_parentConstraint1.ctx" "L_Lip_Top_4.tx";
connectAttr "L_Lip_Top_4_parentConstraint1.cty" "L_Lip_Top_4.ty";
connectAttr "L_Lip_Top_4_parentConstraint1.ctz" "L_Lip_Top_4.tz";
connectAttr "Muzzle_jnt.s" "L_Lip_Top_4.is";
connectAttr "L_Lip_Top_7_parentConstraint1.ctx" "L_Lip_Top_7.tx";
connectAttr "L_Lip_Top_7_parentConstraint1.cty" "L_Lip_Top_7.ty";
connectAttr "L_Lip_Top_7_parentConstraint1.ctz" "L_Lip_Top_7.tz";
connectAttr "Muzzle_jnt.s" "L_Lip_Top_7.is";
connectAttr "rt_brow_ot_jnt_parentConstraint1.ctx" "rt_brow_ot_jnt.tx";
connectAttr "rt_brow_ot_jnt_parentConstraint1.cty" "rt_brow_ot_jnt.ty";
connectAttr "rt_brow_ot_jnt_parentConstraint1.ctz" "rt_brow_ot_jnt.tz";
connectAttr "rt_brow_ot_jnt_parentConstraint1.crx" "rt_brow_ot_jnt.rx";
connectAttr "rt_brow_ot_jnt_parentConstraint1.cry" "rt_brow_ot_jnt.ry";
connectAttr "rt_brow_ot_jnt_parentConstraint1.crz" "rt_brow_ot_jnt.rz";
connectAttr "rt_brow_md_jnt_parentConstraint1.ctx" "rt_brow_md_jnt.tx";
connectAttr "rt_brow_md_jnt_parentConstraint1.cty" "rt_brow_md_jnt.ty";
connectAttr "rt_brow_md_jnt_parentConstraint1.ctz" "rt_brow_md_jnt.tz";
connectAttr "rt_brow_md_jnt_parentConstraint1.crx" "rt_brow_md_jnt.rx";
connectAttr "rt_brow_md_jnt_parentConstraint1.cry" "rt_brow_md_jnt.ry";
connectAttr "rt_brow_md_jnt_parentConstraint1.crz" "rt_brow_md_jnt.rz";
connectAttr "rt_brow_in_jnt_parentConstraint1.ctx" "rt_brow_in_jnt.tx";
connectAttr "rt_brow_in_jnt_parentConstraint1.cty" "rt_brow_in_jnt.ty";
connectAttr "rt_brow_in_jnt_parentConstraint1.ctz" "rt_brow_in_jnt.tz";
connectAttr "rt_brow_in_jnt_parentConstraint1.crx" "rt_brow_in_jnt.rx";
connectAttr "rt_brow_in_jnt_parentConstraint1.cry" "rt_brow_in_jnt.ry";
connectAttr "rt_brow_in_jnt_parentConstraint1.crz" "rt_brow_in_jnt.rz";
connectAttr "lf_brow_ot_jnt_parentConstraint1.ctx" "lf_brow_ot_jnt.tx";
connectAttr "lf_brow_ot_jnt_parentConstraint1.cty" "lf_brow_ot_jnt.ty";
connectAttr "lf_brow_ot_jnt_parentConstraint1.ctz" "lf_brow_ot_jnt.tz";
connectAttr "lf_brow_ot_jnt_parentConstraint1.crx" "lf_brow_ot_jnt.rx";
connectAttr "lf_brow_ot_jnt_parentConstraint1.cry" "lf_brow_ot_jnt.ry";
connectAttr "lf_brow_ot_jnt_parentConstraint1.crz" "lf_brow_ot_jnt.rz";
connectAttr "lf_brow_md_jnt_parentConstraint1.ctx" "lf_brow_md_jnt.tx";
connectAttr "lf_brow_md_jnt_parentConstraint1.cty" "lf_brow_md_jnt.ty";
connectAttr "lf_brow_md_jnt_parentConstraint1.ctz" "lf_brow_md_jnt.tz";
connectAttr "lf_brow_md_jnt_parentConstraint1.crx" "lf_brow_md_jnt.rx";
connectAttr "lf_brow_md_jnt_parentConstraint1.cry" "lf_brow_md_jnt.ry";
connectAttr "lf_brow_md_jnt_parentConstraint1.crz" "lf_brow_md_jnt.rz";
connectAttr "lf_brow_in_jnt_parentConstraint1.ctx" "lf_brow_in_jnt.tx";
connectAttr "lf_brow_in_jnt_parentConstraint1.cty" "lf_brow_in_jnt.ty";
connectAttr "lf_brow_in_jnt_parentConstraint1.ctz" "lf_brow_in_jnt.tz";
connectAttr "lf_brow_in_jnt_parentConstraint1.crx" "lf_brow_in_jnt.rx";
connectAttr "lf_brow_in_jnt_parentConstraint1.cry" "lf_brow_in_jnt.ry";
connectAttr "lf_brow_in_jnt_parentConstraint1.crz" "lf_brow_in_jnt.rz";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "top_lip_curve_skinClusterGroupParts.og" "top_lip_curve_skinCluster.ip[0].ig"
		;
connectAttr "top_lip_curve_skinClusterGroupId.id" "top_lip_curve_skinCluster.ip[0].gi"
		;
connectAttr "Lip_Top_Rt_04_jnt.wm" "top_lip_curve_skinCluster.ma[0]";
connectAttr "Lip_Top_Rt_03_jnt.wm" "top_lip_curve_skinCluster.ma[1]";
connectAttr "Lip_Top_Rt_02_jnt.wm" "top_lip_curve_skinCluster.ma[2]";
connectAttr "Lip_Top_Rt_01_jnt.wm" "top_lip_curve_skinCluster.ma[3]";
connectAttr "Lip_Top_Ct_jnt.wm" "top_lip_curve_skinCluster.ma[4]";
connectAttr "Lip_Top_Lf_01_jnt.wm" "top_lip_curve_skinCluster.ma[5]";
connectAttr "Lip_Top_Lf_02_jnt.wm" "top_lip_curve_skinCluster.ma[6]";
connectAttr "Lip_Top_Lf_03_jnt.wm" "top_lip_curve_skinCluster.ma[7]";
connectAttr "Lip_Top_Lf_04_jnt.wm" "top_lip_curve_skinCluster.ma[8]";
connectAttr "Lip_Top_Rt_04_jnt.liw" "top_lip_curve_skinCluster.lw[0]";
connectAttr "Lip_Top_Rt_03_jnt.liw" "top_lip_curve_skinCluster.lw[1]";
connectAttr "Lip_Top_Rt_02_jnt.liw" "top_lip_curve_skinCluster.lw[2]";
connectAttr "Lip_Top_Rt_01_jnt.liw" "top_lip_curve_skinCluster.lw[3]";
connectAttr "Lip_Top_Ct_jnt.liw" "top_lip_curve_skinCluster.lw[4]";
connectAttr "Lip_Top_Lf_01_jnt.liw" "top_lip_curve_skinCluster.lw[5]";
connectAttr "Lip_Top_Lf_02_jnt.liw" "top_lip_curve_skinCluster.lw[6]";
connectAttr "Lip_Top_Lf_03_jnt.liw" "top_lip_curve_skinCluster.lw[7]";
connectAttr "Lip_Top_Lf_04_jnt.liw" "top_lip_curve_skinCluster.lw[8]";
connectAttr "Lip_Top_Rt_04_jnt.obcc" "top_lip_curve_skinCluster.ifcl[0]";
connectAttr "Lip_Top_Rt_03_jnt.obcc" "top_lip_curve_skinCluster.ifcl[1]";
connectAttr "Lip_Top_Rt_02_jnt.obcc" "top_lip_curve_skinCluster.ifcl[2]";
connectAttr "Lip_Top_Rt_01_jnt.obcc" "top_lip_curve_skinCluster.ifcl[3]";
connectAttr "Lip_Top_Ct_jnt.obcc" "top_lip_curve_skinCluster.ifcl[4]";
connectAttr "Lip_Top_Lf_01_jnt.obcc" "top_lip_curve_skinCluster.ifcl[5]";
connectAttr "Lip_Top_Lf_02_jnt.obcc" "top_lip_curve_skinCluster.ifcl[6]";
connectAttr "Lip_Top_Lf_03_jnt.obcc" "top_lip_curve_skinCluster.ifcl[7]";
connectAttr "Lip_Top_Lf_04_jnt.obcc" "top_lip_curve_skinCluster.ifcl[8]";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "top_lip_curve_skinClusterGroupId.msg" "top_lip_curve_skinClusterSet.gn"
		 -na;
connectAttr "curveShape1.iog.og[0]" "top_lip_curve_skinClusterSet.dsm" -na;
connectAttr "top_lip_curve_skinCluster.msg" "top_lip_curve_skinClusterSet.ub[0]"
		;
connectAttr "tweak1.og[0]" "top_lip_curve_skinClusterGroupParts.ig";
connectAttr "top_lip_curve_skinClusterGroupId.id" "top_lip_curve_skinClusterGroupParts.gi"
		;
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "curveShape1.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "curveShape1Orig.ws" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "bot_lip_curve_skinClusterGroupParts.og" "bot_lip_curve_skinCluster.ip[0].ig"
		;
connectAttr "bot_lip_curve_skinClusterGroupId.id" "bot_lip_curve_skinCluster.ip[0].gi"
		;
connectAttr "Lip_Bot_Rt_04_jnt.wm" "bot_lip_curve_skinCluster.ma[0]";
connectAttr "Lip_Bot_Rt_03_jnt.wm" "bot_lip_curve_skinCluster.ma[1]";
connectAttr "Lip_Bot_Rt_02_jnt.wm" "bot_lip_curve_skinCluster.ma[2]";
connectAttr "Lip_Bot_Rt_01_jnt.wm" "bot_lip_curve_skinCluster.ma[3]";
connectAttr "Lip_Bot_Ct_jnt.wm" "bot_lip_curve_skinCluster.ma[4]";
connectAttr "Lip_Bot_Lf_01_jnt.wm" "bot_lip_curve_skinCluster.ma[5]";
connectAttr "Lip_Bot_Lf_02_jnt.wm" "bot_lip_curve_skinCluster.ma[6]";
connectAttr "Lip_Bot_Lf_03_jnt.wm" "bot_lip_curve_skinCluster.ma[7]";
connectAttr "Lip_Bot_Lf_04_jnt.wm" "bot_lip_curve_skinCluster.ma[8]";
connectAttr "Lip_Bot_Rt_04_jnt.liw" "bot_lip_curve_skinCluster.lw[0]";
connectAttr "Lip_Bot_Rt_03_jnt.liw" "bot_lip_curve_skinCluster.lw[1]";
connectAttr "Lip_Bot_Rt_02_jnt.liw" "bot_lip_curve_skinCluster.lw[2]";
connectAttr "Lip_Bot_Rt_01_jnt.liw" "bot_lip_curve_skinCluster.lw[3]";
connectAttr "Lip_Bot_Ct_jnt.liw" "bot_lip_curve_skinCluster.lw[4]";
connectAttr "Lip_Bot_Lf_01_jnt.liw" "bot_lip_curve_skinCluster.lw[5]";
connectAttr "Lip_Bot_Lf_02_jnt.liw" "bot_lip_curve_skinCluster.lw[6]";
connectAttr "Lip_Bot_Lf_03_jnt.liw" "bot_lip_curve_skinCluster.lw[7]";
connectAttr "Lip_Bot_Lf_04_jnt.liw" "bot_lip_curve_skinCluster.lw[8]";
connectAttr "Lip_Bot_Rt_04_jnt.obcc" "bot_lip_curve_skinCluster.ifcl[0]";
connectAttr "Lip_Bot_Rt_03_jnt.obcc" "bot_lip_curve_skinCluster.ifcl[1]";
connectAttr "Lip_Bot_Rt_02_jnt.obcc" "bot_lip_curve_skinCluster.ifcl[2]";
connectAttr "Lip_Bot_Rt_01_jnt.obcc" "bot_lip_curve_skinCluster.ifcl[3]";
connectAttr "Lip_Bot_Ct_jnt.obcc" "bot_lip_curve_skinCluster.ifcl[4]";
connectAttr "Lip_Bot_Lf_01_jnt.obcc" "bot_lip_curve_skinCluster.ifcl[5]";
connectAttr "Lip_Bot_Lf_02_jnt.obcc" "bot_lip_curve_skinCluster.ifcl[6]";
connectAttr "Lip_Bot_Lf_03_jnt.obcc" "bot_lip_curve_skinCluster.ifcl[7]";
connectAttr "Lip_Bot_Lf_04_jnt.obcc" "bot_lip_curve_skinCluster.ifcl[8]";
connectAttr "groupParts4.og" "tweak2.ip[0].ig";
connectAttr "groupId4.id" "tweak2.ip[0].gi";
connectAttr "bot_lip_curve_skinClusterGroupId.msg" "bot_lip_curve_skinClusterSet.gn"
		 -na;
connectAttr "curveShape2.iog.og[0]" "bot_lip_curve_skinClusterSet.dsm" -na;
connectAttr "bot_lip_curve_skinCluster.msg" "bot_lip_curve_skinClusterSet.ub[0]"
		;
connectAttr "tweak2.og[0]" "bot_lip_curve_skinClusterGroupParts.ig";
connectAttr "bot_lip_curve_skinClusterGroupId.id" "bot_lip_curve_skinClusterGroupParts.gi"
		;
connectAttr "groupId4.msg" "tweakSet2.gn" -na;
connectAttr "curveShape2.iog.og[1]" "tweakSet2.dsm" -na;
connectAttr "tweak2.msg" "tweakSet2.ub[0]";
connectAttr "curveShape2Orig.ws" "groupParts4.ig";
connectAttr "groupId4.id" "groupParts4.gi";
connectAttr "curveShape1.ws" "R_Lip_Top_7_motionPath.gp";
connectAttr "curveShape1.ws" "R_Lip_Top_4_motionPath.gp";
connectAttr "curveShape1.ws" "C_Lip_Top_motionPath.gp";
connectAttr "curveShape1.ws" "L_Lip_Top_4_motionPath.gp";
connectAttr "curveShape1.ws" "L_Lip_Top_7_motionPath.gp";
connectAttr "curveShape2.ws" "R_Lip_Bot_7_motionPath.gp";
connectAttr "curveShape2.ws" "R_Lip_Bot_4_motionPath.gp";
connectAttr "curveShape2.ws" "C_Lip_Bot_motionPath.gp";
connectAttr "curveShape2.ws" "L_Lip_Bot_4_motionPath.gp";
connectAttr "curveShape2.ws" "L_Lip_Bot_7_motionPath.gp";
connectAttr "unitConversion1.o" "jaw_muzzle_top_lip_rotate_condition.ft";
connectAttr "unitConversion2.o" "jaw_muzzle_top_lip_rotate_condition.ctb";
connectAttr "Jaw.ty" "jaw_muzzle_top_lip_translate_condition.ft";
connectAttr "Jaw.ty" "jaw_muzzle_top_lip_translate_condition.ctg";
connectAttr "Jaw.rz" "unitConversion1.i";
connectAttr "Jaw.rz" "unitConversion2.i";
connectAttr "jaw_muzzle_top_lip_rotate_condition.ocb" "unitConversion3.i";
connectAttr "Jaw.tx" "jaw_muzzle_corner_trans_multiplyDivide.i1x";
connectAttr "Jaw.ty" "jaw_muzzle_corner_trans_multiplyDivide.i1y";
connectAttr "Jaw.tz" "jaw_muzzle_corner_trans_multiplyDivide.i1z";
connectAttr "unitConversion4.o" "jaw_muzzle_corner_rot_multiplyDivide.i1x";
connectAttr "unitConversion6.o" "jaw_muzzle_corner_rot_multiplyDivide.i1y";
connectAttr "unitConversion8.o" "jaw_muzzle_corner_rot_multiplyDivide.i1z";
connectAttr "Jaw.rx" "unitConversion4.i";
connectAttr "jaw_muzzle_corner_rot_multiplyDivide.ox" "unitConversion5.i";
connectAttr "Jaw.ry" "unitConversion6.i";
connectAttr "jaw_muzzle_corner_rot_multiplyDivide.oy" "unitConversion7.i";
connectAttr "Jaw.rz" "unitConversion8.i";
connectAttr "jaw_muzzle_corner_rot_multiplyDivide.oz" "unitConversion9.i";
connectAttr "Corner_Lf_Up_rig.ty" "multiplyDivide1.i1y";
connectAttr "Corner_Lf_Up_rig.ty" "multiplyDivide2.i1y";
connectAttr "Corner_Lf_Up_rig.ty" "multiplyDivide3.i1y";
connectAttr "Corner_Lf_Up_rig.ty" "multiplyDivide4.i1x";
connectAttr "Corner_Lf_Up_rig.ty" "multiplyDivide5.i1x";
connectAttr "Corner_Lf_Up_rig.ty" "multiplyDivide6.i1x";
connectAttr "Corner_Lf_Up_rig.ty" "multiplyDivide6.i1y";
connectAttr "Corner_Lf_Up_rig.ty" "multiplyDivide7.i1x";
connectAttr "Corner_Lf_Up_rig.ty" "multiplyDivide7.i1y";
connectAttr "Corner_Lf_Up_rig.ty" "multiplyDivide8.i1x";
connectAttr "Corner_Lf_Up_rig.ty" "multiplyDivide8.i1y";
connectAttr "Corner_Lf_Up_rig.ty" "multiplyDivide9.i1x";
connectAttr "Corner_Lf_Up_rig.ty" "multiplyDivide9.i1y";
connectAttr "Corner_Driver_Lf_rig.rx" "unitConversion10.i";
connectAttr "Corner_Driver_Lf_rig.ry" "unitConversion11.i";
connectAttr "Corner_Driver_Lf_rig.rz" "unitConversion12.i";
connectAttr "Corner_Driver_Lf_Up_rig.rx" "unitConversion13.i";
connectAttr "Corner_Driver_Lf_Up_rig.ry" "unitConversion14.i";
connectAttr "Corner_Driver_Lf_Up_rig.rz" "unitConversion15.i";
connectAttr "Corner_Driver_Lf_Dn_rig.rx" "unitConversion16.i";
connectAttr "Corner_Driver_Lf_Dn_rig.ry" "unitConversion17.i";
connectAttr "Corner_Driver_Lf_Dn_rig.rz" "unitConversion18.i";
connectAttr "Corner_Driver_Lf_In_rig.rx" "unitConversion19.i";
connectAttr "Corner_Driver_Lf_In_rig.ry" "unitConversion20.i";
connectAttr "Corner_Driver_Lf_In_rig.rz" "unitConversion21.i";
connectAttr "Corner_Driver_Lf_Ot_rig.rx" "unitConversion22.i";
connectAttr "Corner_Driver_Lf_Ot_rig.ry" "unitConversion23.i";
connectAttr "Corner_Driver_Lf_Ot_rig.rz" "unitConversion24.i";
connectAttr "Corner_Driver_Lf_inUp_rig.rx" "unitConversion25.i";
connectAttr "Corner_Driver_Lf_inUp_rig.ry" "unitConversion26.i";
connectAttr "Corner_Driver_Lf_inUp_rig.rz" "unitConversion27.i";
connectAttr "Corner_Driver_Lf_otUp_rig.rx" "unitConversion28.i";
connectAttr "Corner_Driver_Lf_otUp_rig.ry" "unitConversion29.i";
connectAttr "Corner_Driver_Lf_otUp_rig.rz" "unitConversion30.i";
connectAttr "Corner_Driver_Lf_inDn_rig.rx" "unitConversion31.i";
connectAttr "Corner_Driver_Lf_inDn_rig.ry" "unitConversion32.i";
connectAttr "Corner_Driver_Lf_inDn_rig.rz" "unitConversion33.i";
connectAttr "Corner_Driver_Lf_otDn_rig.rx" "unitConversion34.i";
connectAttr "Corner_Driver_Lf_otDn_rig.ry" "unitConversion35.i";
connectAttr "Corner_Driver_Lf_otDn_rig.rz" "unitConversion36.i";
connectAttr "Corner_Driver_Lf_otDn_rig1_weightDriver.o[3]" "unitConversion37.i";
connectAttr "Corner_Driver_Lf_otDn_rig1_weightDriver.o[4]" "unitConversion38.i";
connectAttr "Corner_Driver_Lf_otDn_rig1_weightDriver.o[5]" "unitConversion39.i";
connectAttr "Corner_Rt_Up_rig.ty" "multiplyDivide10.i1y";
connectAttr "Corner_Rt_Up_rig.ty" "multiplyDivide11.i1y";
connectAttr "Corner_Rt_Up_rig.ty" "multiplyDivide12.i1y";
connectAttr "Corner_Rt_Up_rig.ty" "multiplyDivide13.i1x";
connectAttr "Corner_Rt_Up_rig.ty" "multiplyDivide14.i1x";
connectAttr "Corner_Rt_Up_rig.ty" "multiplyDivide15.i1x";
connectAttr "Corner_Rt_Up_rig.ty" "multiplyDivide15.i1y";
connectAttr "Corner_Rt_Up_rig.ty" "multiplyDivide16.i1x";
connectAttr "Corner_Rt_Up_rig.ty" "multiplyDivide16.i1y";
connectAttr "Corner_Rt_Up_rig.ty" "multiplyDivide17.i1x";
connectAttr "Corner_Rt_Up_rig.ty" "multiplyDivide17.i1y";
connectAttr "Corner_Rt_Up_rig.ty" "multiplyDivide18.i1x";
connectAttr "Corner_Rt_Up_rig.ty" "multiplyDivide18.i1y";
connectAttr "Corner_Driver_Rt_rig.rx" "unitConversion40.i";
connectAttr "Corner_Driver_Rt_rig.ry" "unitConversion41.i";
connectAttr "Corner_Driver_Rt_rig.rz" "unitConversion42.i";
connectAttr "Corner_Driver_Rt_Up_rig.rx" "unitConversion43.i";
connectAttr "Corner_Driver_Rt_Up_rig.ry" "unitConversion44.i";
connectAttr "Corner_Driver_Rt_Up_rig.rz" "unitConversion45.i";
connectAttr "Corner_Driver_Rt_Dn_rig.rx" "unitConversion46.i";
connectAttr "Corner_Driver_Rt_Dn_rig.ry" "unitConversion47.i";
connectAttr "Corner_Driver_Rt_Dn_rig.rz" "unitConversion48.i";
connectAttr "Corner_Driver_Rt_In_rig.rx" "unitConversion49.i";
connectAttr "Corner_Driver_Rt_In_rig.ry" "unitConversion50.i";
connectAttr "Corner_Driver_Rt_In_rig.rz" "unitConversion51.i";
connectAttr "Corner_Driver_Rt_Ot_rig.rx" "unitConversion52.i";
connectAttr "Corner_Driver_Rt_Ot_rig.ry" "unitConversion53.i";
connectAttr "Corner_Driver_Rt_Ot_rig.rz" "unitConversion54.i";
connectAttr "Corner_Driver_Rt_inUp_rig.rx" "unitConversion55.i";
connectAttr "Corner_Driver_Rt_inUp_rig.ry" "unitConversion56.i";
connectAttr "Corner_Driver_Rt_inUp_rig.rz" "unitConversion57.i";
connectAttr "Corner_Driver_Rt_otUp_rig.rx" "unitConversion58.i";
connectAttr "Corner_Driver_Rt_otUp_rig.ry" "unitConversion59.i";
connectAttr "Corner_Driver_Rt_otUp_rig.rz" "unitConversion60.i";
connectAttr "Corner_Driver_Rt_inDn_rig.rx" "unitConversion61.i";
connectAttr "Corner_Driver_Rt_inDn_rig.ry" "unitConversion62.i";
connectAttr "Corner_Driver_Rt_inDn_rig.rz" "unitConversion63.i";
connectAttr "Corner_Driver_Rt_otDn_rig.rx" "unitConversion64.i";
connectAttr "Corner_Driver_Rt_otDn_rig.ry" "unitConversion65.i";
connectAttr "Corner_Driver_Rt_otDn_rig.rz" "unitConversion66.i";
connectAttr "Corner_Driver_Rt_otDn_rig1_weightDriver.o[3]" "unitConversion67.i";
connectAttr "Corner_Driver_Rt_otDn_rig1_weightDriver.o[4]" "unitConversion68.i";
connectAttr "Corner_Driver_Rt_otDn_rig1_weightDriver.o[5]" "unitConversion69.i";
connectAttr "unitConversion1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[3].dn"
		;
connectAttr "unitConversion2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[4].dn"
		;
connectAttr "unitConversion3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[5].dn"
		;
connectAttr "unitConversion4.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[6].dn"
		;
connectAttr "unitConversion5.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[7].dn"
		;
connectAttr "unitConversion6.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[8].dn"
		;
connectAttr "unitConversion7.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[9].dn"
		;
connectAttr "unitConversion8.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[10].dn"
		;
connectAttr "unitConversion9.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[11].dn"
		;
connectAttr "unitConversion10.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[12].dn"
		;
connectAttr "unitConversion11.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[13].dn"
		;
connectAttr "unitConversion12.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[14].dn"
		;
connectAttr "unitConversion13.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[15].dn"
		;
connectAttr "unitConversion14.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[16].dn"
		;
connectAttr "unitConversion15.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[17].dn"
		;
connectAttr "unitConversion16.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[18].dn"
		;
connectAttr "unitConversion17.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[19].dn"
		;
connectAttr "unitConversion18.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[20].dn"
		;
connectAttr "unitConversion19.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[21].dn"
		;
connectAttr "unitConversion20.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[22].dn"
		;
connectAttr "unitConversion21.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[23].dn"
		;
connectAttr "unitConversion22.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[24].dn"
		;
connectAttr "unitConversion23.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[25].dn"
		;
connectAttr "unitConversion24.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[26].dn"
		;
connectAttr "unitConversion25.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[27].dn"
		;
connectAttr "unitConversion26.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[28].dn"
		;
connectAttr "unitConversion27.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[29].dn"
		;
connectAttr "unitConversion28.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[30].dn"
		;
connectAttr "unitConversion29.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[31].dn"
		;
connectAttr "unitConversion30.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[32].dn"
		;
connectAttr "unitConversion31.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[33].dn"
		;
connectAttr "unitConversion32.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[34].dn"
		;
connectAttr "unitConversion33.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[35].dn"
		;
connectAttr "unitConversion34.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[36].dn"
		;
connectAttr "unitConversion35.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[37].dn"
		;
connectAttr "unitConversion36.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[38].dn"
		;
connectAttr "unitConversion37.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[39].dn"
		;
connectAttr "unitConversion38.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[40].dn"
		;
connectAttr "unitConversion39.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[41].dn"
		;
connectAttr "unitConversion40.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[42].dn"
		;
connectAttr "unitConversion41.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[43].dn"
		;
connectAttr "unitConversion42.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[44].dn"
		;
connectAttr "unitConversion43.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[45].dn"
		;
connectAttr "unitConversion44.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[46].dn"
		;
connectAttr "unitConversion45.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[47].dn"
		;
connectAttr "unitConversion46.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[48].dn"
		;
connectAttr "unitConversion47.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[49].dn"
		;
connectAttr "unitConversion48.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[50].dn"
		;
connectAttr "unitConversion49.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[51].dn"
		;
connectAttr "unitConversion50.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[52].dn"
		;
connectAttr "unitConversion51.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[53].dn"
		;
connectAttr "unitConversion52.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[54].dn"
		;
connectAttr "unitConversion53.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[55].dn"
		;
connectAttr "unitConversion54.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[56].dn"
		;
connectAttr "unitConversion55.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[57].dn"
		;
connectAttr "unitConversion56.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[58].dn"
		;
connectAttr "unitConversion57.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[59].dn"
		;
connectAttr "unitConversion58.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[60].dn"
		;
connectAttr "unitConversion59.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[61].dn"
		;
connectAttr "unitConversion60.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[62].dn"
		;
connectAttr "unitConversion61.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[63].dn"
		;
connectAttr "unitConversion62.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[64].dn"
		;
connectAttr "unitConversion63.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[65].dn"
		;
connectAttr "unitConversion64.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[66].dn"
		;
connectAttr "unitConversion65.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[67].dn"
		;
connectAttr "unitConversion66.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[68].dn"
		;
connectAttr "unitConversion67.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[69].dn"
		;
connectAttr "unitConversion68.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[70].dn"
		;
connectAttr "unitConversion69.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo4.tgi[0].ni[71].dn"
		;
connectAttr "EyeLookAt.space" "EyeLookAt_grp_parentConstraint1_eye_headW1.i";
connectAttr "right_place3d.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo5.tgi[0].ni[5].dn"
		;
connectAttr "left_place3d.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo5.tgi[0].ni[14].dn"
		;
connectAttr "EyeLookAt.space" "EyeLookAt_grp_parentConstraint2_eye_headW1.i";
connectAttr "EyeLookAt.space" "EyeLookAt_grp_parentConstraint3_eye_headW0.i";
connectAttr "EyeLookAt.space" "EyeLookAt_grp_parentConstraint3_eye_worldW1.i";
connectAttr "left_place3d.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "right_place3d.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of face_rig.ma
