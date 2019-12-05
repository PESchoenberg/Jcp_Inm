#! /usr/local/bin/guile -s
!#


; ==============================================================================
;
; jcp_inm.scm
;
; Data processing for the jcp_inm.db dataset. 
;
; Compilation:
;
; On a shell window simply write
; - guile jcp_inm.scm<ENT>
;
; ==============================================================================
;
; Copyright (C) 2018 - 2019  Pablo Edronkin (pablo.edronkin at yahoo.com)
;
;   This program is free software: you can redistribute it and/or modify
;   it under the terms of the GNU Lesser General Public License as published by
;   the Free Software Foundation, either version 3 of the License, or
;   (at your option) any later version.
;
;   This program is distributed in the hope that it will be useful,
;   but WITHOUT ANY WARRANTY; without even the implied warranty of
;   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;   GNU Lesser General Public License for more details.
;
;   You should have received a copy of the GNU Lesser General Public License
;   along with this program.  If not, see <https://www.gnu.org/licenses/>.
;
; ==============================================================================


; Modules. These will be almost always required.
(use-modules (grsp grsp0))


; Vars. Change the path(s) to suit your system and installation.
;
(define mc 0)
(define sqlp-path "/home/pablo/Programs/C++/sqlp/sqlp")
(define database "/home/pablo/Datasets/Jcp_Inm/data/jcp_inm.db")
(define sql-path "/home/pablo/Datasets/Jcp_Inm/src/sql/")
(define pdf "See docs/jcp_inm.pdf for details.")
(define oqc "OPEN_QUERY_CLOSE")
(define oqcs "OPEN_QUERY_CLOSE_SHOW")
(define opt "? ")


; wrch - Displays a "wrong choice" message.
;
(define (wrch)
  (grsp-ld "Wrong choice. Please try again.\n"))


; ask - Select the day of the week.
;
; Output:
; - A three-letter string with the name of the day.
;
(define (ask-day)
  (let ((res "")
	(mc 0))
    (while (equal? mc 0)    
	   (menu-present "Jcp_inm - select day of the week" pdf "n")
	   (grsp-ld "1 - Sunday.")
	   (grsp-ld "2 - Monday.")
	   (grsp-ld "3 - Tuesday.")
	   (grsp-ld "4 - Wednesday.")
	   (grsp-ld "5 - Thursday.")
	   (grsp-ld "6 - Friday.")
	   (grsp-ld "7 - Saturday.")
	   (set! mc (grsp-ask opt))
	   (cond ((equal? mc 1)(set! res "Sun"))
		 ((equal? mc 2)(set! res "Mon"))
		 ((equal? mc 3)(set! res "Tue"))
		 ((equal? mc 4)(set! res "Wed"))
		 ((equal? mc 5)(set! res "Thu"))
		 ((equal? mc 6)(set! res "Fri"))
		 ((equal? mc 7)(set! res "Sat"))		 
		 (else (set! mc 0))))
    res))


; mult-adr - Construct a block address based on a choice.
;
; Arguments
; - p_n: number.
;
; Output:
; - p_n multiplied by 100 to build the block address.
;
(define (mult-adr p_n)
  (let ((res 0))
    (set! res (* p_n 100))
    res))


; ask-street-number - Establish the street block number to which a measurement
; belongs.
;
(define (ask-street-number)
  (let ((res 0)
	(mc 0))
    (while (equal? mc 0)    
	   (menu-present "Jcp_inm - select street number" pdf "n")
	   (grsp-ld "12 - 1200")
	   (grsp-ld "13 - 1300")
	   (grsp-ld "14 - 1400")
	   (grsp-ld "15 - 1500")
	   (grsp-ld "16 - 1600")
	   (grsp-ld "17 - 1700")
	   (grsp-ld "18 - 1800")
	   (grsp-ld "19 - 1900")
	   (grsp-ld "20 - 2000")
	   (grsp-ld "21 - 2100")
	   (grsp-ld "48 - 4800")
	   (grsp-ld "49 - 4900")
	   (grsp-ld "50 - 5000")
	   (grsp-ld "51 - 5100")
	   (grsp-ld "52 - 5200")
	   (grsp-ld "63 - 6300")
	   (grsp-ld "64 - 6400")
	   (grsp-ld "65 - 6500")
	   (grsp-ld "66 - 6600")
	   (set! mc (grsp-ask opt))
	   (cond ((equal? mc 12)(set! res (mult-adr mc)))
		 ((equal? mc 13)(set! res (mult-adr mc)))
		 ((equal? mc 14)(set! res (mult-adr mc)))
		 ((equal? mc 15)(set! res (mult-adr mc)))
		 ((equal? mc 16)(set! res (mult-adr mc)))
		 ((equal? mc 17)(set! res (mult-adr mc)))
		 ((equal? mc 18)(set! res (mult-adr mc)))
		 ((equal? mc 19)(set! res (mult-adr mc)))
		 ((equal? mc 20)(set! res (mult-adr mc)))
		 ((equal? mc 21)(set! res (mult-adr mc)))
		 ((equal? mc 48)(set! res (mult-adr mc)))
		 ((equal? mc 49)(set! res (mult-adr mc)))
		 ((equal? mc 50)(set! res (mult-adr mc)))
		 ((equal? mc 51)(set! res (mult-adr mc)))
		 ((equal? mc 52)(set! res (mult-adr mc)))
		 ((equal? mc 63)(set! res (mult-adr mc)))
		 ((equal? mc 64)(set! res (mult-adr mc)))
		 ((equal? mc 65)(set! res (mult-adr mc)))
		 ((equal? mc 66)(set! res (mult-adr mc)))
		 (else (set! mc 0))))
    res))


