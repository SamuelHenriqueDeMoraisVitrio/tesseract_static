import subprocess
import os
os.system("rm -rf tesseract")
os.system("mkdir -p tesseract/lib")
os.system("cp run.sh tesseract/tesseract" )
tesseract_path =  subprocess.run("which tesseract", shell=True, capture_output=True, text=True).stdout
tesseract_path =  tesseract_path.strip()

os.system(f"cp {tesseract_path} tesseract/tesseract_bin")
tesseract_dependenciess = subprocess.run(f"ldd {tesseract_path}",shell=True, capture_output=True, text=True).stdout
tesseract_dependenciess = tesseract_dependenciess.strip()
lines = tesseract_dependenciess.split("\n")


for l in lines:
    separated = l.split("=>")
    if len(separated) == 1:
        continue
    target = separated[1]
    final = target.split(" ")[1]
    os.system(f"sudo cp  {final} tesseract/lib")
