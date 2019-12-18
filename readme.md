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
a řazení dle názvu značky. Na tento projekt jsem použil Nette Framework. Tento framework používám poprvé a snažím se vyjít hlavně z dokumentace na internetu. Mohou se zde tedy objevit zdánlivě nelogické vazby. 
Demo data jsem čerpal ze stránek https://www.sportisimo.cz/mapa-stranek/ sekce "Značky".

Návrh databáze
------------

Vytvořil jsem InnoDB databázi s jednou tabulkou *brands*.
Všechny ostatní data jsou ve vztahu 1:N (popřípadě M:N) kdy produkt má pouze jednu značku, ale jedna značka má více produktů. 
Pak máme v tabulce produktů atribud značka s idznačky. Pro účely úkolu velikost tabulky stačí.

	CREATE TABLE `brands` (
      `idbrands` int(11) NOT NULL, - připadně autoincrement
      `created_by` date DEFAULT current_timestamp(),
      `modify_by` date NOT NULL DEFAULT current_timestamp(),
      `brands_name` varchar(455) COLLATE utf8_czech_ci NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;


![brands_table](https://github.com/MichalSlovak/sportisimo/blob/master/brands_db.png?raw=true)

https://github.com/MichalSlovak/sportisimo/blob/master/brands_db.png?raw=true

Inicializační SQL
----------------

Následující odkaz obsahuje inicializační sql i s demo daty pro tento projekt. 
 
https://github.com/MichalSlovak/sportisimo/blob/master/brands.sql


Stránkování
------------

Vytvořili jsme si databázi o cca 400 záznamech a nyní je potřebujeme stránkovat po n počtu (možnosti výběru uživatele). K úspěšnému stránkování budeme potřebovat znát minimálně údaje jako :
aktuální stránka, celkový počet záznamů, LIMIT a OFFSET , ORDER BY atd...

## .latte
```latte
              <ul class="pagination">
                            <li class="{$paginator->isFirst() ? "disabled"} page-item">
                                <a class="page-link" n:href="default, $paginator->page-1" aria-label="Previous">
                                    <span aria-hidden="true">«</span>
                                </a>
                            </li>
                        {if $paginator->pageCount <= 10}
                                {for $i=1;$i<=$paginator->pageCount;$i++}
                                    {if $i == $paginator->page}
                                        <li class="active page-item">
                                            <a class="page-link" n:href="default, $i">{$i}</a>
                                        </li>
                                    {else}
                                        <li class="page-item">
                                            <a class="page-link" n:href="default, $i">{$i}</a>
                                        </li>
                                    {/if}
                                {/for}
                        {elseif $paginator->pageCount > 10}
                                {if $paginator->page <= 4}
                                    {for $i=1;$i<8;$i++}
                                        {if $i == $paginator->page}
                                            <li class="active page-item">
                                                <a class="page-link" n:href="default, $i">{$i}</a>
                                            </li>
                                        {else}
                                            <li class="page-item">
                                                <a class="page-link" n:href="default, $i">{$i}</a>
                                            </li>
                                        {/if}
                                    {/for}
                                    <li class="page-item"><a class="page-link" href="#">...</a></li>
                                    <li class="page-item"><a class="page-link" n:href="default, $paginator->pageCount-1">{$paginator->pageCount-1}</a></li>
                                    <li class="page-item"><a class="page-link" n:href="default, $paginator->pageCount">{$paginator->pageCount}</a></li>
                                {elseif $paginator->page > 4 && $paginator->page < $paginator->pageCount-4}
            
                                    <li class="page-item"><a class="page-link" n:href="default, 1">1</a></li>
                                    <li class="page-item"><a class="page-link" n:href="default, 2">2</a></li>
                                    <li class="page-item"><a class="page-link" href="#">...</a></li>
            
                                    {for $i= $paginator->page - $adjancents;
                                         $i<= $paginator->page + $adjancents;
                                         $i++ }
            
                                        {if $i == $paginator->page}
                                            <li class="active page-item">
                                                <a class="page-link" n:href="default, $i">{$i}</a>
                                            </li>
                                        {else}
                                            <li class="page-item">
                                                <a class="page-link" n:href="default, $i">{$i}</a>
                                            </li>
                                        {/if}
                                    {/for}
                                <li class="page-item"><a class="page-link" href="#">...</a></li>
                                <li class="page-item"><a class="page-link" n:href="default, $paginator->pageCount-1">{$paginator->pageCount-1}</a></li>
                                <li class="page-item"><a class="page-link" n:href="default, $paginator->pageCount">{$paginator->pageCount}</a></li>
                                {else}
                                    <li class="page-item"><a class="page-link" n:href="default, 1">1</a></li>
                                    <li class="page-item"><a class="page-link" n:href="default, 2">2</a></li>
                                    <li class="page-item"><a class="page-link" href="#">...</a></li>
            
                                    {for $i= $paginator->pageCount - 6;
                                         $i<= $paginator->pageCount;
                                         $i++ }
                                        {if $i == $paginator->page}
                                            <li class="active page-item">
                                                <a class="page-link" n:href="default, $i">{$i}</a>
                                            </li>
                                        {else}
                                            <li class="page-item">
                                                <a class="page-link" n:href="default, $i">{$i}</a>
                                            </li>
                                        {/if}
                                    {/for}
                                {/if}
                        {/if}
            
                            <li class="{$paginator->isLast() ? "disabled"} page-item">
                                <a class="page-link" n:href="default, $paginator->page+1" aria-label="Next">
                                    <span aria-hidden="true">»</span>
                                </a>
                            </li>
                        </ul>

```

## Presenter

```php
<?php

declare(strict_types=1);

namespace App\Presenters;

use Nette;
use App\Model\BrandsRepository;

final class HomepagePresenter extends Nette\Application\UI\Presenter
{

    private $brandsRepository;
    /**
     * @persistent
    */
    public $page;
    /**
     * @persistent
     */
    public $sort;
    /**
     * @persistent
     */
    public $itemsPerPage;

    public function __construct(BrandsRepository $brandsRepository)
    {
        parent::__construct();
        $this->brandsRepository = $brandsRepository;
    }

    public function renderDefault(int $page = 1, int $sort = 1 , int $itemsPerPage = 10): void
    {
        // Zjistíme si celkový počet publikovaných značek
        $brandsCount = $this->brandsRepository->getPublishedBrandsCount();

        // Vyrobíme si instanci Paginatoru a nastavíme jej
        $paginator = new Nette\Utils\Paginator;
        $paginator->setItemCount($brandsCount); // celkový počet značek
        $paginator->setItemsPerPage($itemsPerPage); // počet položek na stránce
        $paginator->setPage($page); // číslo aktuální stránky

        if ($sort == 1){
            $direction = 'ASC';
        }else{
            $direction ='DESC';
        }
        // Z databáze si vytáhneme omezenou množinu značek podle výpočtu Paginatoru
        $brands = $this->brandsRepository->findPublishedBrands($paginator->getLength(), $paginator->getOffset(), $direction);

        // kterou předáme do šablony
        $this->template->brands = $brands;
        // a také samotný Paginator pro zobrazení možností stránkování
        $this->template->paginator = $paginator;
        // pomocná proměná
        $this->template->adjancents=2;

    }

    public function handleDelete(int $id): void
    {
        $this->brandsRepository->deleteBrand($id);
        $this->redirect("this");
    }
}

```

## Model
```php
<?php

declare(strict_types=1);

namespace App\Model;

use Nette;
use Nette\Security\Passwords;

class BrandsRepository
{
    use Nette\SmartObject;

    /** @var Nette\Database\Connection */
    private $database;

    public function __construct(Nette\Database\Connection $database)
    {
        $this->database = $database;
    }


    public function findPublishedBrands(int $limit, int $offset,string $sort): Nette\Database\ResultSet
    {

        /*
                ?? 'ASC' nefunguje vložení přes parametr? kde je chyba? "ASC' ?
        
                                return $this->database->fetch('
                                        SELECT * FROM brands
                                        WHERE created_by < ?
                                        ORDER BY brands_name ?
                                        LIMIT ?
                                        OFFSET ? ',
                                new \DateTime ,'ASC',$limit,$offset
                                );
        */

               if ($sort == 'ASC'){
                   return $this->database->query('
                       SELECT * FROM brands
                       WHERE created_by < ?
                       ORDER BY brands_name ASC
                       LIMIT ?
                       OFFSET ?',
                       new \DateTime ,$limit, $offset
                   );
               }else{
                   return $this->database->query('
                       SELECT * FROM brands
                       WHERE created_by < ?
                       ORDER BY brands_name DESC
                       LIMIT ?
                       OFFSET ?',
                       new \DateTime ,$limit, $offset
                   );
               }
    }

    public function getPublishedBrandsCount(): int
    {
        return $this->database->fetchField('SELECT COUNT(*) FROM brands WHERE created_by < ?', new \DateTime);
    }

    public function deleteBrand($id): void
    {
        $this->database->query('DELETE FROM brands WHERE idbrands = ?', $id);
    }
}

```

Změna počtu položek ve výpisu značek
-------

Paginator obsahuje přímo metodu $paginator->setItemsPerPage() dosadím tedy proměnou, která je public persistent.
## latte
```latte
        <p> Počet položek na stránku :
            <a style="padding:0px;" n:href="Default, itemsPerPage => 10" class="nav-link d-inline">
                10  &nbsp;|&nbsp;
            </a>
            <a style="padding:0px;" n:href="Default, itemsPerPage => 20" class="nav-link d-inline">
                20  &nbsp;|&nbsp;
            </a>
            <a style="padding:0px;" n:href="Default, itemsPerPage => 50" class="nav-link d-inline">
                50  &nbsp;|&nbsp;
            </a>
            <a style="padding:0px;" n:href="Default, itemsPerPage => 100" class="nav-link d-inline">
                100
            </a>
        </p>
```

## Presenter

```php
 $paginator->setItemsPerPage($itemsPerPage);
```

Změna řazení
----------------------------

Zde jsem narazil na problém při předávání stringu 'ASC'
z presenteru do modelu. Takto jsem si načítal proměnou $sort.
 
## Latte
```latte
  <th style="width: 20%">
      Název značky

      <a style="padding:0px;" n:href="Default, sort => 1" class="nav-link d-inline">
         <i class="nav-icon fas fa-arrow-down"></i>
      </a>
      <a style="padding:0px;" n:href="Default, sort => 2"  class="nav-link d-inline">
          <i class="nav-icon fas fa-arrow-up"></i>
      </a>
  </th>
```
## Presenter

Do metody "*findPublishedBrands*" pridávám proměnou $direction. Podle všeho je zde vše v pořádku. 
Problém nastává při vypsání této proměné v modelové vrstvě.

```php
   public function renderDefault(int $page = 1, int $sort = 1 , int $itemsPerPage = 10): void
    {
        if ($sort == 1){
            $direction = 'ASC';
        }else{
            $direction ='DESC';
        }
        // Z databáze si vytáhneme omezenou množinu značek podle výpočtu Paginatoru
        $brands = $this->brandsRepository->findPublishedBrands($paginator->getLength(), $paginator->getOffset(), $direction);

    }
```

### Model

Pokoušel jsem se proměnou $sort vložit za ORDER BY. Bohužel nevím kde je problém vyzkoušel jsem snad již všechno. 
Budu rád pokud mi sdělíte kde jsem v tomto případě dělal chybu. 
Vypadáto, že se do proměné sort dostává uvozovka na víc. Bohužel trimování ani regularní výraz nepomohl. 
```php
           return $this->database->query('
                SELECT * FROM brands
                WHERE created_by < ?
                ORDER BY brands_name ?
                LIMIT ?
                OFFSET ? ',
        new \DateTime ,$sort,$limit,$offset
        );
```
Problém sem sice neelegatně, ale vyřešil.
```php
    if ($sort == 'ASC'){
                   return $this->database->query('
                       SELECT * FROM brands
                       WHERE created_by < ?
                       ORDER BY brands_name ASC
                       LIMIT ?
                       OFFSET ?',
                       new \DateTime ,$limit, $offset
                   );
               }else{
                   return $this->database->query('
                       SELECT * FROM brands
                       WHERE created_by < ?
                       ORDER BY brands_name DESC
                       LIMIT ?
                       OFFSET ?',
                       new \DateTime ,$limit, $offset
                   );
               }
```