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
NOSE_TRANS = 'Nose_offset'
BROW_LF_IN_TRANS = 'Brow_Lf_In_offset'
BROW_LF_OT_TRANS = 'Brow_Lf_Ot_offset'
BROW_RT_IN_TRANS = 'Brow_Rt_In_offset'
BROW_RT_OT_TRANS = 'Brow_Rt_Ot_offset'
EYE_LOOK_W_TRANS = 'eye_world'
EYE_LOOK_H_TRANS = 'eye_head'
EYE_L_LOOK_TRANS = 'LeftEyeLookAt_grp'
EYE_R_LOOK_TRANS = 'RightEyeLookAt_grp'
EYE_L_AIM_TRANS = 'left_eye_aim_grp'
EYE_R_AIM_TRANS = 'right_eye_aim_grp'


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

        # Nose bridge
        self.bridge_button = VertexButton('Set Nose Bridge Vtx')
        self.bridge_spacer = QtWidgets.QSpacerItem(50, 20, QtWidgets.QSizePolicy.Minimum,
                                                 QtWidgets.QSizePolicy.Expanding)
        self.bridge_help_button = VertexButton('?')

        self.bridge_layout = QtWidgets.QHBoxLayout()
        self.bridge_layout.addWidget(self.bridge_button)
        self.bridge_layout.addItem(self.bridge_spacer)
        self.bridge_layout.addWidget(self.bridge_help_button)

        # Nose bottom
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

        # place eye
        self.eye_separator = QtWidgets.QFrame()
        self.eye_separator.setFrameShape(QtWidgets.QFrame.HLine)
        self.eye_layout = QtWidgets.QVBoxLayout()
        self.eye_browse_layout = QtWidgets.QHBoxLayout()
        self.eye_place_layout = QtWidgets.QHBoxLayout()
        self.eye_browse_label = QtWidgets.QLabel('Eye Texture Map')
        self.eye_browse_button = QtWidgets.QPushButton('Browse')
        self.eye_text = QtWidgets.QTextEdit()
        self.eye_text.setMaximumSize(500, 25)
        self.eye_text.setText('G:\\Shared drives\\Art Department\\production\\3d\\images\\starWars\\char\\rt\\tpa028_luke\\ska109_farmer\\starWars_char_luke_ska000_eyes_rt_2048_TEXT_albe.png')
        self.eye_geo_separator = QtWidgets.QFrame()
        self.eye_geo_separator.setFrameShape(QtWidgets.QFrame.HLine)
        self.eye_geo_layout = QtWidgets.QHBoxLayout()
        # self.eye_geo_label = QtWidgets.QLabel('Choose both left and right eye geo')
        # self.eye_geo_text = QtWidgets.QTextEdit()
        # self.eye_geo_text.setMaximumSize(500, 25)
        # self.eye_geoselect_button = QtWidgets.QPushButton('Choose selected')
        self.eye_placement_separator = QtWidgets.QFrame()
        self.eye_placement_separator.setFrameShape(QtWidgets.QFrame.HLine)
        self.eye_placement_button = QtWidgets.QPushButton('Create Eye Placement Locator')
        self.eye_placement_help_button = QtWidgets.QPushButton('?')

        self.eye_layout.addWidget(self.eye_separator)
        self.eye_layout.addLayout(self.eye_browse_layout)
        self.eye_layout.addLayout(self.eye_place_layout)
        self.eye_browse_layout.addWidget(self.eye_browse_label)
        self.eye_browse_layout.addWidget(self.eye_text)
        self.eye_browse_layout.addWidget(self.eye_browse_button)
        # self.eye_layout.addWidget(self.eye_geo_separator)
        # self.eye_layout.addWidget(self.eye_geo_label)
        # self.eye_layout.addLayout(self.eye_geo_layout)
        # self.eye_geo_layout.addWidget(self.eye_geo_text)
        # self.eye_geo_layout.addWidget(self.eye_geoselect_button)
        self.eye_layout.addWidget(self.eye_placement_separator)
        self.eye_place_layout.addWidget(self.eye_placement_button)
        self.eye_place_layout.addWidget(self.eye_placement_help_button)


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
        layout.addLayout(self.bridge_layout)
        layout.addLayout(self.nose_layout)
        layout.addLayout(self.brow_in_layout)
        layout.addLayout(self.brow_ot_layout)
        layout.addLayout(self.lid_tp_layout)
        layout.addLayout(self.lid_bt_layout)
        layout.addLayout(self.eye_layout)
        layout.addItem(self.build_spacer)
        layout.addWidget(self.build_button)
        self.setLayout(layout)

        self.connect_buttons()

        # self.set_defaults()

    def connect_buttons(self):

        self.muzzle_button.clicked.connect(self.vertex_click)
        self.jaw_button.clicked.connect(self.vertex_click)
        self.lip_corner_button.clicked.connect(self.vertex_click)
        self.lip_top_button.clicked.connect(self.vertex_click)
        self.lip_bot_button.clicked.connect(self.vertex_click)
        self.bridge_button.clicked.connect(self.vertex_click)
        self.nose_button.clicked.connect(self.vertex_click)
        self.brow_in_button.clicked.connect(self.vertex_click)
        self.brow_ot_button.clicked.connect(self.vertex_click)
        self.eye_button.clicked.connect(self.vertex_click)
        self.lid_tp_button.clicked.connect(self.vertex_click)
        self.lid_bt_button.clicked.connect(self.vertex_click)
        self.build_button.clicked.connect(self.build)
        self.eye_placement_button.clicked.connect(self.eye_placement_click)
        self.eye_browse_button.clicked.connect(self.browse_click)
        # self.eye_geoselect_button.clicked.connect(self.choose_eye_click)

        self.muzzle_help_button.clicked.connect(self.muzzle_help_click)
        self.jaw_help_button.clicked.connect(self.jaw_help_click)
        self.lip_corner_help_button.clicked.connect(self.lip_corner_help_click)
        self.lip_top_help_button.clicked.connect(self.lip_top_help_click)
        self.lip_bot_help_button.clicked.connect(self.lip_bot_help_click)
        self.bridge_help_button.clicked.connect(self.nose_bridge_help_click)
        self.nose_help_button.clicked.connect(self.nose_bottom_help_click)
        self.brow_in_help_button.clicked.connect(self.brow_in_help_click)
        self.brow_ot_help_button.clicked.connect(self.brow_ot_help_click)
        self.lid_tp_help_button.clicked.connect(self.lid_top_help_click)
        self.lid_bt_help_button.clicked.connect(self.lid_bot_help_click)
        self.eye_placement_help_button.clicked.connect(self.eye_placement_help_click)

    def vertex_click(self):
        sender = self.sender()
        sender.setStyleSheet('background-color: #006600;')
        sender.vertex = cmds.ls(sl=True)[0]

    def set_defaults(self):
        print('setting defaults for testing')
        self.muzzle_button.vertex = 'body_GEO.vtx[1682]'
        self.jaw_button.vertex = 'body_GEO.vtx[1681]'
        self.lip_corner_button.vertex = 'body_GEO.vtx[1721]'
        self.lip_top_button.vertex = 'body_GEO.vtx[136]'
        self.lip_bot_button.vertex = 'body_GEO.vtx[135]'
        self.bridge_button.vertex = 'body_GEO.vtx[1776]'
        self.nose_button.vertex = 'body_GEO.vtx[140]'
        self.brow_in_button.vertex = 'body_GEO.vtx[3201]'
        self.brow_ot_button.vertex = 'body_GEO.vtx[3212]'
        self.lid_tp_button.vertex = 'body_GEO.vtx[2876]'
        self.lid_bt_button.vertex = 'body_GEO.vtx[2881]'

    def create_eye_placement(self):
        pass

    def browse_click(self):
        self.path_To_File = QtWidgets.QFileDialog.getOpenFileName(self, "Select Eye Texture Map", 'G:\\Shared drives\\Art Department\\production\\3d\\images\\starWars\\char\\rt')[0]
        self.eye_text.setText(self.path_To_File)

    def choose_eye_click(self):
        geo = cmds.ls(sl=True)
        if len(geo) == 2:
            text = f'{geo[0]}, {geo[1]}'
            self.eye_geo_text.setText(text)
        else:
            print('You must select both left and right eye geo and click Choose Selected')

    def eye_placement_click(self):
        sender = self.sender()
        sender.setStyleSheet('background-color: #006600;')
        map = self.eye_text.toPlainText()
        eye_placement(map)

    def muzzle_help_click(self):
        path = os.path.abspath(__file__)
        base = os.path.split(path)[0]
        image_path = os.path.join(base, 'images\\muzzle_vert.png')

        popup = QtWidgets.QMessageBox(self)
        popup.setWindowTitle("Muzzle Vertex Help")
        image = QtGui.QImage(image_path)
        popup.setIconPixmap(QtGui.QPixmap.fromImage(image))
        popup.show()
        
    def jaw_help_click(self):
        path = os.path.abspath(__file__)
        base = os.path.split(path)[0]
        image_path = os.path.join(base, 'images\\jaw_vert.png')

        popup = QtWidgets.QMessageBox(self)
        popup.setWindowTitle("Jaw Vertex Help")
        image = QtGui.QImage(image_path)
        popup.setIconPixmap(QtGui.QPixmap.fromImage(image))
        popup.show()

    def lip_corner_help_click(self):
        path = os.path.abspath(__file__)
        base = os.path.split(path)[0]
        image_path = os.path.join(base, 'images\\lip_corner_vert.png')

        popup = QtWidgets.QMessageBox(self)
        popup.setWindowTitle("Lip Corner Vertex Help")
        image = QtGui.QImage(image_path)
        popup.setIconPixmap(QtGui.QPixmap.fromImage(image))
        popup.show()

    def lip_top_help_click(self):
        path = os.path.abspath(__file__)
        base = os.path.split(path)[0]
        image_path = os.path.join(base, 'images\\lip_top_vert.png')

        popup = QtWidgets.QMessageBox(self)
        popup.setWindowTitle("Lip Top Vertex Help")
        image = QtGui.QImage(image_path)
        popup.setIconPixmap(QtGui.QPixmap.fromImage(image))
        popup.show()

    def lip_bot_help_click(self):
        path = os.path.abspath(__file__)
        base = os.path.split(path)[0]
        image_path = os.path.join(base, 'images\\lip_bot_vert.png')

        popup = QtWidgets.QMessageBox(self)
        popup.setWindowTitle("Lip Bottom Vertex Help")
        image = QtGui.QImage(image_path)
        popup.setIconPixmap(QtGui.QPixmap.fromImage(image))
        popup.show()

    def nose_bridge_help_click(self):
        path = os.path.abspath(__file__)
        base = os.path.split(path)[0]
        image_path = os.path.join(base, 'images\\nose_bridge_vert.png')

        popup = QtWidgets.QMessageBox(self)
        popup.setWindowTitle("Nose Bridge Vertex Help")
        image = QtGui.QImage(image_path)
        popup.setIconPixmap(QtGui.QPixmap.fromImage(image))
        popup.show()

    def nose_bottom_help_click(self):
        path = os.path.abspath(__file__)
        base = os.path.split(path)[0]
        image_path = os.path.join(base, 'images\\nose_bottom_vert.png')

        popup = QtWidgets.QMessageBox(self)
        popup.setWindowTitle("Nose Bottom Vertex Help")
        image = QtGui.QImage(image_path)
        popup.setIconPixmap(QtGui.QPixmap.fromImage(image))
        popup.show()

    def brow_in_help_click(self):
        path = os.path.abspath(__file__)
        base = os.path.split(path)[0]
        image_path = os.path.join(base, 'images\\brow_in_vert.png')

        popup = QtWidgets.QMessageBox(self)
        popup.setWindowTitle("Brow In Vertex Help")
        image = QtGui.QImage(image_path)
        popup.setIconPixmap(QtGui.QPixmap.fromImage(image))
        popup.show()

    def brow_ot_help_click(self):
        path = os.path.abspath(__file__)
        base = os.path.split(path)[0]
        image_path = os.path.join(base, 'images\\brow_ot_vert.png')

        popup = QtWidgets.QMessageBox(self)
        popup.setWindowTitle("Brow Out Vertex Help")
        image = QtGui.QImage(image_path)
        popup.setIconPixmap(QtGui.QPixmap.fromImage(image))
        popup.show()
        
    def lid_top_help_click(self):
        path = os.path.abspath(__file__)
        base = os.path.split(path)[0]
        image_path = os.path.join(base, 'images\\lid_top_vert.png')

        popup = QtWidgets.QMessageBox(self)
        popup.setWindowTitle("Lid Top Vertex Help")
        image = QtGui.QImage(image_path)
        popup.setIconPixmap(QtGui.QPixmap.fromImage(image))
        popup.show()
        
    def lid_bot_help_click(self):
        path = os.path.abspath(__file__)
        base = os.path.split(path)[0]
        image_path = os.path.join(base, 'images\\lid_bot_vert.png')

        popup = QtWidgets.QMessageBox(self)
        popup.setWindowTitle("Lid Bot Vertex Help")
        image = QtGui.QImage(image_path)
        popup.setIconPixmap(QtGui.QPixmap.fromImage(image))
        popup.show()

    def eye_placement_help_click(self):
        path = os.path.abspath(__file__)
        base = os.path.split(path)[0]
        image_path = os.path.join(base, 'images\\eye_placement.png')

        popup = QtWidgets.QMessageBox(self)
        popup.setWindowTitle("Eye Placement Help")
        image = QtGui.QImage(image_path)
        popup.setIconPixmap(QtGui.QPixmap.fromImage(image))
        popup.show()



    def build(self):
        path = os.path.abspath(__file__)
        base = os.path.split(path)[0]
        file = os.path.join(base, 'face_rig.ma')
        nodes = cmds.file(file, i=True, rnn=True)

        # place_muzzle(self.muzzle_button.vertex)
        # place_jaw(self.jaw_button.vertex, self.lip_bot_button.vertex)
        place_lip_corner(self.lip_corner_button.vertex)
        place_lip_center(self.lip_top_button.vertex, self.lip_bot_button.vertex)
        place_lids(self.lid_tp_button.vertex, self.lid_bt_button.vertex)
        place_nose(self.bridge_button.vertex, self.nose_button.vertex)
        place_brows(self.brow_in_button.vertex, self.brow_ot_button.vertex)
        place_eyes()
        attach_to_body()

