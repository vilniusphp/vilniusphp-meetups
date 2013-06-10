<h1 style="text-align:center;">Naujienos</h1>
<? if (empty($data)) { return; } ?>

<table>
<tbody>
<? $i = 0;
foreach ($data as $item) { ?>
	<tr<?if($i > 0){ ?> style="color:red;"<? } ?>>
		<th><?=$item->title?></th>
		<td><?=$item->content?></td>
	</tr>
<? 
$i++;
} ?>
</tbody>	
</table>