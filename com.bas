10 CLS
20 REM Configuracion del puerto serie
30 ON ERROR GOTO ErrorHandler
40 OPEN "COM1:9600,N,8,1,RS,CS,DS" FOR RANDOM AS #1
50 PRINT "Puerto COM conectado"
60 CLOSE #1
70 END
80 REM Manejar errores
90 ErrorHandler:
100 IF ERR <> 0 THEN
110     PRINT "Error al abrir el puerto COM, Error Code: ", ERR
120     RESUME EndProgram
130 END IF
140 EndProgram:
150 END
