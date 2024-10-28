**Autor :** *MEKA Moise Christian Junior*\
**Email :** [*moisechristianjunior464\@gmail.com*](mailto:moisechristianjunior464@gmail.com)\
**Institution :** *National Public Health Laboratory - Cameroon*

------------------------------------------------------------------------

# 0. Introduction

-   `man <command>` : pour afficher le manuel de `<command>`
-   `<command> --help` : Pour afficher l'aide de `<command>`
-   `<command> -h` : Similaire a `<command> --help`
-   `whoami` : Pour afficher le nom d'utilisateur
-   `pwd` : Pour afficher le chemin vers le dossier courant
-   `sudo su` : Se connecter en mode super utilisateur sur son terminal
-   `ifconfig` : Pour la configuration reseau
-   `source ~/.bashrc` : Pour reinitialiser le terminal
-   `#!/bin/bash` : Decorateur pour signaler qu'il s'agit d'un script bash
-   `#!/path/to/prog` : Decorateur pour dire que le script est execute par un programme `prog`
-   `whatis [comman]` : Description d'une commande en une ligne
-   `du -s dir` : Pour afficher la taille du repertoire `dir`. En absence de `-s` la commande va afficher de facon recursive les tailles des elements et sous elements de `dir`. En ajoutant le parametre `-h` on affiche en format facilement comprehensible par l'homme.
-   `df -h` : Affiche l'espace disque utilise, restant et le pourcentage utilisation dans un format facilement comprehensible par l'homme.
-   Les commandes `htop` et `top` affiche les statistiques d'utilisation des ressources de la machine.
-   `basename /path/to/file` retourne le fichier sans son chemin
-   `dirname /path/to/file` retourne le chemin vers le dossier contenant le fichier

## 0.1 Deplacer dans le terminal

-   `cd <path>` : pour se deplacer vers `path`
-   `cd ~` : pour aller dans le dossier utilisateur
-   `cd /` : Pour se deplacer vers la racine
-   `cd`: Equivalent de `cd ~`
-   `cd ..` : Aller vers le repertoire parent
-   `cd -` : Aller vers le repertoire precedent (Dans mes navigations)

## 0.2 Lister les elements d'un dossier

-   `ls` : Pour lister les elements d'un repertoire
-   `ls -a` : Pour tout afficher on peut aussi utiliser `la`
-   `ls -l` : Equivalent de `ll` qui affiche en list
-   `ls -la` : Pour afficher tout en list
-   `ls -1` : Pour afficher en une ligne
-   `ls -1F` : Pour afficher les elements sur une ligne en specifiant s'ils sont des dossiers, fichiers.

## 0.3 Supprimer les elements

-   `rm` : supprimer un fichier
-   `rm -r` : supprimer un dossier recursivement
-   `rmdir` : Supprimer un dossier vide
-   `rmdir -p <path>` : pour supprimer un dossier vide et tous ses paraents qui sont aussi vide

## 0.4 Editer de fichiers et dossiers et traitement de texte

-   `mkdir <dir>` : Pour creer le dossier `dir`
-   `mkdir -p <a/b/c>` : Pour creer successivement `a`, `a/b` et `a/b/c` s'il n'existent pas sans generer d'erreurs
-   `touch <file>` : Pour creer le fichier `file`
-   `nano <file>` : Pour creer et editer le fichier `file` avec **nano**
-   `gedit <file>` : pareil que nano mais avec **gedit**
-   `vim <file>` : Pareil que nano mais avec **vim**
-   `less <file>` : pour parcourir le fichier `file`
-   `more <file>` : Pareil que less, mais affichage different
-   `cat <file>` : Afficher le contenu du fichier `file`
-   `head -nX <file>` : Afficher les X premieres lignes du fichier `file`
-   `tail -nX <file>` : Afficher les X dernieres lignes du fichier `file`
-   `head -n-X <file>` : Afficher tout le fichier `file` sauf les `X` dernieres lignes
-   `tail -n+X <file>` : Afficher tout le fichier `file` sauf les `X` premieres lignes
-   `grep 'pattern' <file>` : Rechercher un `patern` dans un fichier `file`
-   `find <dir> -name 'file pattern'` : Pour rechercher tous les fichier dont le patern est `file patern` se trouvant dans `dir` et ses sous repertoires
-   `find <dir> -regex 'regular expression'` : Pour rechercher un element suivant une expression reguliere
-   `wc file` : Pour afficher le nombre de ligne, de mots et de caracteres dans un fichier. On peut utiliser les parametres `-c`, `-m`, `-l` respectivement pour afficher le nomnre de caracteres, mots et lignes dans le fichier.
-   `sed 's/prec/new/g' file` : Pour remplacer toutes les occurences de `prec` par `new` dans `file`. On peut ajouter le parametre `-i` pour persister les modifications dans `file` ou alors rediriger le resultat vers un nouveau fichier avec `>`.
-   `sed '/motif/d' file` : Pour supprimer toutes les lignes ou on a au moins une occurence du `motif` dans `file`.
-   `sed '/cat/!d' story.txt` : Va supprimer chaque ligne ne contenant pas `cat`.