class VertexButton(QtWidgets.QPushButton):
    def __int__(self):
        super(VertexButton,self).__int__()
        self.vertex = None

class ImagePopup(QtWidgets.QDialog):
    def __int__(self):
        super(ImagePopup, self).__int__()
        self.path = None
        layout = QtWidgets.QVBoxLayout()
        self.setLayout(layout)
        self.show()

    def add_image(self):
        image = QtGui.QImage(self.path)

        self.imageLabel = QtWidgets.QLabel()
        self.imageLabel.setPixmap(QtGui.QPixmap.fromImage(image))

        layout = self.layout()
        layout.addWidget(self.imageLabel)

class CustomDialog(QtWidgets.QDialog):
    def __init__(self):
        super().__init__()

        self.setWindowTitle("HELLO!")

        QBtn = QtWidgets.QDialogButtonBox.Ok | QtWidgets.QDialogButtonBox.Cancel

        self.buttonBox = QtWidgets.QDialogButtonBox(QBtn)
        self.buttonBox.accepted.connect(self.accept)
        self.buttonBox.rejected.connect(self.reject)

        self.layout = QtWidgets.QVBoxLayout()
        message = QtWidgets.QLabel("Something happened, is that OK?")
        self.layout.addWidget(message)
        self.layout.addWidget(self.buttonBox)
        self.setLayout(self.layout)



