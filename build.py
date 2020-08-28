#!/usr/bin/python3
# coding: utf8

'''
   Module present universal script for build compiler.

   Usage:
      1. Change global variable in this script
      //2. Get arg in run script.
'''

import os
osName = "lin"  # lin win
osTarget = "lin64"  # lin32 lin64 win32 win64


class clsBuilder():
    def __init__(self):
        self.osName = osName
        self.osTarget = osTarget
        self.nameCompiler = ""
        self.outName = ""
        self.osCmd = ""

    def Run(self):
        if self.osName == "lin":
            self.nameCompiler = "./Compiler"
        elif self.osName=="win":
            self.nameCompiler = "./Compiler.exe"
        
        if self.osTarget == "lin64":
            self.outName = "Compiler"
            self.osCmd = "linux64exe"
        elif self.osTarget == "lin32":
            self.outName = "Compiler32"
            self.osCmd = "linux32exe"
        elif self.osTarget == "win32":
            self.outName = "Compiler32.exe"
            self.osCmd = "win32con"
        elif self.osTarget == "win64":
            self.outName = "Compiler.exe"
            self.osCmd = "win64con"
        self._Build()

    def _Build(self):
        cmd = f"{self.nameCompiler} ./source/Compiler.ob07 {self.osCmd} -out ./source/{self.outName} -stk 2"
        os.system(cmd)
        os.system("sleep 1")


def main():
    '''
       Main procedure to run build.
    '''
    global osName, osTarget
    builder=clsBuilder()
    builder.Run()


if __name__ == "__main__":
    main()