## 0.5 Copier et deplacer des ellements

-   `cp <path1/file> <path2/.>` : Pour copier le fichier `file` de `path1` et le coller dans `path2`
-   `mv <path1/file> <path2/.>` : Pour couper le fichier `file` de `path1` et le coller dans `path2`
-   `cp <file1> <file2>` : Pour dupliquer le fichier `file1` en un second fichier `file2`
-   `mv <file1> <file2>` : Pour renommer le fichier `file1` en `file2`

## 0.6 Gestion des droits (Ecriture, Lecture et execution) sur les fichiers

1.  `chmod 'droit' <file>`: Pour changer les droits sur un fichier a un proprietaire, un groupe ou un autre utilisateur

**NB :** : Lorsque vous faite ls -l vous verrez des symboles `rwxrw-r--` par exemple sur des fichiers.\
Ces symboles se lisent en groupe de 3 et correspondent a r (read), w (write) et x (execute) : - Le permier groupe de 3 caracteres sont les droits du **proprietaire** - Le second groupe de 3 caracteres sont les droits du **groupe** - Les 3 derniers caracteres sont les droits des **autres utilisateurs**\
Lorsque l'on veut par exemple ajouter les drois au proprietaire on fait `chmod u+rwx <file>` cela ajoutera rwx aux droits du proprietaire sur le fichier.\
Lorsque l'on veut par exemple retirer les drois d'execution au proprietaire on fait `chmod u-x <file>`.\
On peut remplacer `u` dans la commande precedente par `g` pour les droits des groupes ou par `a` pour les drois de tout le monde.\
Il existe une seconde facon d'ajouter/enlever les droits en utilisant des code binaires  consideron le code binaire a 3 bit suivant :
- 000=0 : `-rwx` 
- 001=1 : `+x` 
- 010=2 : `+w` 
- 011=3 : `+wr` 
- 100=4 : `+r` 
- 101=5 : `+rx` 
- 110=6 : `+rw` 
- 111=7 : `+rwx`

Donc si on veut ajouter des droits on fera un code a 3 chiffer allant de 0 a 7\
Par exemple `chmod 750 <file>` sera equivalent a `rwxr-x---` pour le fichier ou : 
- `7` correspond aux droits du proprietaire 
- `5` correspond aux droits du groupe 
- `0` correspond aux droits des autres

2.  `chgrp <group_name> <file|dir>` Pour changer le groupe d'un fichier ou d'un dossier
3.  `chown <uaser_name> <file|dir>` Pour changer l'utilisateur d'un fichier ou un dossier

## 0.7 Rediriger le resulatat d'une commande

La commande `[command] > [file]` enregistre le resultat d'une commande dans un fichier. Exemple `ll my_dir/ > my_dir_content.txt` qui va stocker le contenu de `my_dir` dans le fichier `my_dir_content.txt`.\
L'inconveniant ici c'est qu'il fait juste un read du fichier et donc n'ajoute pas les resultats a un precedent enregistrement.\
On utilise donc la commande `<command> >> <file>` pour ajouter du contenu. Par exemple `fastqc file.fq >> fastqc.log` - `[command] 1> [file]` : Pour rediriger tous les stdout dans un fichier
- `[command] 2> [file]` : Pour rediriger tous les stderror dans un fichier

## 0.8 Combiner les commandes

Pour combiner les commandes de sorte a utiliser le resultat de l'une comme entree de l'autre on utilise le pipe `|`\
**Exemple :** `cat file.csv | cut -d, -f1 | sort | uniq` pour afficher de maniere unique les elements de la premiere colonne du fichier csv `file.csv` delimiteur virgule `,`. On voit ici trois nouvelle commande `cut`, `sort` et `uniq`.\
En inspectant les manuels de ces commandes on constate que : 
- `cut` : permet de decouper le contenu d'un fichier ou de son entre suivant un delimiteur. Le delimiteur par defaut est la tabulation. Le parametre `-f` ici permet de specifier les colonnes prises en comptes (`cut file.csv -d, -f1,5` pour selectionner la premiere et la cinquieme colonne). 
- `sort` : Permet de trier les element d'une liste (`ls -lh | sort -hk 5` ou ici j'affiche sous forme de liste avec des valeurs numerique converti pour faciliter la lecture humaine avec `ls -lh` puis je trie les resultats precedent suivent les grandeur numerique humaine `-h` se trouvant dans la 5ieme colonne du precedent resultat `k 5` avec `sort -hk 5`) 
- `uniq` : Pour afficher les elements de maniere unique. Il possede les parametres tres utiles `-c` qui compte les sorties et `-i` pour ignorer la casse.