def showUI():
    '''
    Main function you call to show the UI
    Args:
    Returns:
    '''

    if pm.cmds.window('Face Rigger', q=True, ex=True):
        pm.cmds.deleteUI('Face Rigger')

    win = FaceRigUI()
    win.resize(400, 600)
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
    raw_pos = cmds.pointPosition(vertex, w=True)
    pos = [0.0,raw_pos[1],raw_pos[2]]
    move_to_point(MUZZLE_TRANS, pos)

def place_jaw(jaw_vert, lip_vert):
    raw_pos = cmds.pointPosition(jaw_vert, w=True)
    pos = [0.0, raw_pos[1], raw_pos[2]]
    move_to_point(JAW_TRANS, pos)

    temp_lip = cmds.createNode('transform')
    move_to_point(temp_lip, cmds.pointPosition(lip_vert, w=True))

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

    pos = cmds.pointPosition(lip_vert, w=True)

    for side in ['Lf','Rt']:
        temp = cmds.createNode('transform')
        cmds.matchTransform(temp, f'Lip_{side}_offset')
        cons = []
        for node in corner_drivers:
            cons.append(cmds.parentConstraint(temp, node.replace('SIDE',side), mo=True))

        if side == 'Lf':
            move_to_point(temp, pos)
            move_to_point(f'Lip_{side}_offset', pos)
        else:
            move_to_point(temp, [pos[0]*-1, pos[1], pos[2]])
            move_to_point(f'Lip_{side}_offset', [pos[0]*-1, pos[1], pos[2]])

        for con in cons:
            cmds.delete(con)

        cmds.delete(temp)

