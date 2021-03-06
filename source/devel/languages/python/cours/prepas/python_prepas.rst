﻿

.. index::
   pair: Python ; Prépas


.. _ens_python_prepa:

=================
ens-python-prepa
=================


.. contents::
   :depth: 3


Introduction
============

Support de cours pour le stage de formation à Python des professeurs de
classes préparatoires.

Mode d'emploi de git/github
============================

pour récupérer ce répertoire à partir de github en local sur sa machine::


    git clone https://github.com/python-prepa/python-prepa.git


en local sur sa machine, pour ajouter des changements (nouveaux fichiers
ou fichiers modifiés) à un futur commit::


    git add monfichier

pour faire un nouveau commit (une nouvelle version qui pourra être
poussée ensuite sur github)::

    git commit

(puis entrer un message de commit)

Pour récupérer les changements des autres à partir de github (à faire
fréquemment, en particulier avant de pousser ses propres changements sur
github)::


    git pull origin master

Pour pousser ses changements sur github::

    git push origin master

Compilation du document avec sphinx
====================================

Il faut avoir installé le logiciel sphinx (http://sphinx-doc.org/,
package python-sphinx sous ubuntu).

Aller dans le répertoire ens-python-prepa, puis taper dans un terminal::

    make html

pour construire le document html, qu'on peut ensuite ouvrir dans un
browser html.

On peut aussi construire un document pdf avec::

    make latexpdf

Sous windows c'est le fichier make.bat qui doit être utilisé.

Le langage utilisé pour les fichiers sources est le langage de markup
ReST (reStructuredText), avec le logiciel sphinx qui le compile
intelligemment pour un rendu dans différents format. 

Pour mettre à jour la page web http://python-prepa.github.com/
==============================================================

Taper dans un terminal::

    make install

(à ne faire que quand on a une version statisfaisante du document, bien
sûr)

La page web est générée à partir d'un repository github où se trouvent
toutes les pages html et les fichiers associés (images, etc.). La
commande make install refait un commit avec les fichiers html et autres
générés à la dernière compilation, et fait un push de ce commit sur
github. Github se débrouille ensuite pour générer la page web.

Pour trouver de la doc
========================

sur ReST et sa syntaxe :

- http://docutils.sourceforge.net/docs/user/rst/quickref.html et 
- http://docutils.sourceforge.net/docs/user/rst/quickstart.html

Sinon le plus simple est  d'apprendre par l'exemple en regardant le
contenu du fichier ens-python-prepa/exemples.rst

Pour générer automatiquement des figures dans le document à partir de
scripts python (permet d'être sûr que la figure correspond au script !)

placer dans le répertoire ens-python-prepa/source/examples un fichier
python commençant par "plot" (par exemple plot_simple_pendulum.py)
générant une figure matplotlib (ne pas oublier la commande show pour que
la figure s'affiche bien). A la compilation du html par sphinx, une figure png
sera automatiquement générée et placée dans le répertoire
ens-python-prepa/source/auto_examples/images avec un nom basé sur le nom du
script, par exemple plot_simple_pendulum_1.png pour le script
plot_simple_pendulum.py. On peut ensuite appeler cette figure dans les
fichier rst, par exemple::

    .. figure:: auto_examples/images/plot_simple_pendulum_1.png
        :scale: 80

