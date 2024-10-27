**Autor :** *MEKA Moise Christian Junior*\
**Email :** [*moisechristianjunior464\@gmail.com*](mailto:moisechristianjunior464@gmail.com)\
**Institution :** *National Public Health Laboratory - Cameroon*

------------------------------------------------------------------------

## 1- Premiers pas à l'utilisation de AWK

AWK est un langage de script qui peut etre utilise en CLI ou dans un script. Le langage AWK est très utilisé dans la manipulation des tableaux de données sous format texte (.csv, .tsv, .txt).\

Pour ce qui est de la manipulation des tableaux en CLI la syntaxe est :

```bash
cat monfichier.txt | awk '{<Liste instructions>}'
```

Exemple :

```bash
#Commende pour afficher le contenu de la 6ieme colonne du fichier scrapping_data.csv. 
#Noter que le séparateur par défaut de AWK est la tabulation. Et si vous souhaitez changer le séparateur. 
#Utilisez le flag -F "<sepatateur>" 
cat scrapping_data.csv | awk -F "," '{print $6}'
```

Sur AWK les champs sont accessible via \$#

Exemple :\

-   `$1` = champ 1

-   `$2` = champ 2

-   ...

-   `$0` = tous les champs

Pour ce qui est de l'utilisation dans les scripts. Le **-f** ici permet de spécifier que le code AWK est dans un fichier.

```bash
#!/usr/bin/awk -f
BEGIN{
print "Hello World !\nThis is my first AWK script"
}
```

**NB :**Mais si on utilise ensemble les commandes bash et celle de AWK il faut spécifier que l'executable est bash :

Exemple :

```bash
#!/bin/bash

#This script count the number of male and female

tail -n+2 data/ObesityDataSet.csv | awk -F "," '
BEGIN {nb_male=0; nb_female=0};
{if($1=="Male") nb_male+=1; else if($1 == "Female") nb_female+=1};
END {print "-> Number of male : "nb_male"\n-> Number of female : "nb_female; if(nb_male>0) print "\n-> Sexe Ratio : "nb_female/nb_male

```

## 2- Numérisation NF, NR, END, BEGIN

AWK nous fourni un ensemble de variables prédefinies :

-   NR : retourne le numéro de chaque ligne

```bash
cat scrapping_data.csv | awk -F "," '{print NR" :  "$1}' 
```

-   NF : retourne le nombre de chaque champs de chaque ligne

```bash
cat scrapping_data.csv | awk -F "," '{print NF" :  "$1}'
```

-   END : pour executer la commande finale de AWK. Il correspond au footer.
-   BEGIN : Pour définir des variables ou les valeurs initiales des variables. Il correspond au header.

```bash
#Commande pour affichier le nombre de ligne ayant plus de 7 champs en séparateur par la virgule
cat scrapping_data.csv | awk -F "," 'BEGIN{n=0} {if (NF > 7) n++} END{print n} '
```

## 3- Recherche avec AWK et notion de pattern

-   /<pattern>/ : pour spécifier le pattern
-   ! : pour inverser le pattern
-   length() : Pour afficher le nombre de caractères

La syntaxe est la suivante :

```bash
#Executer une liste d'instructions sur des lignes qui contiennent un pattern
awk '/<pattern cherché>/ {<Liste instructions}'

#Executer une liste d'instructions sur des lignes qui ne contiennent pas un pattern
awk '!/<pattern cherché>/ {<Liste instructions}'

#Calculer la longueur d'une chaine
length(<chaine>) 
```

Exemple :

```bash
cat scrapping_data.csv| awk -F "," '
BEGIN {print "\nListe des lignes ne contenant pas le mot 'saga'"};
!/saga/ {print NR" : "length($0)}'
```
**NB :** La recherche peut être faites sur des champs en particulier en spécifiant la champs de la manière suivante `$<champ_id> ~ /<pattern>/`. 

## 4- Fonction gsub()

La fonction `gsub()` de awk permet d'effectuer des substitudion dans un fichier.\
La syntaxe est la suivante :

```bash
gsub(<pattern cherché>, <valeur finale>, <champs de recherche du pattern>)
```

Exemple :

```bash
$ cat scrapping_data.csv| awk -F "," '
BEGIN {print "\nListe des lignes ne contenant pas le mot 'saga'"};
gsub("[S-s]+aga", "Baba", $1) {print NR" : "$1}'
```

Il est possible d'utiliser des expressions régulières dans le pattern recherché.

## 5- If comditions dans AWK

La syntaxe de If condition est la suivante :

```bash
if(condition) action1; [else if(condition) action2; else action3]

```

Les `[...]` indique l'element a l'intérieur n'est pas obligatoire

Exemple :

```bash

$ tail -n+2 data/ObesityDataSet.csv | awk -F "," '
BEGIN {nb_male=0; nb_female=0};
{if($1=="Male") nb_male+=1; else if($1 == "Female") nb_female+=1};
END {print "-> Number of male : "nb_male"\n-> Number of female : "nb_female; if(nb_male>0) print "\n-> Sexe Ratio : "nb_female/nb_male}'   

```

## 6- Les fonctions match et substr

La fonction `match()` est utilisé pour capturer un pattern dans un champ et la fonction `substr()` extraire les données dans un champs.\
Les syntaxes sont les suivantes :\