def place_lip_center(top_vert, bot_vert):
    top_pos = cmds.pointPosition(top_vert, w=True)
    bot_pos = cmds.pointPosition(bot_vert, w=True)
    average_z = (top_pos[2] + bot_pos[2])/2

    # temporarily delete parent constraints
    top = cmds.listConnections('Lip_Top_offset.translateX', s=True)[0]
    bot = cmds.listConnections('Lip_Bot_offset.translateX', s=True)[0]
    if top:
        cmds.delete(top)
    if bot:
        cmds.delete(bot)

    move_to_point('Lip_Top_offset', [top_pos[0], top_pos[1],average_z])
    move_to_point('Lip_Bot_offset', [bot_pos[0], bot_pos[1], average_z])

    # rebuild constraints
    cmds.parentConstraint('jaw_muzzle_top_lip_driver', 'Lip_Top_offset', mo=True)
    cmds.parentConstraint('Jaw', 'Lip_Bot_offset', mo=True)

def place_lids(top_vert, bot_vert):
    top_pos = cmds.pointPosition(top_vert, w=True)
    bot_pos = cmds.pointPosition(bot_vert, w=True)
    average_z = ((top_pos[2] + bot_pos[2]) / 2) + 10
    average_y = (top_pos[1] + bot_pos[1]) / 2

    move_to_point('Lf_top_lid_grp', [top_pos[0], average_y, average_z])
    move_to_point('Lf_bot_lid_grp', [bot_pos[0], average_y, average_z])

    move_to_point('Rt_top_lid_grp', [top_pos[0]*-1, average_y, average_z])
    move_to_point('Rt_bot_lid_grp', [bot_pos[0]*-1, average_y, average_z])