; ask-street-abr - Presents a menu with the various street name abbreviations.
; used in the dataset.
;
(define (ask-street-abr)
  (let ((res "")
	(mc 0))
    (while (equal? mc 0)    
	   (menu-present "Jcp_inm - select street" pdf "n")
	   (grsp-ld "1 - ALM.")
	   (grsp-ld "2 - ALT.")
	   (grsp-ld "3 - COL.")
	   (grsp-ld "4 - GC.")
	   (grsp-ld "5 - GCA.")
	   (grsp-ld "6 - GO.")
	   (grsp-ld "7 - JCP.")
	   (grsp-ld "8 - LAV.")
	   (grsp-ld "9 - LG.")
	   (grsp-ld "10 - MJ.")
	   (grsp-ld "11 - R197.")
	   (grsp-ld "12 - RSP.")
	   (grsp-ld "13 - ZA.")
	   (grsp-ld "14 - ZU.")	   
	   (set! mc (grsp-ask opt))
	   (cond ((equal? mc 1)(set! res "ALM"))
		 ((equal? mc 2)(set! res "ALT"))
		 ((equal? mc 3)(set! res "COL"))
		 ((equal? mc 4)(set! res "GC"))
		 ((equal? mc 5)(set! res "GCA"))
		 ((equal? mc 6)(set! res "GO"))
		 ((equal? mc 7)(set! res "JCP"))
		 ((equal? mc 8)(set! res "LAV"))
		 ((equal? mc 9)(set! res "LG"))
		 ((equal? mc 10)(set! res "MJ"))
		 ((equal? mc 11)(set! res "R197"))
		 ((equal? mc 12)(set! res "RSP"))
		 ((equal? mc 13)(set! res "ZA"))
		 ((equal? mc 14)(set! res "ZU"))
		 (else (set! mc 0))))
    res))


; menu-present - This is a presentation for the program and what it intends to
; do.
;
; Arguments:
; - p_ti: title.
; - p_te: text.
; - p_en: if you want an <ENT> message to appear.
;  - "y" for yes.
;  - "n" for no.
;
(define (menu-present p_ti p_te p_en)
  (let ((n 0))
    (clear)
    (ptit "=" 60 2 p_ti)
    (ptit " " 60 0 p_te)
    (if (eq? p_en "y")(set! n (grsp-ask "Press <ENT> to continue.")))))


; menu-enter-data - Enter data menu.
;
; Output:
; - Returns an integer corresponding to the menu option selected.
;
(define (menu-enter-data)
  (let ((res 0))
    (grsp-ld "0 - Back to main.")
    (grsp-ld "1 - Update prep.sql.")
    (grsp-ld "2 - Input block data.")
    (set! res (grsp-ask opt))
    res))


; menu-block-data - Block data menu.
;
; Output:
; - Returns an integer corresponding to the menu option selected.
;
(define (menu-block-data)
  (let ((res 0))
    (grsp-ld "0 - No more records.")
    (grsp-ld "1 - Insert a new record.")
    (set! res (grsp-ask opt))
    res))


; write-prep-sql - Overwrites the contents of prep.sql with the values
; contained in the arguments. 
;
; Arguments:
; - p_q1: q1.
; - p_q2: q2.
; - p_q3: q3.
; - p_q4: q4.
; - p_q5: q5.
; - p_q6: q6.
; - p_q7: q7.
; - p_q8: q8.
;
(define (write-prep-sql p_q1 p_q2 p_q3 p_q4 p_q5 p_q6 p_q7)
  (let ((n "\n"))
    (grsp-save-to-file
     (strings-append (list p_q1 n p_q2 n p_q3 n p_q4 n p_q5 n p_q6 n p_q7 n) 0)
     (strings-append (list sql-path "prep.sql") 0) "w")))


