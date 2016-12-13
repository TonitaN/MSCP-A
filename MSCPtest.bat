: Запуск MSCP %1 %2, где
: %1 -- имя преобразуемой рефал-программы
: %2 -- имя файла, куда записывается дерево развертки преобразованной программы

refc Unfold_SCP
refc basics
refc Drive
refc Stack
refc Generalize
refc WordEquations
refc WordEqsCases
refc DiofEqs
refc residual
copy /Y %1 test.ref 
reftr prefal+Generalize+Unfold_SCP+Drive+Stack+residual+basics+DiofEqs+WordEquations+WordEqsCases>%2.rsd -l64