def place_nose(nose_vert, bottom_vert):

    # still need to place nostrils

    # get offset constraint and delete it
    cons = cmds.listConnections(f'{NOSE_TRANS}.translateX', s=True, d=False)[0]

    if cons:
        cmds.delete(cons)

    raw_base_pos = cmds.pointPosition(nose_vert, w=True)
    base_pos = [0.0, raw_base_pos[1], raw_base_pos[2]]

    raw_bot_pos = cmds.pointPosition(bottom_vert, w=True)
    bot_pos = [0.0, raw_bot_pos[1], raw_bot_pos[2]]

    move_to_point(NOSE_TRANS, base_pos)

    temp = cmds.createNode('transform', n='temp_nose')
    move_to_point(temp, bot_pos)

    aim_cons = cmds.aimConstraint(temp, NOSE_TRANS, aim=[0, -1, 0], u=[0, 0, 1], wu=[0, 0, 1])[0]
    cmds.delete(aim_cons)
    cmds.delete(temp)

    # reconstrain to muzzle
    cmds.parentConstraint('Muzzle', NOSE_TRANS, mo=True)

def place_brows(in_vert, out_vert):
    lf_in_pos = cmds.pointPosition(in_vert, w=True)
    lf_ot_pos = cmds.pointPosition(out_vert, w=True)

    rt_in_pos = [lf_in_pos[0]*-1, lf_in_pos[1], lf_in_pos[2]]
    rt_ot_pos = [lf_ot_pos[0]*-1, lf_ot_pos[1], lf_ot_pos[2]]

    move_to_point(BROW_LF_IN_TRANS, lf_in_pos)
    move_to_point(BROW_LF_OT_TRANS, lf_ot_pos)
    move_to_point(BROW_RT_IN_TRANS, rt_in_pos)
    move_to_point(BROW_RT_OT_TRANS, rt_ot_pos)