; update-prep - Updates data in prep.sql.
;
(define (update-prep)
  (let ((q8 "UPDATE trf_pers SET"))    
    (write-prep-sql "UPDATE trf_pers SET Status = 'enabled' WHERE Status IS NULL;"
		    "UPDATE trf_pers SET Context = 'center' WHERE Context IS NULL;"
		    (strings-append
		     (list (strings-append
			    (list q8 "Hr =")1)
			   (grsp-n2s (grsp-ask "Hour? "))
			   " WHERE Hr IS NULL;")
		     0)
		    (strings-append
		     (list (strings-append
			    (list q8 "Dayn =") 1)
			   (grsp-n2s (grsp-ask "Day of month? "))
			   " WHERE Dayn IS NULL;")
		     0)
		    (strings-append
		     (list (strings-append
			    (list q8 "Dayw =") 1)
			   "'"
			   (ask-day)
			   "'"
			   " WHERE Dayw IS NULL;")
		     0)
		    (strings-append
		     (list (strings-append
			    (list q8 "Monthn =") 1)
			   (grsp-n2s (grsp-ask "Month? "))
			   " WHERE Monthn IS NULL;")
		     0)
		    (strings-append
		     (list (strings-append
			    (list q8 "Year =") 1)
			   (grsp-n2s (grsp-ask "Year? "))
			   " WHERE Year IS NULL;")
		     0))))
    

; run-prep-sql - Runs the existing prep.sql.
;
(define (run-prep-sql)
  (grsp-cd "Running prep.sql...\n")
  (grsp-sqlp sqlp-path database (strings-append (list sql-path "prep.sql") 0) oqc))
  

; input-record-ppers - Input a record in trf_pers.
;
(define (input-record-ppers)
  (grsp-sqlp sqlp-path
	     database
	     (strings-append
	      (list
	       "\"INSERT INTO trf_pers (Abr, Alt, Value) VALUES("
	       "'"
	       (ask-street-abr)
	       "', '"
	       (grsp-n2s (ask-street-number))
	       "', "
	       (grsp-n2s (grsp-ask "Number of people? "))
	       ");\"")
	      0)
	     oqc))


; enter-block-data - Enter block data. allows for data input to trf_pers, and 
; batch update with prep.sql once finished entering records.
;
(define (enter-block-data)
  (let ((mc -1))
    (while (equal? #f (equal? mc 0))
	   (menu-present "Jcp_inm - enter block data" pdf "n")
	   (set! mc (menu-block-data))
	   (cond ((equal? mc 0)(run-prep-sql))
		 ((equal? mc 1)(input-record-ppers))
		 (else (wrch))))))


; enter-data - Data input function.
; 
(define (enter-data)
  (let ((mc -1))
    (while (equal? #f (equal? mc 0))
	   (menu-present "Jcp_inm - input data" pdf "n")
	   (set! mc (menu-enter-data))
	   (cond ((equal? mc 0)(grsp-cd "Back to main menu!\n"))
		 ((equal? mc 1)(update-prep))
		 ((equal? mc 2)(enter-block-data))
		 (else (wrch))))))


; process-data - Data processing sqlp call.
;
(define (process-data)
  (grsp-cd "Processing data...\n")
  (grsp-sqlp sqlp-path database (strings-append (list sql-path "calc.sql") 0) oqc))


; report-data - Data reporting sqlp call.
;
(define (report-data)
  (grsp-cd "Generating report...\n")
  (grsp-sqlp sqlp-path database (strings-append (list sql-path "rep.sql") 0) oqcs))


; menu-main - Main menu of the program.
;
; Output:
; - Returns an integer corresponding to the menu option selected.
;
(define (menu-main)
  (let ((res 0))
    (grsp-ld "0 - Exit.")
    (grsp-ld "1 - Input data.")
    (grsp-ld "2 - Process.")
    (grsp-ld "3 - Report.")
    (set! res (grsp-ask opt))
    res))


; Main program
(set! mc -1)
(while (equal? #f (equal? mc 0))
       (menu-present "Jcp_inm - main" pdf "n")
       (set! mc (menu-main))
       (cond ((equal? mc 0)(grsp-cd "Bye!\n"))
	     ((equal? mc 1)(enter-data))
	     ((equal? mc 2)(process-data))
	     ((equal? mc 3)(report-data))
	     (else (wrch))))

