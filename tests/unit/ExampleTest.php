<?php

use \Codeception\Test\Unit;

class FeatureTest extends Unit
{
    public function testFoo()
    {
        $this->assertTrue(true);
    }

    public function testBar()
    {
        $this->assertTrue(true);
    }

    public function testBaz()
    {
        sleep(5);
        $this->assertTrue(true);
    }

    public function testLorem()
    {
        $this->assertTrue(true);
    }

    public function testIpsum()
    {
        sleep(5);
        $this->assertTrue(true);
    }

    public function testIfYouGotHereIRanOutOfPlaceholders()
    {
        $this->assertTrue(true);
    }

}
