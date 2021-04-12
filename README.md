## Installing on Ubuntu 20.04.xx (tested on Ubuntu 20.04.02)


### Install curl:
`sudo apt install -y curl`

### When you run the following script, you'll be downloading these packages:
- git
- git-lfs
- default-jdk & default-jre
- vim
- pip3
- numpy, scipy, sympy, matplotlib, pandas, seaborn, scikit-learn, opencv-python & tensorflow
- google chrome
- VS code

`sh -c "$(curl -fsSL https://raw.githubusercontent.com/NicolasQueiroga/Ubuntu-Install/main/scripts/initial_download.sh)"`




### To install Eclipse:
#### Clink on the link bellow, and save it on ~/Downloads/:
<link>https://www.eclipse.org/downloads/download.php?file=/oomph/epp/2021-03/R/eclipse-inst-jre-linux64.tar.gz&mirror_id=576</link>

#### Run the following script:

`sh -c "$(curl -fsSL https://raw.githubusercontent.com/NicolasQueiroga/Ubuntu-Install/main/scripts/eclipse_download.sh)"`




### To install QuartusLite and Modelsim:
#### Clink on the links bellow, and save them on ~/Downloads/:

- QuartusLite:
  <link>http://download.altera.com/akdlm/software/acdsinst/20.1std/711/ib_installers/QuartusLiteSetup-20.1.0.711-linux.run</link>


- Modelsim:
  <link>http://download.altera.com/akdlm/software/acdsinst/20.1std/711/ib_installers/ModelSimSetup-20.1.0.711-linux.run</link>


- Cyclone V:
  <link>http://download.altera.com/akdlm/software/acdsinst/20.1std/711/ib_installers/cyclonev-20.1.0.711.qdz</link>
  

#### Run the following lines on a new terminal:
```
cd ~/Downloads
chmod +x QuartusLiteSetup-20.1.0.711-linux.run
```

Run and install as default:

`./QuartusLiteSetup-20.1.0.711-linux.run`

Run the following script to enable modelsim:


`sh -c "$(curl -fsSL https://raw.githubusercontent.com/NicolasQueiroga/Ubuntu-Install/main/scripts/enable_modelsim.sh)"`




### Enable triger "quartus" & "vsim":
#### Edit .bashrc:
`gedit ~/.bashrc`

#### Add following lines to the end of .bashrc:
```
export LD_LIBRARY_PATH=$HOME/intelFPGA_lite/20.1/modelsim_ase/lib32
export ALTERAPATH=$HOME/intelFPGA_lite/20.1
export PATH=$PATH:${ALTERAPATH}/quartus/bin
export PATH=$PATH:${ALTERAPATH}/modelsim_ase/linuxaloem/
export PATH=$PATH:${ALTERAPATH}/modelsim_ase/lib32
export VUNIT_MODELSIM_PATH=${ALTERAPATH}/modelsim_ase/linuxaloem/
export VUNIT_SIMULATOR=modelsim
export QSYS_ROOTDIR="$HOME/intelFPGA_lite/20.1/quartus/sopc_builder/bin"
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:${ALTERAPATH}/modelsim_ase/lib32
```


### Reboot:
`sudo reboot`

### Test trigers:
#### Run on different terminal:
`quartus`

`vsim`


## Referencias:
- <link>https://vhdlwhiz.com/modelsim-quartus-prime-lite-ubuntu-20-04</link>
