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


