<?php
#################################################################################
##              -= YOU MAY NOT REMOVE OR CHANGE THIS NOTICE =-                 ##
## --------------------------------------------------------------------------- ##
##  Filename       punish.tpl                                                  ##
##  Developed by:  aggenkeech                                                  ##
##  License:       TravianZ Project                                            ##
##  Copyright:     TravianZ (c) 2010-2025. All rights reserved.                ##
##                                                                             ##
#################################################################################

$active = $admin->getUserActive();
?>

<style>
	.del {width:12px; height:12px; background-image: url(img/admin/icon/del.gif);}
</style>

<form method="post" action="admin.php">
	<input name="action" type="hidden" value="punish">
	<input name="uid" type="hidden" value="<?php echo $user['id'];?>">
	<input type="hidden" name="admid" id="admid" value="<?php echo $_SESSION['id']; ?>">

	<table id="member" style="width: 200px;">
		<thead>
			<tr>
				<th colspan="2">Punish Player</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>
					<div style="text-align: center">
						<select name="punish">
							<option value="10" selected="selected">10%</option>
							<option value="20">20%</option>
							<option value="30">30%</option>
							<option value="40">40%</option>
							<option value="50">50%</option>
							<option value="60">60%</option>
							<option value="70">70%</option>
							<option value="80">80%</option>
							<option value="90">90%</option>
							<option value="100">100%</option>
						</select>
					</div>
				</td>
			</tr>
			<tr>
				<td>
					<center>
						<input type="image" src="../img/admin/b/ok1.gif" value="submit">
						</form>
					</center>
				</td>
			</tr>
			<tr>
			<form method="post" action="admin.php">
				<input name="action" type="hidden" value="punish">
				<input name="uid" type="hidden" value="<?php echo $user['id'];?>">
				<input type="hidden" name="admid" id="admid" value="<?php echo $_SESSION['id']; ?>">
				<td colspan="1" style="text-align: center;">
					<input type="checkbox" name="del_troop" value="1"> <strike>Delete Troops</strike>
				</td>
			</tr>
			<tr>
				<td>
					<center>
						<input type="image" src="../img/admin/b/ok1.gif" value="submit">
						</form>
					</center>
				</td>
			</tr>
			<tr>
			<form method="post" action="admin.php">
				<input name="action" type="hidden" value="punish">
				<input name="uid" type="hidden" value="<?php echo $user['id'];?>">
				<input type="hidden" name="admid" id="admid" value="<?php echo $_SESSION['id']; ?>">
				<td colspan="1" style="text-align: center;">
					<input type="checkbox" name="clean_ware" value="1"> Empty Warehouses
				</td>
			</tr>
			<tr>
				<td>
					<center>
						<input type="image" src="../img/admin/b/ok1.gif" value="submit">
					</center>
				</td>
			</tr>
		</tbody>
	</table><br />
</form>