## 0.9 Les jointure

La commande `join` permet de faire la jointure entre 2 fichiers.

La syntaxe est simple `join -t'<delimitor>' file1 -1 X1 file2 -2 X2` ici on veut joindre deux fichier `file1` et `file2` separe par un `delimiteur` ou les colonnes de jointure sont respectivement `X1` et `X2` pour le `file1` et `file2`.

**Exemple :**

``` bash
join -t ',' region.csv -1 1 district_sante.csv -2 3 > region_ds.csv
```

Ici on veut joindre les donnees des regions avec ceux des districts de sante. La colonne de jointure entre region et district est `1` chez `region.csv` et `3` chez `district_sante.csv`\
Une commande basique de jointure est `join file1 file2` ici le delimiteur est l'espace et les colonnes de jointures sont `1` par tout. C'est equivalent a :

``` bash
join -t ' ' file1 -1 1 file2 -2 1
```

## 0.10 Entres et sorties dans le terminal

-   `echo 'text'` : Pour afficher le texte `text` sur le terminal
-   `echo -e 'text'` : Pour interpreter les caratere speciaux telques `\t` `\n` etc.
-   `echo $(( operation ))` : Pour afficher une operation mathematique.
-   `read variables` : Pour entrer la valeur au clavier et stocker dans `variables`
-   `read -p 'texte' variables` : Pour afficher un message `texte` puis en suite lire la valeur entree au clavier et stocker dans `variables`. Ici on peut avoir plusieurs variables.

**Exemple :**

``` bash
$ echo "Hello World"

$ echo -e 'Ceci est un ligne\nVoici la seconde avec une \t tabulation'

$ echo 'Entrer votre age :'

$ read age 

$ read -p 'entrer votre annee de naissance : ' annee

$ echo "votre age en 2024 est : $((2024 - annee))"
```

**NB :** lorsqu'on utilise les simples quotes `' '` le texte a l'interieur n'est pas interpreter par echo. Mais lorsque l'on utilise les doubles quotes `" "` le texte est interprete par echo.

## 0.11 Operation matematiques

