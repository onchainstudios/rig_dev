import maya.cmds as cmds
import pymel.core as pm
import os
from PySide2 import QtGui, QtCore, QtWidgets

'''
TODO:
create buttons for placing parts of the rig and set buttons
create button building the rig
    import the rig
    mirror the left side placements
    use the placements to place the rig
    delete placements
create help buttons with images
'''

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


class FaceRigUI(QtWidgets.QWidget):
    def __init__(self, parent=None):
        super(FaceRigUI, self).__init__(parent)

        self.muzzle_vtx = None
        self.jaw_vtx = None
        self.corner_vtx = None
        self.lip_tp_vtx = None
        self.lip_bt_vtx = None
        self.nose_vtx = None
        self.brow_in_vtx = None
        self.brow_ot_vtx = None
        self.eye_vtx = None

        # Muzzle vertex
        self.muzzle_button = VertexButton("Set Muzzle Vtx")
        self.muzzle_spacer = QtWidgets.QSpacerItem(50, 20, QtWidgets.QSizePolicy.Minimum,
                                                    QtWidgets.QSizePolicy.Expanding)
        self.muzzle_help_button = VertexButton('?')

        self.muzzle_layout = QtWidgets.QHBoxLayout()
        self.muzzle_layout.addWidget(self.muzzle_button)
        self.muzzle_layout.addItem(self.muzzle_spacer)
        self.muzzle_layout.addWidget(self.muzzle_help_button)
        
        # Jaw Vertex
        self.jaw_button = VertexButton("Set Jaw Vtx")
        self.jaw_spacer = QtWidgets.QSpacerItem(50, 20, QtWidgets.QSizePolicy.Minimum,
                                                   QtWidgets.QSizePolicy.Expanding)
        self.jaw_help_button = VertexButton('?')

        self.jaw_layout = QtWidgets.QHBoxLayout()
        self.jaw_layout.addWidget(self.jaw_button)
        self.jaw_layout.addItem(self.jaw_spacer)
        self.jaw_layout.addWidget(self.jaw_help_button)

        # Lip Corner Vertex
        self.lip_corner_button = VertexButton('Set Lip Corner Vtx')
        self.lip_corner_spacer = QtWidgets.QSpacerItem(50, 20, QtWidgets.QSizePolicy.Minimum,
                                                   QtWidgets.QSizePolicy.Expanding)
        self.lip_corner_help_button = VertexButton('?')

        self.lip_corner_layout = QtWidgets.QHBoxLayout()
        self.lip_corner_layout.addWidget(self.lip_corner_button)
        self.lip_corner_layout.addItem(self.lip_corner_spacer)
        self.lip_corner_layout.addWidget(self.lip_corner_help_button)

        # Lip Top Vertex
        self.lip_top_button = VertexButton('Set Lip Top Vtx')
        self.lip_top_spacer = QtWidgets.QSpacerItem(50, 20, QtWidgets.QSizePolicy.Minimum,
                                                       QtWidgets.QSizePolicy.Expanding)
        self.lip_top_help_button = VertexButton('?')

        self.lip_top_layout = QtWidgets.QHBoxLayout()
        self.lip_top_layout.addWidget(self.lip_top_button)
        self.lip_top_layout.addItem(self.lip_top_spacer)
        self.lip_top_layout.addWidget(self.lip_top_help_button)

        # Lip Bot Vertex
        self.lip_bot_button = VertexButton('Set Lip Bot Vtx')
        self.lip_bot_spacer = QtWidgets.QSpacerItem(50, 20, QtWidgets.QSizePolicy.Minimum,
                                                    QtWidgets.QSizePolicy.Expanding)
        self.lip_bot_help_button = VertexButton('?')

        self.lip_bot_layout = QtWidgets.QHBoxLayout()
        self.lip_bot_layout.addWidget(self.lip_bot_button)
        self.lip_bot_layout.addItem(self.lip_bot_spacer)
        self.lip_bot_layout.addWidget(self.lip_bot_help_button)

        # Nose
        self.nose_button = VertexButton('Set Nose Bottom Vtx')
        self.nose_spacer = QtWidgets.QSpacerItem(50, 20, QtWidgets.QSizePolicy.Minimum,
                                                   QtWidgets.QSizePolicy.Expanding)
        self.nose_help_button = VertexButton('?')

        self.nose_layout = QtWidgets.QHBoxLayout()
        self.nose_layout.addWidget(self.nose_button)
        self.nose_layout.addItem(self.nose_spacer)
        self.nose_layout.addWidget(self.nose_help_button)

        # Brow_in
        self.brow_in_button = VertexButton('Set Brow In Vtx')
        self.brow_in_spacer = QtWidgets.QSpacerItem(50, 20, QtWidgets.QSizePolicy.Minimum,
                                                   QtWidgets.QSizePolicy.Expanding)
        self.brow_in_help_button = VertexButton('?')

        self.brow_in_layout = QtWidgets.QHBoxLayout()
        self.brow_in_layout.addWidget(self.brow_in_button)
        self.brow_in_layout.addItem(self.brow_in_spacer)
        self.brow_in_layout.addWidget(self.brow_in_help_button)

        # Brow_ot
        self.brow_ot_button = VertexButton('Set Brow Out Vtx')
        self.brow_ot_spacer = QtWidgets.QSpacerItem(50, 20, QtWidgets.QSizePolicy.Minimum,
                                                    QtWidgets.QSizePolicy.Expanding)
        self.brow_ot_help_button = VertexButton('?')

        self.brow_ot_layout = QtWidgets.QHBoxLayout()
        self.brow_ot_layout.addWidget(self.brow_ot_button)
        self.brow_ot_layout.addItem(self.brow_ot_spacer)
        self.brow_ot_layout.addWidget(self.brow_ot_help_button)

        # Lid Top Vertex
        self.lid_tp_button = VertexButton('Set Lid Top Vtx')
        self.lid_tp_spacer = QtWidgets.QSpacerItem(50, 20, QtWidgets.QSizePolicy.Minimum,
                                                    QtWidgets.QSizePolicy.Expanding)
        self.lid_tp_help_button = VertexButton('?')

        self.lid_tp_layout = QtWidgets.QHBoxLayout()
        self.lid_tp_layout.addWidget(self.lid_tp_button)
        self.lid_tp_layout.addItem(self.lid_tp_spacer)
        self.lid_tp_layout.addWidget(self.lid_tp_help_button)

        # Lid Top Vertex
        self.lid_bt_button = VertexButton('Set Lid Bot Vtx')
        self.lid_bt_spacer = QtWidgets.QSpacerItem(50, 20, QtWidgets.QSizePolicy.Minimum,
                                                   QtWidgets.QSizePolicy.Expanding)
        self.lid_bt_help_button = VertexButton('?')

        self.lid_bt_layout = QtWidgets.QHBoxLayout()
        self.lid_bt_layout.addWidget(self.lid_bt_button)
        self.lid_bt_layout.addItem(self.lid_bt_spacer)
        self.lid_bt_layout.addWidget(self.lid_bt_help_button)

        # Eye
        self.eye_button = VertexButton('Set Eye Vtx')
        self.eye_spacer = QtWidgets.QSpacerItem(50, 20, QtWidgets.QSizePolicy.Minimum,
                                                    QtWidgets.QSizePolicy.Expanding)
        self.eye_help_button = VertexButton('?')

        self.eye_layout = QtWidgets.QHBoxLayout()
        self.eye_layout.addWidget(self.eye_button)
        self.eye_layout.addItem(self.eye_spacer)
        self.eye_layout.addWidget(self.eye_help_button)

        # Build
        self.build_spacer = QtWidgets.QSpacerItem(20, 60, QtWidgets.QSizePolicy.Minimum,
                                                QtWidgets.QSizePolicy.Expanding)
        self.build_button = QtWidgets.QPushButton('Build')



        # Lay out the widgets vertically
        layout = QtWidgets.QVBoxLayout()
        layout.addLayout(self.muzzle_layout)
        layout.addLayout(self.jaw_layout)
        layout.addLayout(self.lip_corner_layout)
        layout.addLayout(self.lip_top_layout)
        layout.addLayout(self.lip_bot_layout)
        layout.addLayout(self.nose_layout)
        layout.addLayout(self.brow_in_layout)
        layout.addLayout(self.brow_ot_layout)
        layout.addLayout(self.eye_layout)
        layout.addItem(self.build_spacer)
        layout.addWidget(self.build_button)
        self.setLayout(layout)

        self.connect_buttons()

    def connect_buttons(self):

        self.muzzle_button.clicked.connect(self.vertex_click)
        self.jaw_button.clicked.connect(self.vertex_click)
        self.lip_corner_button.clicked.connect(self.vertex_click)
        self.lip_top_button.clicked.connect(self.vertex_click)
        self.lip_bot_button.clicked.connect(self.vertex_click)
        self.nose_button.clicked.connect(self.vertex_click)
        self.brow_in_button.clicked.connect(self.vertex_click)
        self.brow_ot_button.clicked.connect(self.vertex_click)
        self.eye_button.clicked.connect(self.vertex_click)
        self.build_button.clicked.connect(self.build)

    def vertex_click(self):
        sender = self.sender()
        sender.setStyleSheet('background-color: #006600;')
        sender.vertex = cmds.ls(sl=True)[0]
        print(sender.vertex)

    def build(self):
        path = os.path.abspath(__file__)
        base = os.path.split(path)[0]
        file = os.path.join(base, 'face_rig.ma')
        nodes = cmds.file(file, i=True, rnn=True)

        # place_muzzle(self.muzzle_button.vertex)
        # place_jaw(self.jaw_button.vertex, self.lip_bot_button.vertex)
        place_lip_corner(self.lip_corner_button.vertex)
        place_lip_center(self.lip_top_button.vertex, self.lip_bot_button.vertex)

