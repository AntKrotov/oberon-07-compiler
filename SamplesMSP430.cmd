for %%f in (samples\MSP430\*.ob07) do Compiler.exe %%f msp430 -rom 4096 -ram 128
@pause