def place_eyes():
    locPos = cmds.xform('eye_placement_sphere',q=True,ws=True,rp=True)

    cmds.delete('eye_placement_sphere')

    # place look at just place the Y
    current_pos = cmds.xform(EYE_LOOK_W_TRANS, q=True, ws=True, rp=True)

    # place aim groups
    move_to_point(EYE_LOOK_W_TRANS, [0.0, locPos[1], current_pos[2]])
    move_to_point(EYE_LOOK_H_TRANS, [0.0, locPos[1], current_pos[2]])

    # place left right
    current_left = cmds.xform(EYE_L_LOOK_TRANS, q=True, ws=True, rp=True)
    current_right = cmds.xform(EYE_R_LOOK_TRANS, q=True, ws=True, rp=True)
    move_to_point(EYE_L_LOOK_TRANS, [locPos[0], locPos[1], current_left[2]])
    move_to_point(EYE_R_LOOK_TRANS, [locPos[0]*-1.0, locPos[1], current_right[2]])

    move_to_point(EYE_L_AIM_TRANS, [locPos[0], locPos[1], locPos[2] - 6.0])
    move_to_point(EYE_R_AIM_TRANS, [locPos[0]*-1.0, locPos[1], locPos[2] - 6.0])

    # constrain projectors to aim joints and parent to projectors group
    cmds.parentConstraint('left_eye_aim2_jnt', 'left_place3d',mo=True)
    cmds.parent('left_place3d', 'projectors')
    conLeft = cmds.parentConstraint('left_place3d', 'bindEyeJoint_L', mo=False)
    cmds.parentConstraint('right_eye_aim2_jnt', 'right_place3d', mo=True)
    cmds.parent('right_place3d', 'projectors')
    conRight = cmds.parentConstraint('right_place3d', 'bindEyeJoint_R', mo=False)
    cmds.parent(conLeft, conRight, 'constraints')




def move_to_point(transform, pos):
    # create temp trans to snap to point and then snap the trans to the temp trans since xform wasn't working well
    temp = cmds.spaceLocator(p=pos, n=f'{transform}_loc')[0]
    cmds.xform(temp, ws=True, t=pos)
    cmds.matchTransform(transform, temp, pos=True, rot=False)
    cmds.delete(temp)



def attach_to_body():

    #parent joints to head
    face_jnts = ['Nose_jnt',
     'Muzzle_jnt',
     'rt_brow_ot_jnt',
     'rt_brow_md_jnt',
     'rt_brow_in_jnt',
     'lf_brow_ot_jnt',
     'lf_brow_md_jnt',
     'lf_brow_in_jnt']

    cmds.parent(face_jnts, 'Head_M')

    cmds.parent('eye_rig', 'rig_rig')

    cmds.parent('rig_main', 'MotionSystem')

    cmds.parentConstraint('Head_M', 'rig_main', mo=True)

    cmds.scaleConstraint('Root_M', 'rig_main', mo=True)

    cmds.parentConstraint('Head_M', 'eye_head', mo=True)

    cmds.parent('eye_head', 'eye_world', 'rig_noxform')

    cmds.parent('constraints', 'rig_main')



