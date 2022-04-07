echo off
:: This command change your directory location
cd directory
for %%f in (*.txt) do ren *.txt *. && ren * *_doc.txt
