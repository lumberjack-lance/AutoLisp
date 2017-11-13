;;;Title: Shorcuts
;;;Shortcuts and quick scripts for autocad commands

;;;DEFPOINTS LAYER FREEZE/THAW

;; FREEZES LAYER
(defun c:DD ()
  (command "-LAYER"
	   "FREEZE"
	   "Defpoints"
	   ""
  )
  (princ)
);_c:DD

;; THAWS LAYER
(defun c:DN ()
  (command "-LAYER"
	   "THAW"
	   "Defpoints"
	   ""
  )
  (princ)
);_c:DN


;; SENDS SELECTED OBJECT TO THE BACK OF THE DRAWING ORDER
(defun c:SB ()
  (command "DRAWORDER"
	   "Back"
  )
  (princ)
);_c:SB


;; BRINGS THE SELECTED OBJECT TO THE FRONT OF THE DRAWING ORDER

(defun c:FR ()
  (command "DRAWORDER"
	   "Front"
  )
  (princ)
);_c:FR

;; QUICK COPY
;;REASSIGNS THE COPY CHORTCUT (CO) TO CC FOR QUICK ACCESS WITH ONE HAND

(defun c:CC ()
  (command "CO")
);_c:CC


;; X-REF QUICK RELOAD
;;QUICKLY RELOADS ALL XREFS IN THE DRAWING
(defun c:xl ()
  (command "-xref" "reload" "*")
  (princ)
);_c:xl


;; GO TO MODEL/ GO TO LAYOUT
(defun c:MM ()
  (command
    "MODEL"
  )
);_c:MM

(defun c:LO ()
  (command
    "-LAYOUT"
    "SET"
    ""
  )
);_c:LO

(defun c:PP ()
  (command
    "pedit"
    "multiple"
    pause
  )
  (princ)
);_c:PP



