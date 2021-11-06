import requests
print("""\
  __  __   _   ___  __   __           _         
 |  \/  | /_\ / __| \ \ / /__ _ _  __| |___ _ _ 
 | |\/| |/ _ \ (__   \ V / -_) ' \/ _` / _ \ '_|
 |_|  |_/_/ \_\___|   \_/\___|_||_\__,_\___/_|  

	Created by Mugi Fadilah""")
url = "https://api.macvendors.com/"
print("-"*49)
print ("1. Manual")
print ("2. Mass")
print ("3. Quit")
choice = input('>>> ')
choice = int(choice)
if choice == 1:
  mac = input(" Masukkan mac address : ").replace(":", "-")
  resp = requests.get(url + mac)
  print("="*21+" Hasil "+"="*21)
  print(" "+resp.text)
  print("="*21+" ----- "+"="*21)
elif choice == 2:
  buka = input(" Masukan nama file : ")
  with open(buka, "r") as file:
    print("="*21+" Hasil "+"="*21)
    for line in file:
      ubah = line.replace(":", "-")
      resp = requests.get(url + ubah)
      print(" "+line+" "+resp.text)
      print("-"*30)
    else:
      print("="*21+" ----- "+"="*21)
elif choice == 3:
  exit()
else:
        print ("Salah pencet, silahkan ulangi lagi...")
