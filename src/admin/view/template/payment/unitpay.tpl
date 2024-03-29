<?php echo $header; ?>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<div class="box">
  <div class="left"></div>
  <div class="right"></div>
  <div class="heading">
          <h1><img src="view/image/payment.png" alt="" /> <?php echo $heading_title; ?></h1>
    <div class="buttons"><a onclick="$('#form').submit();" class="button"><span><?php echo $button_save; ?></span></a><a onclick="location='<?php echo $cancel; ?>';" class="button"><span><?php echo $button_cancel; ?></span></a></div>
  </div>
  <div class="content">
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
      <table class="form">

      	<tr>
        <td width="25%"><span class="required">*</span> <?php echo $entry_login; ?></td>
        <td><input type="text" name="unitpay_login" value="<?php echo $unitpay_login; ?>" />
          <br />
          <?php if ($error_login) { ?>
          <span class="error"><?php echo $error_login; ?></span>
          <?php } ?></td>
      	</tr>
      	<tr>
        <td><span class="required">*</span> <?php echo $entry_password1; ?></td>
        <td><input type="text" name="unitpay_key" value="<?php echo $unitpay_key; ?>" />
          <br />
          <?php if ($error_password1) { ?>
          <span class="error"><?php echo $error_password1; ?></span>
          <?php } ?></td>
      	</tr>
      
      	

      	

      	<tr>
        <td><?php echo $entry_order_status; ?></td>
        <td><select name="unitpay_order_status_id">
            <?php foreach ($order_statuses as $order_status) { ?>
            <?php if ($order_status['order_status_id'] == $unitpay_order_status_id) { ?>
            <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
            <?php } ?>
            <?php } ?>
          </select></td>
      	</tr>
      	<tr>
        <td><?php echo $entry_geo_zone; ?></td>
        <td><select name="unitpay_geo_zone_id">
            <option value="0"><?php echo $text_all_zones; ?></option>
            <?php foreach ($geo_zones as $geo_zone) { ?>
            <?php if ($geo_zone['geo_zone_id'] == $unitpay_geo_zone_id) { ?>
            <option value="<?php echo $geo_zone['geo_zone_id']; ?>" selected="selected"><?php echo $geo_zone['name']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $geo_zone['geo_zone_id']; ?>"><?php echo $geo_zone['name']; ?></option>
            <?php } ?>
            <?php } ?>
          </select></td>
      	</tr>
      	<tr>
        <td><?php echo $entry_status; ?></td>
        <td><select name="unitpay_status">
            <?php if ($unitpay_status) { ?>
            <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
            <option value="0"><?php echo $text_disabled; ?></option>
            <?php } else { ?>
            <option value="1"><?php echo $text_enabled; ?></option>
            <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
            <?php } ?>
          </select></td>
      	</tr>
      	 <tr>
          <td><?php echo $entry_sort_order; ?></td>
          <td><input type="text" name="unitpay_sort_order" value="<?php echo $unitpay_sort_order; ?>" size="1" /></td>
        </tr>
       

      </table>
    </form>
  </div>
</div>
<?php echo $footer; ?>