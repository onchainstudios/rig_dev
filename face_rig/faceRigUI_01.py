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

        # Create face rig step buttons and horizontal layouts and add buttons and spacer to H layouts
        # Muzzle
        self.muzzle_button = QtWidgets.QPushButton("Place Muzzle")
        self.set_muzzle_button = QtWidgets.QPushButton('Set')
        self.muzzle_spacer = QtWidgets.QSpacerItem(50, 20, QtWidgets.QSizePolicy.Minimum,
                                                    QtWidgets.QSizePolicy.Expanding)
        self.muzzle_help_button = QtWidgets.QPushButton('?')

        self.muzzle_layout = QtWidgets.QHBoxLayout()
        self.muzzle_layout.addWidget(self.muzzle_button)
        self.muzzle_layout.addWidget(self.set_muzzle_button)
        self.muzzle_layout.addItem(self.muzzle_spacer)
        self.muzzle_layout.addWidget(self.muzzle_help_button)
        
        # Jaw
        self.jaw_button = QtWidgets.QPushButton("Place Jaw")
        self.set_jaw_button = QtWidgets.QPushButton('Set')
        self.jaw_spacer = QtWidgets.QSpacerItem(50, 20, QtWidgets.QSizePolicy.Minimum,
                                                   QtWidgets.QSizePolicy.Expanding)
        self.jaw_help_button = QtWidgets.QPushButton('?')

        self.jaw_layout = QtWidgets.QHBoxLayout()
        self.jaw_layout.addWidget(self.jaw_button)
        self.jaw_layout.addWidget(self.set_jaw_button)
        self.jaw_layout.addItem(self.jaw_spacer)
        self.jaw_layout.addWidget(self.jaw_help_button)

        # Lips
        self.lips_button = QtWidgets.QPushButton('Place Lip Corner')
        self.set_lips_button = QtWidgets.QPushButton('Set')
        self.lips_spacer = QtWidgets.QSpacerItem(50, 20, QtWidgets.QSizePolicy.Minimum,
                                                   QtWidgets.QSizePolicy.Expanding)
        self.lips_help_button = QtWidgets.QPushButton('?')

        self.lips_layout = QtWidgets.QHBoxLayout()
        self.lips_layout.addWidget(self.lips_button)
        self.lips_layout.addWidget(self.set_lips_button)
        self.lips_layout.addItem(self.lips_spacer)
        self.lips_layout.addWidget(self.lips_help_button)

        # Nose
        self.nose_button = QtWidgets.QPushButton('Place Nose')
        self.set_nose_button = QtWidgets.QPushButton('Set')
        self.nose_spacer = QtWidgets.QSpacerItem(50, 20, QtWidgets.QSizePolicy.Minimum,
                                                   QtWidgets.QSizePolicy.Expanding)
        self.nose_help_button = QtWidgets.QPushButton('?')

        self.nose_layout = QtWidgets.QHBoxLayout()
        self.nose_layout.addWidget(self.nose_button)
        self.nose_layout.addWidget(self.set_nose_button)
        self.nose_layout.addItem(self.nose_spacer)
        self.nose_layout.addWidget(self.nose_help_button)

        # Brows
        self.brows_button = QtWidgets.QPushButton('Place Brow In')
        self.set_brows_button = QtWidgets.QPushButton('Set')
        self.brows_spacer = QtWidgets.QSpacerItem(50, 20, QtWidgets.QSizePolicy.Minimum,
                                                   QtWidgets.QSizePolicy.Expanding)
        self.brows_help_button = QtWidgets.QPushButton('?')

        self.brows_layout = QtWidgets.QHBoxLayout()
        self.brows_layout.addWidget(self.brows_button)
        self.brows_layout.addWidget(self.set_brows_button)
        self.brows_layout.addItem(self.brows_spacer)
        self.brows_layout.addWidget(self.brows_help_button)

        # Lids
        self.lids_button = QtWidgets.QPushButton('Place Lid Top')
        self.set_lids_button = QtWidgets.QPushButton('Set')
        self.lids_spacer = QtWidgets.QSpacerItem(50, 20, QtWidgets.QSizePolicy.Minimum,
                                                    QtWidgets.QSizePolicy.Expanding)
        self.lids_help_button = QtWidgets.QPushButton('?')

        self.lids_layout = QtWidgets.QHBoxLayout()
        self.lids_layout.addWidget(self.lids_button)
        self.lids_layout.addWidget(self.set_lids_button)
        self.lids_layout.addItem(self.lids_spacer)
        self.lids_layout.addWidget(self.lids_help_button)

        # Eye
        self.eye_button = QtWidgets.QPushButton('Place Eye')
        self.set_eye_button = QtWidgets.QPushButton('Set')
        self.eye_spacer = QtWidgets.QSpacerItem(50, 20, QtWidgets.QSizePolicy.Minimum,
                                                    QtWidgets.QSizePolicy.Expanding)
        self.eye_help_button = QtWidgets.QPushButton('?')

        self.eye_layout = QtWidgets.QHBoxLayout()
        self.eye_layout.addWidget(self.eye_button)
        self.eye_layout.addWidget(self.set_eye_button)
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
        layout.addLayout(self.lips_layout)
        layout.addLayout(self.nose_layout)
        layout.addLayout(self.brows_layout)
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

    if pm.cmds.window('FaceRigUI', q=True, ex=True):
        pm.cmds.deleteUI('FaceRigUI')

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
    title = widget.windowTitle()
    if title:
        win.setWindowTitle(title)
    icon = widget.windowIcon()
    if icon:
        win.setWindowIcon(icon)
    win.resize(widget.size())
    return win
