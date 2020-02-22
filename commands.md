Install deps:
```
virtualenv -p python3 ENV
. ENV/bin/activate

pip install -r requirements.txt
pip install -r unix/requirements.txt
pip install -r testing/requirements.txt
pip install -r cli/requirements.txt
pip install -r external/ckcc-protocol/requirements.txt
pip install -e external/ckcc-protocol/
```

Build and start emulator:
```
cd unix/
make setup && make
./simulator.py &
ckcc -x version
```

Start CLI:
```
./simulator.py -q
```

Rebuild before re-launching:
```
(cd unix; make && ./simulator.py &)
ckcc -x addr -p "m/44'/0'/0'/0/0"
```
