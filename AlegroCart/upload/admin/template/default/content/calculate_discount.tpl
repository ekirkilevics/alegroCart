<div class="task">
  <div class="enabled" onmouseover="className='hover'" onmouseout="className='enabled'" onclick="location='<?php echo $list; ?>'"><img src="template/<?php echo $this->directory?>/image/list_enabled.png" alt="<?php echo $button_list; ?>" class="png"><?php echo $button_list; ?></div>
  <div class="disabled"><img src="template/<?php echo $this->directory?>/image/insert_disabled.png" alt="<?php echo $button_insert; ?>" class="png"><?php echo $button_insert; ?></div>
  <div class="disabled"><img src="template/<?php echo $this->directory?>/image/update_disabled.png" alt="<?php echo $button_update; ?>" class="png"><?php echo $button_update; ?></div>
  <div class="disabled"><img src="template/<?php echo $this->directory?>/image/delete_disabled.png" alt="<?php echo $button_delete; ?>" class="png"><?php echo $button_delete; ?></div>
  <div class="enabled" onmouseover="className='hover'" onmouseout="className='enabled'" onclick="document.getElementById('form').submit();"><img src="template/<?php echo $this->directory?>/image/save_enabled.png" alt="<?php echo $button_save; ?>" class="png"><?php echo $button_save; ?></div>
  <div class="disabled"><img src="template/<?php echo $this->directory?>/image/print_disabled.png" alt="<?php echo $button_print; ?>" class="png" /><?php echo $button_print; ?></div>
  <div class="enabled" onmouseover="className='hover'" onmouseout="className='enabled'" onclick="location='<?php echo $cancel; ?>'"><img src="template/<?php echo $this->directory?>/image/cancel_enabled.png" alt="<?php echo $button_cancel; ?>" class="png"><?php echo $button_cancel; ?></div>
</div>
<?php if ($error) { ?>
<div class="warning"><?php echo $error; ?></div>
<?php } ?>
<div class="heading"><?php echo $heading_title; ?></div>
<div class="description"><?php echo $heading_description; ?></div>
<script type="text/javascript" src="javascript/tab/tab.js"></script>
<link rel="stylesheet" type="text/css" href="javascript/tab/tab.css">
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
  <div class="tab" id="tab">
    <div class="tabs"><a><div class="tab_text"><?php echo $tab_general; ?></div></a></div>
    <div class="pages">
      <div class="page">
        <div class="pad">
          <table>
            <tr>
              <td width="185" class="set"><?php echo $entry_discount_status; ?></td>
              <td><select name="global_discount_status">
                  <?php if ($global_discount_status) { ?>
                  <option value="1" selected><?php echo $text_enabled; ?></option>
                  <option value="0"><?php echo $text_disabled; ?></option>
                  <?php } else { ?>
                  <option value="1"><?php echo $text_enabled; ?></option>
                  <option value="0" selected><?php echo $text_disabled; ?></option>
                  <?php } ?>
                </select></td>
	      <td class="expl"><?php echo $explanation_entry_discount_status; ?></td>
            </tr>
            <tr>
              <td class="set"><?php echo $entry_discount_lprice; ?></td>
              <td><input type="text" name="global_discount_lprice" value="<?php echo $global_discount_lprice; ?>" size="10"></td>
	      <td class="expl"><?php echo $explanation_entry_discount_lprice; ?></td>
            </tr>
            <tr>
              <td class="set"><?php echo $entry_discount_lprice_percent; ?></td>
              <td><input type="text" name="global_discount_lprice_percent" value="<?php echo $global_discount_lprice_percent; ?>" size="10"></td>
	      <td class="expl"><?php echo $explanation_entry_discount_lprice_percent; ?></td>
            </tr>
            <tr>
              <td class="set"><?php echo $entry_discount_gprice; ?></td>
              <td><input type="text" name="global_discount_gprice" value="<?php echo $global_discount_gprice; ?>" size="10"></td>
	      <td class="expl"><?php echo $explanation_entry_discount_gprice; ?></td>
            </tr>
            <tr>
              <td class="set"><?php echo $entry_discount_gprice_percent; ?></td>
              <td><input type="text" name="global_discount_gprice_percent" value="<?php echo $global_discount_gprice_percent; ?>" size="10"></td>
	      <td class="expl"><?php echo $explanation_entry_discount_gprice_percent; ?></td>
            </tr>
            <tr>
              <td class="set"><?php echo $entry_discount_sort_order; ?></td>
              <td><input type="text" name="global_discount_sort_order" value="<?php echo $global_discount_sort_order; ?>" size="3"></td>
	      <td class="expl"><?php echo $explanation_entry_discount_sort_order; ?></td>
            </tr>
          </table>
        </div>
      </div>
    </div>
  </div>
 <input type="hidden" name="<?php echo $cdx;?>" value="<?php echo $validation;?>">
  <script type="text/javascript"><!--
  tabview_initialize('tab');
  //--></script>
</form>
