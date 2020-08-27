##Utilité de ces scripts shell :
	J'ai remarqué que tres souvent pour crée un nouveau repository sur github je fesais les meme actions :
		1-Je vais dans le dossier ~/Documents/Github/ 
		3-Je vais sur github.com et je crée un repository pour mon projet puis je le clone
	ca peux sembler simple mais sur le papier c'est plusieur step qui pour moi étais pas tres amusante donc j'ai cherché a optimiser ca.

	Deja grace a (git cli)[https://github.com/cli/cli] de github on peux crée un repository directement de la commande line de notre machine et s'etait ce que je voulais 
		(comme ca je peux automatisé cette ligne hehe)
	Puis grace a des function bash directement écrite dans notre fichier .bashrc a la racine du dossier ~/ avec un source ~/.bash_profile pour enregistré la modification

	J'ai mis au point ce script s hell et ces deux functions bash qui me permette de gagner un temps fou (je crois hihi) j'en suis fier !

	Petit overview de ce que chaque chose fait :
	~/.bashrc : 
		create () -> prends un arguments qui est le nom du repository qu'on veux crée, se deplace sur le dossier ~/Documents/Github puis lance le fichier create.sh
		qui se trouve a la racine de ce dernier, apres l'execution de create.sh on se deplace a la racine du repository crée.
		push () -> permet de gagner du temps quand on veux push un changement, cette function prends en argument le message quand veux passé au commit,
		et automatise git add. / git commit -m "1 Argument passé lors de l'appel de la commande / git push origin master" 
	~/Documents/Github/create.sh :
		create.sh(): ce script crée le dossier du repository qu'on veux crée puis se deplace a l'interieur, fait un git init, et utilise la commande de git cli qui 
		permet de crée des repository depuis la command line "gh repo create"

	Ceci ne sont que la base de la base mais je compte les ameliorer au fur et a mesure que je m'ameliore avec git, je rajouterai d'autre script si j'en crée d'autre aussi,
	Si vous avez des question n'hesiter pas a demaré une issue / me contacter !
