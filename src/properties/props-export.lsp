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
  (setq props-path "C:\\Users\\Lance Threewitt\\Documents\\projects\\projects-git\\AutoLisp\\doc\\props.csv")
	   
  (setq	props
	 (open
	   props-path
	   "w"
	 )
  )
  ;;TODO build for loop around this and write to file
  (setq i 0)
  (setq p (vla-NumCustomInfo custom_props))
  (while (< i p)    
	  (vla-GetCustomByIndex custom_props i 'Key 'Value)
	  (princ Key)
	  (princ Value)
    	  (write-line (strcat Key ", " Value) props)
	  (write-line Value props)
    	  (setq i (+ 1 i))
    );_while
  (princ (strcat "Custom Properties exported to:" props-path))
  (close props)
  (princ)
) ;_c:exprops

