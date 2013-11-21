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
    <div class="heading">
      <h1><img src="view/image/payment.png" alt="" /> <?php echo $heading_title; ?></h1>
      <div class="buttons"><a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a><a onclick="location = '<?php echo $cancel; ?>';" class="button"><?php echo $button_cancel; ?></a></div>
    </div>
    <div class="content">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
        <table class="form">
          <tr>
            <td><span class="required">*</span> <?php echo $entry_merchantid; ?></td>
            <td><input type="text" name="charityclear_merchantid" value="<?php if( isset($charityclear_merchantid) ) { echo $charityclear_merchantid; }else{ echo '100003'; } ?>" />
              <?php if ( isset($error_merchantid) ) { ?>
              <span class="error"><?php echo $error_merchantid; ?></span>
              <?php } ?></td>
          </tr>
            <tr>
                <td><span class="required">*</span> <?php echo $entry_merchantsecret; ?></td>
                <td><input type="text" name="charityclear_merchantsecret" value="<?php if( isset($charityclear_merchantsecret) ) { echo $charityclear_merchantsecret; }else{ echo 'Circle4Take40Idea'; } ?>" />
                    <?php if ( isset($error_merchantsecret) ) { ?>
                        <span class="error"><?php echo $error_merchantsecret; ?></span>
                    <?php } ?></td>
            </tr>
          <tr>
            <td><span class="required">*</span> <?php echo $entry_currencycode; ?></td>
            <td><input type="text" name="charityclear_currencycode" value="<?php if( isset($charityclear_currencycode) ) { echo $charityclear_currencycode; } else{ echo 826; } ?>" />
              <?php if ( isset($error_currencycode) ) { ?>
              <span class="error"><?php echo $error_currencycode; ?></span>
              <?php } ?></td>
          </tr>
          <tr>
            <td><span class="required">*</span> <?php echo $entry_countrycode; ?></td>
            <td><input type="text" name="charityclear_countrycode" value="<?php if( isset($charityclear_countrycode) ) { echo $charityclear_countrycode; } else{ echo 826; }?>" />
              <?php if ( isset($error_countrycode) ) { ?>
              <span class="error"><?php echo $error_countrycode; ?></span>
              <?php } ?></td>
          </tr>
          <tr>
            <td><?php echo $entry_order_status; ?></td>
            <td><select name="charityclear_order_status_id">
                <?php foreach ($order_statuses as $order_status) { ?>
                <?php if ($order_status['order_status_id'] == $charityclear_order_status_id) { ?>
                <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
                <?php } ?>
                <?php } ?>
              </select></td>
          </tr>
          <tr>
            <td><?php echo $entry_geo_zone; ?></td>
            <td><select name="charityclear_geo_zone_id">
                <option value="0"><?php echo $text_all_zones; ?></option>
                <?php foreach ($geo_zones as $geo_zone) { ?>
                <?php if ($geo_zone['geo_zone_id'] == $charityclear_geo_zone_id) { ?>
                <option value="<?php echo $geo_zone['geo_zone_id']; ?>" selected="selected"><?php echo $geo_zone['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $geo_zone['geo_zone_id']; ?>"><?php echo $geo_zone['name']; ?></option>
                <?php } ?>
                <?php } ?>
              </select></td>
          </tr>
          <tr>
            <td><?php echo $entry_status; ?></td>
            <td><select name="charityclear_status">
                <?php if ($charityclear_status) { ?>
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
            <td><input type="text" name="charityclear_sort_order" value="<?php echo $charityclear_sort_order; ?>" size="1" /></td>
          </tr>
        </table>
      </form>
    </div>
  </div>
</div>
<?php echo $footer; ?>