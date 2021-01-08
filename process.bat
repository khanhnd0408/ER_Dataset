git checkout -b %1
ping 127.0.0.1 -n 2 > nul
move C:\Users\TLnet\Desktop\%2\*.xml C:\Users\TLnet\Desktop\ER_Dataset\
ping 127.0.0.1 -n 2 > nul
git add .
ping 127.0.0.1 -n 2 > nul
git commit -m "done"
ping 127.0.0.1 -n 2 > nul
git push origin %1
ping 127.0.0.1 -n 10 > nul
git checkout main
ping 127.0.0.1 -n 2 > nul
RMDIR /Q C:\Users\TLnet\Desktop\ER_Dataset\%2
ping 127.0.0.1 -n 2 > nul