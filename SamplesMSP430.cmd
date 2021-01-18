for %%f in (samples\MSP430\*.ob07) do Compiler.exe %%f msp430 -rom 2048 -ram 128
@pause