```bash
match(<champs>, /<pattern>/)
substr(<champ, RSTART, RLENGTH>)
```

Les variables `RSTART` et `RLENGTH` les valeurs de debut du match et la longueur dy match respectivement.

Exemple :

```bash
#Commande pour extraire les adresses ip contenue dans les resultats de 'ifconfig'
 $ ifconfig | awk 'match($0, /[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}/) {print substr($0, RSTART, RLENGTH)}'
```

## 7- Les variables dans AWK

Les variables dans AWK ne sont déclaré au moment de leur utilisation

Exemple : 
```bash
$ awk 'BEGIN{var=10; print var*10}'
```

## 8- Les boucles for, while et do ... while

Comme dans tous les langages de programmation, on retrouve les boucles comme la boucle `for` et `while`. Nous allons dans cette section présenter les syntaxes de ces différentes structures itératives.

### 8.1- Boucle For

La boucle `for` a deux syntaxe :
- Premiere syntaxe :

```bash
for(<initialisation>;<condtion arret>;<incrementation>){
    <liste instructions> 
}
```

Exemple :

```bash
awk 'BEGIN{var=2; for(i=0;i<=10;i++){print i"*"var"="i*var}}'
```

- Seconde syntaxe :
```bash
for(<variable> in <liste>){
    <liste instructions> 
}
```

Exemple :

```bash
#Script pour afficher la distribution des districts de santé par région au Cameroun
tail -n+2  Bash\ Linux/io_script/region_ds.csv | awk -F "," 'BEGIN{printt "Nombre de district par region"}
{regions[$2]+=1} END{for(region in regions){print region","regions[region]}}'
```

### 8.2- Boucle While

Dans AWK la syntaxe de `while` est la suivante : 
```bash
while(<condition>){
    <liste instrictions>
}
```
Exemple :

```bash
awk 'BEGIN{i=0; var=2; while(i<=10){print i"*"var"="i*var; i++}}'
```

### 8.3- Boucle do ... while

la syntaxe de `do ... while` est la suivante : 
```bash
do{
    <liste instructions>
}
while(<condition>)
```
Exemple :

```bash
awk 'BEGIN{i=0; var=2; do{print i"*"var"="i*var; i++}while(i<=10)}'
```

**NB :** Dans les boucles on peut appliquer les actions `break` et `continue` comme dans les autres langages de programmation.

## 9- les tableaux dans AWK

Les tableaux sont des variables contenant une serie de valeurs et chaque valeur est accéssible par in index qui peut etre numérique ou pas.

Exemple :
```bash
#pour affichier la distribution des données suivant le sexe 
$ tail -n+2 data/ObesityDataSet.csv | awk -F "," '
{tab[$1]+=1} END{for(idx in tab){print idx" : "tab[idx]}}'

#age moyen suivant le sexe
$ tail -n+2 data/ObesityDataSet.csv | awk -F "," 'BEGIN{print "Sexe : mean-age (count)"}
{age[$1]+=$2; nb[$1]+=1} END{for(idx in age){print idx" : "age[idx]/nb[idx]" ("nb[idx]")"}}'
```

## 10- La fonction split()

La fonction `split()` permet comme son nom l'indique, de splitter les élement suivant un délimiteur et stocker les resultats dans un tableau.\
La syntaxe est la suivante :

```bash
split(<element a splitter>, <tableau resultat>, <delimiteur>)
```

Exemple :

```bash
awk 'BEGIN{split("MEKA aime programmer en AWK", res, " "); for(idx in res) print res[idx]}'
```
Noter que `split()` ne retourne pas les valeurs dans le même ordre. 

## 11- La commande next dans AWK

La commande `next` permet de passer la la ligne suivante. Il fonctionne de la manière suivante : `IF(condition) next ELSE instruction` et utilise les outils de recherche.\
La syntaxe de `next` est la suivante :

```bash
awk '/<pattern>/ {next}{<liste instruction sinon>}
```
**NB :** Les principes de recherche ci dessus peuvent être utilisé ici.

## 12- Utilisation des variables bash dans AWK 

Pour utiliser les variables shell dans AWK on utilise le flag `-v` pour affecter la valeur de la variable shell dans le script AWK. 

Exemple :

```bash
jour=$(date +%d/%m/%Y)
heure=$(date +%Hh%M)
awk -v var_awk1="$jour" -v var_awk2="$heure" 'BEGIN{print "Aujourdhui cest "var_awk1" et il est "var_awk2}'
```

# 13- Bonus : Suppression des doublons avec AWK

Dans cette section nous allons creer deux scripts :
- Le premier permettra de verifier s'il y a des doublons dans un fichiers (Ligne dupliquées)
```bash
cat data/crx.data.txt | awk -F "," 'BEGIN{print "count;line"}{tab[$0]+=1}END{for(i in tab){if(tab[i]>1) print tab[i]";"i}}'
```

- Le second permettra de supprimer ces doublons :
```bash
cat data/crx.data.txt | awk -F "," '{tab[$0]+=1}END{for(i in tab){print i}}' > data/clean.crx.data.txt 
```

------------------------------
Pour plus de details sur AWK veillez executer la commande :
```bash 
$ man awk
```