class VertexButton(QtWidgets.QPushButton):
    def __int__(self):
        super(VertexButton,self).__int__()
        self.vertex = None

def showUI():
    '''
    Main function you call to show the UI
    Args:
    Returns:
    '''

    if pm.cmds.window('Face Rigger', q=True, ex=True):
        pm.cmds.deleteUI('Face Rigger')

    win = FaceRigUI()
    win.resize(400, 300)
    win = createMayaWindow(win)
    win.show()

def createMayaWindow(widget, *args, **kwargs):
    """A safe way to parent a widget to a Maya window.

    Args:
        widget(QtWidgets.QWidget): A Qt widget to parent to a Maya window
    Returns:
        The new Maya window Qt object.
    """
    pmWin = pm.window(*args, **kwargs)
    win = pmWin.asQtObject()
    win.setObjectName('{0}Safe'.format(widget.objectName()))
    lay = win.layout()
    if not lay:
        lay = QtWidgets.QVBoxLayout(win)
    lay.addWidget(widget)
    lay.setContentsMargins(0, 0, 0, 0)
    lay.setSpacing(0)
    # title = widget.windowTitle()
    # if title:
    #     win.setWindowTitle(title)
    win.setWindowTitle('Face Rigger')
    icon = widget.windowIcon()
    if icon:
        win.setWindowIcon(icon)
    win.resize(widget.size())
    return win

