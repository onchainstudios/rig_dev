import maya.cmds as cmds
import pymel.core as pm
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

class FaceRigUI(QtWidgets.QWidget):
    def __init__(self, parent=None):
        super(FaceRigUI, self).__init__(parent)

        # Muzzle vertex
        self.muzzle_button = QtWidgets.QPushButton("Set Muzzle Vtx")
        self.muzzle_spacer = QtWidgets.QSpacerItem(50, 20, QtWidgets.QSizePolicy.Minimum,
                                                    QtWidgets.QSizePolicy.Expanding)
        self.muzzle_help_button = QtWidgets.QPushButton('?')

        self.muzzle_layout = QtWidgets.QHBoxLayout()
        self.muzzle_layout.addWidget(self.muzzle_button)
        self.muzzle_layout.addItem(self.muzzle_spacer)
        self.muzzle_layout.addWidget(self.muzzle_help_button)
        
        # Jaw Vertex
        self.jaw_button = QtWidgets.QPushButton("Set Jaw Vtx")
        self.jaw_spacer = QtWidgets.QSpacerItem(50, 20, QtWidgets.QSizePolicy.Minimum,
                                                   QtWidgets.QSizePolicy.Expanding)
        self.jaw_help_button = QtWidgets.QPushButton('?')

        self.jaw_layout = QtWidgets.QHBoxLayout()
        self.jaw_layout.addWidget(self.jaw_button)
        self.jaw_layout.addItem(self.jaw_spacer)
        self.jaw_layout.addWidget(self.jaw_help_button)

        # Lip Corner Vertex
        self.lip_corner_button = QtWidgets.QPushButton('Set Lip Corner Vtx')
        self.lip_corner_spacer = QtWidgets.QSpacerItem(50, 20, QtWidgets.QSizePolicy.Minimum,
                                                   QtWidgets.QSizePolicy.Expanding)
        self.lip_corner_help_button = QtWidgets.QPushButton('?')

        self.lip_corner_layout = QtWidgets.QHBoxLayout()
        self.lip_corner_layout.addWidget(self.lip_corner_button)
        self.lip_corner_layout.addItem(self.lip_corner_spacer)
        self.lip_corner_layout.addWidget(self.lip_corner_help_button)

        # Lip Top Vertex
        self.lip_top_button = QtWidgets.QPushButton('Set Lip Top Vtx')
        self.lip_top_spacer = QtWidgets.QSpacerItem(50, 20, QtWidgets.QSizePolicy.Minimum,
                                                       QtWidgets.QSizePolicy.Expanding)
        self.lip_top_help_button = QtWidgets.QPushButton('?')

        self.lip_top_layout = QtWidgets.QHBoxLayout()
        self.lip_top_layout.addWidget(self.lip_top_button)
        self.lip_top_layout.addItem(self.lip_top_spacer)
        self.lip_top_layout.addWidget(self.lip_top_help_button)

        # Lip Bot Vertex
        self.lip_bot_button = QtWidgets.QPushButton('Set Lip Bot Vtx')
        self.lip_bot_spacer = QtWidgets.QSpacerItem(50, 20, QtWidgets.QSizePolicy.Minimum,
                                                    QtWidgets.QSizePolicy.Expanding)
        self.lip_bot_help_button = QtWidgets.QPushButton('?')

        self.lip_bot_layout = QtWidgets.QHBoxLayout()
        self.lip_bot_layout.addWidget(self.lip_bot_button)
        self.lip_bot_layout.addItem(self.lip_bot_spacer)
        self.lip_bot_layout.addWidget(self.lip_bot_help_button)

        # Nose
        self.nose_button = QtWidgets.QPushButton('Set Nose Bottom Vtx')
        self.nose_spacer = QtWidgets.QSpacerItem(50, 20, QtWidgets.QSizePolicy.Minimum,
                                                   QtWidgets.QSizePolicy.Expanding)
        self.nose_help_button = QtWidgets.QPushButton('?')

        self.nose_layout = QtWidgets.QHBoxLayout()
        self.nose_layout.addWidget(self.nose_button)
        self.nose_layout.addItem(self.nose_spacer)
        self.nose_layout.addWidget(self.nose_help_button)

        # Brow_in
        self.brow_in_button = QtWidgets.QPushButton('Set Brow In Vtx')
        self.brow_in_spacer = QtWidgets.QSpacerItem(50, 20, QtWidgets.QSizePolicy.Minimum,
                                                   QtWidgets.QSizePolicy.Expanding)
        self.brow_in_help_button = QtWidgets.QPushButton('?')

        self.brow_in_layout = QtWidgets.QHBoxLayout()
        self.brow_in_layout.addWidget(self.brow_in_button)
        self.brow_in_layout.addItem(self.brow_in_spacer)
        self.brow_in_layout.addWidget(self.brow_in_help_button)

        # Brow_ot
        self.brow_ot_button = QtWidgets.QPushButton('Set Brow Out Vtx')
        self.brow_ot_spacer = QtWidgets.QSpacerItem(50, 20, QtWidgets.QSizePolicy.Minimum,
                                                    QtWidgets.QSizePolicy.Expanding)
        self.brow_ot_help_button = QtWidgets.QPushButton('?')

        self.brow_ot_layout = QtWidgets.QHBoxLayout()
        self.brow_ot_layout.addWidget(self.brow_ot_button)
        self.brow_ot_layout.addItem(self.brow_ot_spacer)
        self.brow_ot_layout.addWidget(self.brow_ot_help_button)

        # Lid Top Vertex
        self.lid_tp_button = QtWidgets.QPushButton('Set Lid Top Vtx')
        self.lid_tp_spacer = QtWidgets.QSpacerItem(50, 20, QtWidgets.QSizePolicy.Minimum,
                                                    QtWidgets.QSizePolicy.Expanding)
        self.lid_tp_help_button = QtWidgets.QPushButton('?')

        self.lid_tp_layout = QtWidgets.QHBoxLayout()
        self.lid_tp_layout.addWidget(self.lid_tp_button)
        self.lid_tp_layout.addItem(self.lid_tp_spacer)
        self.lid_tp_layout.addWidget(self.lid_tp_help_button)

        # Lid Top Vertex
        self.lid_bt_button = QtWidgets.QPushButton('Set Lid Bot Vtx')
        self.lid_bt_spacer = QtWidgets.QSpacerItem(50, 20, QtWidgets.QSizePolicy.Minimum,
                                                   QtWidgets.QSizePolicy.Expanding)
        self.lid_bt_help_button = QtWidgets.QPushButton('?')

        self.lid_bt_layout = QtWidgets.QHBoxLayout()
        self.lid_bt_layout.addWidget(self.lid_bt_button)
        self.lid_bt_layout.addItem(self.lid_bt_spacer)
        self.lid_bt_layout.addWidget(self.lid_bt_help_button)

        # Eye
        self.eye_button = QtWidgets.QPushButton('Set Eye Vtx')
        self.eye_spacer = QtWidgets.QSpacerItem(50, 20, QtWidgets.QSizePolicy.Minimum,
                                                    QtWidgets.QSizePolicy.Expanding)
        self.eye_help_button = QtWidgets.QPushButton('?')

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

    def connect_buttons(self):
        pass



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
