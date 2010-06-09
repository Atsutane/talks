      * Erkennungsteil
       IDENTIFICATION DIVISION.
      * Programmname
       PROGRAM-ID.
           FACULTYPGM.
       AUTHOR.
           Thorsten Toepper.
      * Angabe der Einrichtung
       INSTALLATION.
           2IB-HSMA.
       DATE-WRITTEN.
           Samstag, 5.6.2010.

      * Datenteil
       DATA DIVISION.
      * Sektion zur Variablendeklaration im Zwischenspeicher
       WORKING-STORAGE SECTION.
       01  EINGABE.
      * Deklaration eines zweistelligen Zahlenwertes
           02 eingabewert PIC 99.
       01 FAKULTAET.
      * Deklaration eines 18 stelligen Zahlenwertes,
      * sowie direkte Zuweisung des Wertes 1.
           02 ergebniswert PIC 9(18) VALUE 1.

      * Verarbeitungsteil
       PROCEDURE DIVISION.
      * Die Hauptprozedur
       main SECTION.

      * Ausgabe der Nachricht
           DISPLAY "Wert zur Fakultätsberechnung:"
      * Einlesen des Eingabewertes
           ACCEPT eingabewert.
      * Ausgabe des Wertes mit beiden Stellen
           DISPLAY "Wert: " eingabewert.

      * Aufruf der faculty Prozedur
           PERFORM faculty.

      * Ausgabe des berechneten Wertes mit allen 18 Stellen
           DISPLAY "Fakultät: " ergebniswert.
      * Programm beenden
           STOP RUN.


      * Pseudorekursive Prozedur zur Fakultaetsberechnung
       faculty SECTION.
      * ergebniswert mit eingabe multiplizieren,
      * Ergebnis in ergebniswert sichern
           MULTIPLY eingabewert by ergebniswert.
      * 1 von eingabewert substrahieren und in eingabewert sichern.
           SUBTRACT 1 FROM eingabewert.

           IF eingabewert > 1 THEN
               PERFORM faculty.

