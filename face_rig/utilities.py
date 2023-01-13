import maya.cmds as cmds
import maya.OpenMaya as om
TEMP = 'temp_cube'
WD_TRANS = [
    'Corner_Driver_Lf_rig',
    'Corner_Driver_Lf_Up_rig',
    'Corner_Driver_Lf_Dn_rig',
    'Corner_Driver_Lf_In_rig',
    'Corner_Driver_Lf_Ot_rig',
    'Corner_Driver_Lf_inUp_rig',
    'Corner_Driver_Lf_otUp_rig',
    'Corner_Driver_Lf_inDn_rig',
    'Corner_Driver_Lf_otDn_rig'
            ]
JAW_TRANS = 'Jaw_offset'
MUZZLE_TRANS = 'Muzzle_offset'
LIP_LF_TRANS = 'Lip_Lf_offset'
LIP_RT_TRANS = 'Lip_Rt_offset'

def face_adjusters(state=True):
    if state:
        weight_driver_adjust()
        jaw_muzzle_adjust()
        weight_driver_plane()
        lip_corner_adjust()


def weight_driver_adjust():


    # duplicate that cube and parent new shape to each transform
    for trans in WD_TRANS:
        create_adjuster(trans, 'lip_corner_adjuster_shader', [1,0,1])

def weight_driver_plane(side='Left'):
    # get the size of the plane
    # measure from top to bottom cube
    if side == 'Left':
        side = 'Lf'
    else:
        side = 'Rt'

    top = cmds.xform(f'Corner_Driver_{side}_Up_rig',q=True,ws=True,rp=True)
    bot = cmds.xform(f'Corner_Driver_{side}_Dn_rig', q=True, ws=True, rp=True)
    diff = [top[0]-bot[0], top[1]-bot[1],top[2]-bot[2]]
    diffVector = om.MVector(top[0]-bot[0], top[1]-bot[1],top[2]-bot[2])


    plane = cmds.polyPlane(w=diffVector.length()*1.2, h=diffVector.length()*1.2, ax=[0,0,1],n=f'{side}_corner_plane', ch=False)[0]

    color = [1, 1, 0]
    mtl, sg = create_shader("plane_shader")
    cmds.setAttr(mtl + ".color", color[0], color[1], color[2], type="double3")
    cmds.sets(plane, forceElement=sg)

    cmds.matchTransform(plane, f'Corner_Driver_{side}_rig')

def jaw_muzzle_adjust():
    create_adjuster(MUZZLE_TRANS, 'muzzle_shader', [1,0,0])
    create_adjuster(JAW_TRANS, 'jaw_shader', [0,0,1])

def lip_corner_adjust():
    create_adjuster(LIP_LF_TRANS, 'lip_lf_shader', [0,1,0])
    create_adjuster(LIP_RT_TRANS, 'lip_lf_shader', [0, 1, 0])

def create_adjuster(transform, shader_name, color=[1,1,1]):
    # create temp poly cube for rig transforms
    if cmds.objExists(TEMP):
        cmds.delete(TEMP)
    cmds.polyCube(n=TEMP, ch=False)
    mtl, sg = create_shader(shader_name)
    cmds.setAttr(mtl + ".color", color[0], color[1], color[2], type="double3")
    cmds.sets(TEMP, forceElement=sg)

    dupe = cmds.duplicate(TEMP)[0]
    s = cmds.listRelatives(dupe, s=True)[0]
    shape_name = f'{transform}_adjuster_Shape'
    cmds.rename(s, shape_name)
    cmds.parent(shape_name, transform, r=True, s=True)
    cmds.delete(dupe)







def create_shader(name, node_type="lambert"):
    material = cmds.shadingNode(node_type, name=name, asShader=True)
    sg = cmds.sets(name="%sSG" % name, empty=True, renderable=True, noSurfaceShader=True)
    cmds.connectAttr("%s.outColor" % material, "%s.surfaceShader" % sg)
    return material, sg