Sportisimo 
=============

Zadání: 

Požadované funkce:

1. Vylistování všech značek
    - Řazení pomocí názvu značky (vzestupně, sestupně)
    - Stránkování (včetně změny počtu položek na stránku)

Očekávané výstupy:

1. Návrh databáze – v čitelné podobě (ideálně ER diagram) – png, pdf
2. SQL pro vytvoření a iniciální naplnění databáze
3. Zdrojové kódy aplikace + composer.json soubor popisující závislosti aplikace
4. CSS knihovna frameworku Materialize CSS, připojená do aplikace
5. SASS soubor s vlastními styly (přizpůsobení prvků knihovny Materialize)
6. Přeložený SASS soubor ve formě CSS, připojený do aplikace

Vzhledem k tomu, že se jedná pouze o backendový vývoj bodům 4-6 jsem nevěnoval takovou pozornost.
Soustředil jsem se hlavně na realizaci stránkování, změnu počtu položek na stránku
a řazení dle názvu značky. Demo data jsem čerpal ze stránek https://www.sportisimo.cz/mapa-stranek/ sekce "Značky".

Návrh databáze
------------

Vytvořil jsem InnoDB databázi s jednou tabulkou *brands*.
Všechny ostatní data bud ve vztahu 1:N kdy produkt má pouze jednu značku, ale jedna značka má více produktů. 
Pak máme v tabulce produktů atribud značka s idznačky. Pro účely úkolu velikost tabulky stačí.

	CREATE TABLE `brands` (
      `idbrands` int(11) NOT NULL, - připadně autoincrement
      `created_by` date DEFAULT current_timestamp(),
      `modify_by` date NOT NULL DEFAULT current_timestamp(),
      `brands_name` varchar(455) COLLATE utf8_czech_ci NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;


![alt text](http://url/to/img.png)


Web Server Setup
----------------

The simplest way to get started is to start the built-in PHP server in the root directory of your project:

	php -S localhost:8000 -t www

Then visit `http://localhost:8000` in your browser to see the welcome page.

For Apache or Nginx, setup a virtual host to point to the `www/` directory of the project and you
should be ready to go.

It is CRITICAL that whole `app/`, `log/` and `temp/` directories are not accessible directly
via a web browser. See [security warning](https://nette.org/security-warning).


Requirements
------------

- Sandbox for Nette 3.0 requires PHP 7.1

To check whether server configuration meets the minimum requirements for
Nette Framework browse to the directory `/checker` in your project root (i.e. `http://localhost:8000/checker`).


Adminer
-------

[Adminer](https://www.adminer.org/) is full-featured database management tool written in PHP and it is part of this Sandbox.
To use it, browse to the subdirectory `/adminer` in your project root (i.e. `http://localhost:8000/adminer`).


Notice: Composer PHP version
----------------------------

This project forces PHP 5.6 (eventually 7.1) as your PHP version for Composer packages. If you have newer
version on production server you should change it in `composer.json`:

```json
"config": {
	"platform": {
		"php": "7.2"
	}
}
```
