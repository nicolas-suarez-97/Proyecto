#! /usr/bin/env python
#  -*- coding: utf-8 -*-
#
# Support module generated by PAGE version 4.13
# In conjunction with Tcl version 8.6
#    May 12, 2018 12:42:51 PM


import sys

try:
    from Tkinter import *
except ImportError:
    from tkinter import *

try:
    import ttk
    py3 = False
except ImportError:
    import tkinter.ttk as ttk
    py3 = True
def set_Tk_var():
    global entry2
    entry2 = StringVar()
    global combobox
    combobox = StringVar()
    global entry1
    entry1 = StringVar()
    global precio
    precio = StringVar()
    global prod
    prod = StringVar()

def calcular():
    print('proyecto_support.calcular')
    sys.stdout.flush()
    precio.set(int(entry1.get())*int(entry2.get()))

def graficar():
    print('proyecto_support.graficar')
    sys.stdout.flush()
    img = PhotoImage(file="./x.gif")
    w.Label11.configure(image=img)
    w.Label11.image=img

def init(top, gui, *args, **kwargs):
    global w, top_level, root
    w = gui
    top_level = top
    root = top

def destroy_window():
    # Function which closes the window.
    global top_level
    top_level.destroy()
    top_level = None

if __name__ == '__main__':
    import proyecto
    proyecto.vp_start_gui()




