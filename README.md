# Complete font patch fot ubuntu 

## dependencies 

you can run following command to install dependencies:  

```bash 
sudo apt-get install fontforge python3-fontforge
pip3 install fonttools Pillow
```

## how to use 

after installing dependencies, you can patch font by following steps:

- put your font file in `origin` folder, .otf and .ttf files are supported.  
- then you can run:  

```bash 
chmod +x ./run.sh 
```

to make script executable. 

- finally you can run it:  

```bash 
./run.sh 
```
and  you will get patched font in `Nerd` folder.




