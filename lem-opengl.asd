(defsystem "lem-opengl"
  :depends-on ("cffi"
               "cl-charms"
               "trivial-clipboard"
               #+(or (and ccl unix) (and lispworks unix))"lem-setlocale"
	       "%lem-opengl"
               "lem")
  :serial t
  :components (#+win32(:file "cl-charms-pdcurseswin32")
               (:file "term")
               (:file "ncurses")))