def eye_placement(map, eyeGeo = ['leftEye_GEO', 'rightEye_GEO']):
    # create shader network for right and left
    projectors = []
    for geo in eyeGeo:
        side = 'left'
        if 'right' in geo:
            side = 'right'
        place2d = cmds.shadingNode('place2dTexture', n=f'{side}_place2d', au=True)
        file = cmds.shadingNode('file', n=f'{side}_eye_file', at=True)
        place3d = cmds.shadingNode('place3dTexture', n=f'{side}_place3d', au=True)
        projectors.append(place3d)
        projection = cmds.shadingNode('projection', n=f'{side}_projection', au=True)
        # material = cmds.createNode('surfaceShader', n=f'{side}_eye_mat')
        material = cmds.shadingNode('surfaceShader', n=f'{side}_eye_mat', asShader=True)
        shadingGrp = cmds.sets(name=f'{material}SG', empty=True, renderable=True, noSurfaceShader=True)

        # place 2d to file
        cmds.connectAttr(f'{place2d}.coverage', f'{file}.coverage')
        cmds.connectAttr(f'{place2d}.translateFrame' ,f'{file}.translateFrame' )
        cmds.connectAttr(f'{place2d}.rotateFrame', f'{file}.rotateFrame')
        cmds.connectAttr(f'{place2d}.mirrorU', f'{file}.mirrorU')
        cmds.connectAttr(f'{place2d}.mirrorV', f'{file}.mirrorV')
        cmds.connectAttr(f'{place2d}.stagger', f'{file}.stagger')
        cmds.connectAttr(f'{place2d}.wrapU', f'{file}.wrapU')
        cmds.connectAttr(f'{place2d}.wrapV', f'{file}.wrapV')
        cmds.connectAttr(f'{place2d}.repeatUV', f'{file}.repeatUV')
        cmds.connectAttr(f'{place2d}.offset', f'{file}.offset')
        cmds.connectAttr(f'{place2d}.rotateUV', f'{file}.rotateUV')
        cmds.connectAttr(f'{place2d}.noiseUV', f'{file}.noiseUV')
        cmds.connectAttr(f'{place2d}.vertexUvOne', f'{file}.vertexUvOne')
        cmds.connectAttr(f'{place2d}.vertexUvTwo', f'{file}.vertexUvTwo')
        cmds.connectAttr(f'{place2d}.vertexUvThree', f'{file}.vertexUvThree')
        cmds.connectAttr(f'{place2d}.vertexCameraOne', f'{file}.vertexCameraOne')
        cmds.connectAttr(f'{place2d}.outUV', f'{file}.uvCoord')
        cmds.connectAttr(f'{place2d}.outUvFilterSize', f'{file}.uvFilterSize')

        # file to projection
        cmds.connectAttr(f'{file}.outColor', f'{projection}.image')

        # place 3d to projection
        cmds.connectAttr(f'{place3d}.worldInverseMatrix[0]', f'{projection}.placementMatrix')

        # projection to mat
        cmds.connectAttr(f'{projection}.outColor', f'{material}.outColor')

        # set attrs on file and projection
        cmds.setAttr(f'{file}.fileTextureName', map, type='string')
        cmds.setAttr(f'{file}.defaultColor', 1.0, 1.0, 1.0, type='double3')
        cmds.setAttr(f'{place3d}.scaleX', 5.0)
        cmds.setAttr(f'{place3d}.scaleY', 5.0)
        cmds.setAttr(f'{place3d}.scaleZ', 5.0)
        cmds.setAttr(f'{place2d}.wrapU', 0)
        cmds.setAttr(f'{place2d}.wrapV', 0)

        # assign material
        cmds.connectAttr(f'{material}.outColor', f'{shadingGrp}.surfaceShader')
        cmds.sets(geo, e=True, forceElement=shadingGrp)

    # find the center of the eye geo
    verts = cmds.ls(f'{eyeGeo[0]}.vtx[*]', fl=True)
    sums = [0.0,0.0,0.0]
    for v in verts:
        pos = cmds.pointPosition(v)
        sums[0] += pos[0]
        sums[1] += pos[1]
        sums[2] += pos[2]
    center = [sums[0]/len(verts), sums[1]/len(verts), sums[2]/len(verts)]

    sphere = 'eye_placement_sphere'
    sphere_shape = cmds.createNode('implicitSphere', n='eye_placement_sphereShape')
    sphere_parent = cmds.listRelatives(sphere_shape, p=True)[0]
    cmds.rename(sphere_parent, sphere)

    cmds.setAttr(f'{sphere_shape}.radius', 7.5)
    cmds.xform(sphere, t=(center[0], center[1], center[2]+15), ws=True)
    cmds.connectAttr(f'{sphere}.translate', f'{projectors[0]}.translate')
    mult = cmds.createNode('multDoubleLinear', n='eye_rev_mdl')
    cmds.connectAttr(f'{sphere}.translateX', f'{mult}.input1')
    cmds.setAttr(f'{mult}.input2', -1.0)
    cmds.connectAttr(f'{mult}.output', f'{projectors[1]}.translateX')
    cmds.connectAttr(f'{sphere}.translateY', f'{projectors[1]}.translateY')
    cmds.connectAttr(f'{sphere}.translateZ', f'{projectors[1]}.translateZ')













    




