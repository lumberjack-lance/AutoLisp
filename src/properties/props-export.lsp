;;; exports all drawing properties from the current drawing (for use with more than 10 custom drawing properties)
(vl-load-com)
;;SETUP THE VARIABLES FOR THE DRAWING PROPERTIES
(setq acad_object (vlax-get-acad-object))
(setq current_drawing (vla-get-ActiveDocument acad_object))
(setq custom_props (vlax-get-Property current_drawing 'SummaryInfo))
(defun c:exprops ()
  (command
    "propulate"
    "list"
    "current"
  )
  (setq	props
	 (open
	   "C:\\Users\\Lance Threewitt\\Documents\\projects\\projects-git\\AutoLisp\\doc\\props.txt"
	   "w"
	 )
  )
  ;;TODO build for loop around this and write to file
  (vla-GetCustomByIndex custom_props 0 'Key0 'Value0)
  (princ Key0)
  (princ Value0)
  
  (write-line "test" props)
  (close props)
  (princ "number of props:")
  (princ (vla-NumCustomInfo custom_props))
  (princ)
) ;_c:exprops

