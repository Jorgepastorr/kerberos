#!/usr/bin/python3

import argparse, os

parser = argparse.ArgumentParser(description=\
    "programa de procesar las opciones de arranque", prog="startup.py")
group = parser.add_mutually_exclusive_group()
group.add_argument('--initdb', action='store_true', help='inicia base la de datos')
group.add_argument('--initdbedt', action='store_true', help='inicia la base de datos con los users por defecto')
group.add_argument('--kadmin', nargs=1, help='ejecuta la orden kadmin', metavar="'option [arg]...'")

args=parser.parse_args()

print(args)
if args.kadmin:
    print(args.kadmin)