def place_muzzle(vertex):
    raw_pos = cmds.pointPosition(vertex)
    pos = [0.0,raw_pos[1],raw_pos[2]]
    cmds.xform(MUZZLE_TRANS, ws=True, t=pos)

def place_jaw(jaw_vert, lip_vert):
    raw_pos = cmds.pointPosition(jaw_vert)
    pos = [0.0, raw_pos[1], raw_pos[2]]
    cmds.xform(JAW_TRANS, ws=True, t=pos)

    temp_lip = cmds.createNode('transform')
    cmds.xform(temp_lip, ws=True,t=cmds.pointPosition(lip_vert))

    # aim at lower lip
    aim_cons = cmds.aimConstraint(temp_lip, JAW_TRANS,aim=[1,0,0], u=[0,1,0],wu=[0,-1,0])[0]
    cmds.delete(aim_cons)
    cmds.delete(temp_lip)

def place_lip_corner(lip_vert):
    corner_drivers = [
    'Corner_Driver_SIDE_rig',
    'Corner_Driver_SIDE_Up_rig',
    'Corner_Driver_SIDE_Dn_rig',
    'Corner_Driver_SIDE_In_rig',
    'Corner_Driver_SIDE_Ot_rig',
    'Corner_Driver_SIDE_inUp_rig',
    'Corner_Driver_SIDE_otUp_rig',
    'Corner_Driver_SIDE_inDn_rig',
    'Corner_Driver_SIDE_otDn_rig'
    ]
    
    pos = cmds.pointPosition(lip_vert)
    
    for side in ['Lf','Rt']:
        temp = cmds.createNode('transform')
        cmds.matchTransform(temp, f'Lip_{side}_offset')
        cons = []
        for node in corner_drivers:
            cons.append(cmds.parentConstraint(temp, node.replace('SIDE',side), mo=True))

        if side == 'Lf':
            cmds.xform(temp, ws=True, t=pos)
            cmds.xform(f'Lip_{side}_offset', ws=True,t=pos)
        else:
            cmds.xform(temp, ws=True, t=[pos[0]*-1, pos[1], pos[2]])
            cmds.xform(f'Lip_{side}_offset', ws=True, t=[pos[0]*-1, pos[1], pos[2]])

        for con in cons:
            cmds.delete(con)

        cmds.delete(temp)

def place_lip_center(top_vert, bot_vert):
    top_pos = cmds.pointPosition(top_vert)
    bot_pos = cmds.pointPosition(bot_vert)
    average_z = (top_pos[2] + bot_pos[2])/2
    cmds.xform('Lip_Top_offset', ws=True, t=[top_pos[0], top_pos[1],average_z])
    cmds.xform('Lip_Bot_offset', ws=True, t=[bot_pos[0], bot_pos[1], average_z])
    
def place_nose():
    pass