Dans bash nous avons toutes les operations arithmetiques et logique utilise dans les langages de programmation.\
Consulter le [lien](https://calendar.google.com/calendar/u/0/r/eventedit?vcon=meet&dates=now&hl=fr&pli=1) pour plus de details.

## 0.12 Expressions régulières

Les expressions régulières aident à définir des mots de recherche précis, comme extraire uniquement des caractères alphabétiques ou des nombres, correspondance avec début de ligne, fin de ligne, séquences de caractères, etc. Les références suivantes sont pour **ERE (Extended Regular Expressions)**.

``` bash
$ grep -E '<Regex>' <file> #Pour realiser une recherche avec expression reguliere 
```

### 0.12.1 Ancres

-   `^` correspondance avec le début de ligne ;
-   `$` correspondance avec la fin de ligne ;
-   `\<` correspondance avec le début de mot ;
-   `\>` correspondance avec la fin de mot ;
-   `\b` correspondance avec la limite de mot ;
-   `\B` inverse de `\b`.

### 0.12.2 Quantificateurs de caractères

-   `.` correspond à tout caractère simple ;
-   `*` correspond au caractère précédent 0 fois ou plus ;
-   `+` correspond au caractère précédent 1 fois ou plus ;
-   `?` correspond au caractère précédent 0 ou 1 fois ;
-   `{n}` correspond au caractère précédent exactement n fois ;
-   `{n,}` correspond au caractère précédent n fois ou plus ;
-   `{n,m}` correspond au caractère précédent de n à m fois (inclus n et m) ;
-   `{,m}` correspond au caractère précédent jusqu’à n fois ;

### 0.12.3 Classes de caractères :

-   `[aeiou]` correspond à n’importe lequel de ces caractères ;
-   `[^aeiou]` ne correspond à aucun de ces caractères ;
-   `[a-z]` correspond à n’importe quel caractère de l’alphabet ;
-   `[0-9]` correspond à n’importe quel caractère numérique ;
-   `\w` correspond à tout caractère, alphanumérique, et au caractère underscore, raccourci pour `[a-zA-Z0-9_]` ;
-   `\W` opposé à \w , raccourci pour `[^a-zA-Z0-9_]` ;
-   `\s` correspond aux caractères invisibles: tabulation, retour chariot, tabulation verticale, espace ;
-   `\S` inverse de \s.

### 0.12.4 Groupes de modèles :

-   `|` correspond à l’un des modèles donnés ;
-   `()` les motifs entre `()` sont regroupés et traités comme un seul motif, utile en conjonction avec `|` ;
-   `\1` référence arrière au premier motif groupé dans () ;
-   `\2` référence arrière au second motif groupé dans (), etc.

**Exemples :**

``` bash
$ grep -i '[a-z]' report.log #imprime toutes les lignes ayant au moins un caractère alphabétique 
$ grep '[0-9]' report.log #imprime toutes les lignes ayant au moins un caractère numérique 
$ grep 'area\|power' report.log #correspond aux lignes contenant « area » ou « power » 
$ grep -E 'area|power' report.log #correspond aux lignes contenant « area » ou « power » 
$ grep -E 'hand(y|ful)' short_story.txt #correspond à « handy » ou « handful « 
$ grep -E '(Th)?is' short_story.txt #correspond à « This » ou « is »
$ grep -iE '([a-z])\1' short_story.txt #correspond aux mêmes caractères alphabétiques apparaissant de façon consécutive comme « aa », « FF », « Ee », etc.
$ ifconfig | grep -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' #pour afficher toutes les adresses IP de ifconfig.
```

# 1. Structures conditionnelles

**Note :** Les simples `;` dans la suite correspond a un retour a la ligne. Tandis que les doubles `;;` sont requis.

## 1.1 IF (condition) FI

-   En ligne de commande :

Une premiere syntaxe est :

``` bash
$ if (( <condition> )); then instructions ; fi
```

**exemple :**

``` bash
$ if (( 10>5 )); then echo $(( 10*5)); fi
```

Une deuxieme syntaxe est :

``` bash
$ if [ <condition> ] ; then  instruction  ; fi
```

**exemple :**

``` bash
$ if [ 10 -gt 5 ]; then  echo $(( 10*5 )) ; fi
```

-   Dans un sciprt :

``` bash
if (( condition ))
then
    Instructions
fi
```

<br>

**Exemple :**

``` bash
if [ 10 -gt 5 ]
then 
    echo $(( 10*5 ))  
fi
```

## 1.2 IF (condition) ELSE FI

-   En ligne de commande :

Une premiere syntaxe est :

``` bash
$ if (( condition )); then instructions ; else instructions; fi
```

**exemple :**

``` bash
$ if (( 10>5 )); then echo $(( 10*5)); else echo $(( 10/5)) ; fi
```

Une deuxieme syntaxe est :

``` bash
$ if [ <condition> ] ; then  instruction  ; else instruction; fi
```

**exemple :**

``` bash
$ if [ 10 -gt 5 ]; then  echo $(( 10*5 )); else echo $((10/5)) ; fi
```

-   Dans un sciprt :

``` bash
if (( <condition> ))
then
    Instructions
else
    Instructions
fi
```

</br>

**Exemple :**

``` bash
if [ 10 -gt 5 ]
then  
    echo $(( 10*5 ))    
else 
    echo $((10/5))
fi
```

## 1.3 IF (condition) ELIF (condition) ELSE FI

-   En ligne de commande :

Une premiere syntaxe est :

``` bash
$ if (( <condition> )); then instructions ; elif (( condition )); then instruction; else instructions; fi
```

**exemple :**

``` bash
$ if (( 10>5 )); then echo $(( 10*5 )); elif (( 10==5 )); then echo $(( 5 )); else echo $(( 10/5)); fi
```

Une deuxieme syntaxe est :

``` bash
$ if [ <condition1> ] ; then  instruction  ; elif [ <condition2> ]; then instruction; else instruction; fi
```

**exemple :**

``` bash
$ if [ 10>5 ]; then echo $(( 10*5 )); elif [ 10==5 ]; then echo $[ 5 ]; else echo $(( 10/5)); fi
```

-   Dans un sciprt :

``` bash
if (( condition1 ))
then
    Instructions
elif (( condition2 ))
    Instructions
else
    Instructions
fi
```

<br>

**Exemple :**

``` bash
#!/bin/bash

if [ 10>5 ] 
then
    echo $(( 10*5 )) 
elif [ 10==5 ]
    then echo $[ 5 ] 
else 
    echo $(( 10/5)) 
fi
```

## 1.4 Les CASE

-   En ligne de commande :

``` bash
$ case $var in val1) instruction1 ; ;; val2) instruction2 ; ;; *) <instruction pour valeur par defaut> ; ;; esac
```

**exemple :**

``` bash
$ declare -i a=8
$ case $a in  10) echo "10"; ;; 11) echo "11"; ;; 12) echo "12"; ;; *) echo "default"; ;; esac
```

-   Dans un script

``` bash
case var in
    val1)
        instructions1
        ;;
    val2)
        instructions2
        ;;
    ...
    valN)
        instructionsN
        ;;
    *)
        instructions par defaut
        ;;
esac
```

</br>

**Exemple :**

``` bash
#!/bin/bash

case $a in  
    10) 
        echo "10" 
        ;; 
    11) 
        echo "11"
        ;; 
    12) 
        echo "12"
        ;; 
    *) 
        echo "default" 
        ;; 
esac
```

# 2. Structures Interatives

## 2.1. Bouche For

La syntaxe de la boucle `for` est la suivante 
```bash
for <variable> in <liste valeurs>
do 
 <liste instructions>
done
```

Exemple :

```bash
var=5
for item in $(seq 1 10)
do 
 echo $((item*var))
done
```

## 2.2. Commande seq

En inspectant le manuel de `seq` on notre trois points importants :

-   `seq N` : Retourne une liste d'element de `1` a `N` par pas de `1`
-   `seq P D` : Retourne une liste d'element de `P` a `N` par pas de `1`
-   `seq Debut Pas Fin` : Retourne une liste d'element de `Debut` a `Fin` par pas de `Pas`

**Exemple :**

``` bash
$ seq 10 #1 2 3 4 5 6 7 8 9 10

$ seq 5 10 #5 6 7 8 9 10

$ seq 1 2 10 #1 3 5 7 9 
```

## 2.3. Manipulation des fichier et dossiers dans les boucles

Dans cette section nous allons vous présenter un exemple de script bash qui permet de réaliser le nettoyage des lectures avec fastp puis l'assemblage du génome avec spades et enfin l'identification des especes bacteriennes avec Kleborate\

```bash
#!/bin/bash

#On commence par lire tous les fichiers et on le stocke dans la variable 'files_list'
files_list=$(ls data/good_size_file | cut -d_ -f1 | sort | uniq)

#On appelle fastp sur chaque fastq pour effectuer le nettoyage des lectures
for file in $files_list
do 
    echo "$file"

    mkdir -p results/fastp/"$file"

    fastp --detect_adapter_for_pe \
        --overrepresentation_analysis \
        --cut_right --thread 3 \
        --html results/fastp//"$file"/"$file".html \
        --json results/fastp//"$file"/"$file".json \
        -i data/good_size_file/"$file"_1.fastq.gz -I data/good_size_file/"$file"_2.fastq.gz \
        -o results/fastp/"$file"/"$file"_trimmed_1.fastq.gz -O results/fastp/"$file"/"$file"_trimmed_2.fastq.gz \
        2> results/fastp/"$file"/"$file".log
done

tree results/fastp/.

#En suite on va  appliquer spades sur chaque fichier nettoyé 
for file in $files_list
do 
    echo "$file"

    mkdir -p results/spades/"$file"

    spades.py -o results/spades/"$file" \
    -1 results/fastp/"$file"/"$file"_trimmed_1.fastq.gz \
    -2 results/fastp/"$file"/"$file"_trimmed_2.fastq.gz \
    2> results/spades/"$file"/"$file".log
done

tree results/spades/. -dsh

#Apres avoir execute spades on va extraire les contig et on les renommes avec le code de l'echantillon
for file in $files_list
do 
    echo "$file"

    cp results/spades/"$file"/contigs.fasta results/contigs/"$file".fasta
done

tree results/contigs/.

mkdir -p results/kleborate/species

#En fin on procede à l'identification des especes
kleborate -a results/contigs/*.fasta \
    -m enterobacterales__species --trim_headers \
    -o results/kleborate/species \
    2> results/kleborate/species/errors.log \
    1> results/kleborate/species/running.log
```
</br> </br>

------------------------------------------------------------------------

Accedez au [lien](https://linux.developpez.com/ligne--de-commande/#L3-4) pour plus de details et retrouver tous les sujets qui n'ont pas ete aborde ici.
