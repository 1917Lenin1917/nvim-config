;; extends

(jsx_element 
	open_tag: (jsx_opening_element
							name: (identifier) @custom.jsx.element 
							(#match? @custom.jsx.element "[A-Z].*")))

(jsx_element 
	close_tag: (jsx_closing_element
							name: (identifier) @custom.jsx.element 
							(#match? @custom.jsx.element "^[A-Z].*$")))
