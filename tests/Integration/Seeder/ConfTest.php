<?php

namespace Tests\Integration\Seeder;

use Tests\TestCase;
use \App\Conf;
use Illuminate\Foundation\Testing\DatabaseMigrations;
use Illuminate\Foundation\Testing\DatabaseTransactions;
use Illuminate\Support\Facades\Config;

class ConfTest extends TestCase
{
	/** @test */
	public function it_seeds_all_confs() {
		Config::set('seed.default_country', 'GM');

		$this->runMigration('regions_table');
		$this->runMigration('countries_table');
		$this->runMigration('confs_table');
		$this->runMigration('images_table');
		$this->runMigration('units_table');

		$this->runSeeder(\RegionSeeder::class);
		$this->runSeeder(\CountrySeeder::class);
		$this->runSeeder(\ConfSeeder::class);

		$this->assertEquals(1, Conf::count());

		$config = Conf::first();

		$this->assertEquals(69, $config->defaultCountry->id);
		$this->assertNull($config->defaultRegion);
		$this->assertFalse($config->default_keepdata);
		$this->assertFalse($config->default_sendnewspaper);
	}
}
