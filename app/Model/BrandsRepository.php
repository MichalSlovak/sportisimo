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

                                return $this->database->query('
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
