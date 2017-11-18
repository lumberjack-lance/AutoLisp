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


;; X-REF QUICK RELOAD
;;QUICKLY RELOADS ALL XREFS IN THE DRAWING
(defun c:XL ()
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

(defun c:PM ()
  (command
    "pedit"
    "multiple"
    pause
  )
  (princ)
);_c:PP

;;TOGGLES "oleframe" OFF AND ON AGAIN
;;defaults "oleframe" to 2
(defun c:OO ()
  (if (= oletmp nil) (setq oletmp 2))
  (cond
    ((= (getvar "oleframe") 0) (setvar "oleframe" oletmp))
    (t (progn (setq oletmp (getvar "oleframe"))(setvar "oleframe" 0)))
    )
  );_C:OO

  (defun c:copytoall ()
  (foreach x (layoutlist)		;FOR LOOP TO CYCLE THROUGH LAYOUTS
    (setvar "ctab" x)
    (command "PASTECLIP" "0,0")
  )					;END FOR LOOP
  (set_current_tab "DRAFTER NOTES")
  (princ)
)					;ZA

(defun c:SS ()
  (command
    "OSMODE" 8191
    )
  (princ)
)

(defun c:rc1 ()
  (setvar "shortcutmenu" 0)
  (PRINC "\nRight click set to repeat...")
  (PRINC)
)
(defun c:rc2 ()
  (setvar "shortcutmenu" 11)
  (PRINc "\nRight click set to menu...")
  (PRINC)
)

(DEFUN C:R90 ()
  (COMMAND
    "ROTATE" PAUSE "" PAUSE "90"
    )
  (PRINC)
  )

(DEFUN C:R180 ()
  (COMMAND
    "ROTATE" PAUSE "" PAUSE "180"
    )
  (PRINC)
  )

(DEFUN C:R45 ()
  (COMMAND
    "ROTATE" PAUSE "" PAUSE "45"
    )
  (PRINC)
  )

(defun c:ws1 ()
  (command "WSCURRENT" "LANCE")
  (c:rc1)
  (PRINC)
)
(defun c:ws2 ()
  (command "WSCURRENT" "LANCECIVIL" "TOOLSPACE")
  (c:rc2)
  (PRINC)
)
(defun c:ws3 ()
  (command "WSCURRENT" "LANCE MAP")
  (c:rc2)
  (PRINC)
)

(defun c:rcs () (command "REFCLOSE" "S" "") (PRINC))

;;; QUICK COPY AND PASE 0,0
;; COPYS SELECTION AT BASEPOINT 0,0
(defun c:CC ()
  (command "COPYBASE" "0,0")
  (princ)
)

;;PASTE AT BASEPOINT 0,0
(defun c:PP ()
  (command "PASTECLIP" "0,0")
  (princ)
)




