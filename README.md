# COM_Basic
Este programa en BASIC verifica la conexión del puerto COM1 de una máquina virtual en MS-DOS 6.22 a un host con Windows 11 a través de USB.

# Programa de Configuración del Puerto Serie en BASIC

## Descripción

Este repositorio contiene un programa escrito en BASIC para configurar y conectar a un puerto serie. El programa abre el puerto `COM1` con una configuración específica y maneja posibles errores que puedan ocurrir durante la apertura del puerto.

### Estructura del Programa

- **Inicialización:**
  - Limpia la pantalla y configura el controlador de errores.
  
- **Apertura del Puerto Serie:**
  - Intenta abrir el puerto `COM1` con los siguientes parámetros:
    - Baud rate: 9600
    - Paridad: Ninguna (N)
    - Bits de datos: 8
    - Bits de parada: 1
    - Control de flujo: RS, CS, DS

- **Manejo de Errores:**
  - Si ocurre un error al abrir el puerto, se captura y se muestra un mensaje de error con el código correspondiente.
  
- **Cierre del Puerto:**
  - Cierra el puerto si se ha abierto correctamente.

## Entorno de Ejecución

El programa se ejecuta en un entorno MS-DOS 6.22 utilizando QBasic, dentro de una máquina virtual de VirtualBox. El host es Windows 11, que tiene el puerto COM1 conectado a través de USB.

### Capturas de Pantalla

Este repositorio incluye capturas de pantalla del entorno de VirtualBox mostrando la ejecución del programa en MS-DOS 6.22:

- **Capturas 1:** Configuración del puerto y USB en VirtualBOX para Ms-DOS 6.22
![image](https://github.com/ikerlobop/COM_Basic/assets/70375181/eabf68cf-a6ed-4116-8040-31c8edbdfb61)
![image](https://github.com/ikerlobop/COM_Basic/assets/70375181/4d18b301-aefc-4135-8ac7-7d2c5c6d5f9d)
  
- **Captura 2:** Ejecución en Ms-DOS

![image](https://github.com/ikerlobop/COM_Basic/assets/70375181/dd061646-d214-4e00-9748-02cdc63b4ce2)
![image](https://github.com/ikerlobop/COM_Basic/assets/70375181/78e8a75e-f4df-415d-8df2-f45f8e92e62c)
  
- **Captura 3:** Para ejecutar pulsamos F5, Mensaje cuando abre el puerto COM.
![image](https://github.com/ikerlobop/COM_Basic/assets/70375181/782783f9-3524-4a66-92a5-ebfb4a2139b2)
  
- **Captura 3:** Para ejecutar pulsamos F5, Mensaje cuando NO abre el puerto COM.
![image](https://github.com/ikerlobop/COM_Basic/assets/70375181/99dc767c-faee-4810-973d-7b7760ea0eb0)

  
## Uso

Para ejecutar este programa, necesitarás un entorno compatible con el lenguaje BASIC. Asegúrate de que el puerto `COM1` esté disponible y no esté siendo usado por otro dispositivo.

### Ejemplo de Ejecución

1. Copia el contenido del archivo `modbus.bas` en tu entorno de programación BASIC.
2. Ejecuta el programa.
3. Si el puerto se abre correctamente, verás el mensaje "Puerto COM conectado".
4. Si ocurre un error, verás un mensaje indicando el código de error.

## Código del Programa

```basic
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
