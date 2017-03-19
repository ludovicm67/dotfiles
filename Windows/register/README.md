# Configuration des registres Windows

Certaines fonctionnalités ne me plaisent pas spécialement ou ne sont pas
activées par défaut. Je mets ici à disposition l'ensemble de mes scripts
pour changer le registre.


## `win-num-lock-startup.reg`

Ce fichier modifie les registres Windows et permet d'activer automatiquement
l'option VerNum sur votre clavier. Ceci est très utile pour entrer des
chiffres à l'aide de votre clavier, par exemple dès lors de votre connexion,
dans le cas où votre mot de passe en contiendrait !

## `win-utc-bios-time.reg`

Très utile pour ceux qui ont un dual boot avec linux sur leur machine. En
effet, linux se dit que l'heure du BIOS est au format UTC et considère
ce fuseau horaire par défaut. Windows quant à lui considère que l'heure de
votre BIOS est déjà dans le bon fuseau horaire. Cela va entrainer un 
décallage d'heure dans votre système et ce n'est pas très agréable de
travailler avec une mauvaise heure...

Ce fichier permet donc de dire à Windows que l'heure du BIOS est en UTC,
ce qui va permettre de résoudre le problème de manière efficace.

