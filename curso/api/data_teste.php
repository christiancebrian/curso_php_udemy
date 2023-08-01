<?php

$minhaData = new DateTime('today');

echo "<p>Data</p>";
echo '<pre>'.$minhaData->format('d-M-Y').'</pre>';