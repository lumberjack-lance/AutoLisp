;;;Lance Shorcuts

;;; G-ANNO-NPLT LAYER FREEZE/THAW

(defun c:NN ()
(command "-LAYER" "FREEZE" "G-ANNO-NPLT" 
"")
(princ)
) ;FREEZES LAYER

(defun c:NP ()
(command "-LAYER" "THAW" "G-ANNO-NPLT" 
"")
(princ)
) ;THAWS LAYER


;;; DEFPOINTS LAYER FREEZE/THAW

(defun c:DD ()
(command "-LAYER" "FREEZE" "Defpoints" 
"")
(princ)
) ;FREEZES LAYER

(defun c:DN ()
(command "-LAYER" "THAW" "Defpoints" 
"")
(princ)
) ;THAWS LAYER



;;; OBJECT SEND TO BAck

(defun c:SB ()
(command "DRAWORDER" 
"Back")
(princ)
) ;SENDS SELECTED OBJECT TO THE BACK OF THE DRAWING ORDER


;;; OBJECT BRING TO FRONT

(defun c:FR ()
(command "DRAWORDER" 
"Front")
(princ)
) ;BRINGS THE SELECTED OBJECT TO THE FRONT OF THE DRAWING ORDER

;;; QUICK COPY

(defun c:CC ()
(command "CO")
) ;REASSIGNS THE COPY CHORTCUT (CO) TO CC FOR QUICK ACCESS WITH ONE HAND


;;; X-REF QUICK RELOAD

(defun c:xv ()
(command "-xref" "reload" "*")
(princ)
) ;QUICKLY RELOADS ALL XREFS IN THE DRAWING


;;; GO TO MODEL/ GO TO LAYOUT

(defun c:MM ()
(command 
    "MODEL");COMMAND
) ;DEFUN

(defun c:LO ()
(command 
    "-LAYOUT"
    "SET"
    ""
);COMMAND
) ;DEFUN




