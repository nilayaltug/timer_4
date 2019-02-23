	__CONFIG H'3F31'
	LIST P=16F877A
	#INCLUDE <P16F877A.INC>
	SAYAC EQU 0X20
	ORG 0X000
	GOTO ANA_METOT
	ORG 0X004
	
KESME_METOT
	BTFSS INTCON,TMR0IF
	RETFIE
	BCF INTCON,TMR0IF
	
	MOVLW D'6'
	MOVWF TMR0

	DECFSZ SAYAC,F
	RETFIE

	MOVLW D'250'
	MOVWF SAYAC

	INCF PORTD,F

RETFIE

ANA_METOT
	BANKSEL TRISD
	CLRF TRISD
	BANKSEL PORTD
	CLRF PORTD
	BSF PORTD,0
	
	BANKSEL INTCON
	MOVLW B'11100000'
	MOVWF INTCON
	BANKSEL INTCON

	BANKSEL OPTION_REG
	MOVLW B'00000100'
	MOVWF OPTION_REG
	BANKSEL OPTION_REG 

	BANKSEL TMR0
	MOVLW D'6'
	MOVWF TMR0
	CLRF SAYAC
	MOVLW D'250'	
	MOVWF SAYAC
	BANKSEL TMR0


KONTROL
	GOTO KONTROL
	
END