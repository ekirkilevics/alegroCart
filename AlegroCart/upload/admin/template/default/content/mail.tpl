<div class="task">
  <div class="disabled"><img src="template/<?php echo $this->directory?>/image/list_disabled.png" alt="<?php echo $button_list; ?>" class="png"><?php echo $button_list; ?></div>
  <div class="disabled"><img src="template/<?php echo $this->directory?>/image/insert_disabled.png" alt="<?php echo $button_insert; ?>" class="png"><?php echo $button_insert; ?></div>
  <div class="disabled"><img src="template/<?php echo $this->directory?>/image/update_disabled.png" alt="<?php echo $button_update; ?>" class="png"><?php echo $button_update; ?></div>
  <div class="disabled"><img src="template/<?php echo $this->directory?>/image/delete_disabled.png" alt="<?php echo $button_delete; ?>" class="png"><?php echo $button_delete; ?></div>
  <div class="disabled"><img src="template/<?php echo $this->directory?>/image/save_disabled.png" alt="<?php echo $button_save; ?>" class="png"><?php echo $button_save; ?></div>
  <div class="disabled"><img src="template/<?php echo $this->directory?>/image/print_disabled.png" alt="<?php echo $button_print; ?>" class="png"><?php echo $button_print; ?></div>
  <div class="disabled"><img src="template/<?php echo $this->directory?>/image/cancel_disabled.png" alt="<?php echo $button_cancel; ?>" class="png"><?php echo $button_cancel; ?></div>
</div>
<div class="heading"><?php echo $heading_title; ?></div>
<div class="description"><?php echo $heading_description; ?></div>
<?php if ($error) { ?>
<div class="warning"><?php echo $error; ?></div>
<?php } ?>
<?php if ($message) { ?>
<div class="message"><?php echo $message; ?></div>
<?php } ?>
<script type="text/javascript" src="javascript/ckeditor/ckeditor.js"></script> 
<div id="mail">
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
    <table>
      <tr>
        <td align="right" class="set"><?php echo $entry_to; ?></td>
        <td><select name="to">
            <?php if ($to == 'newsletter') { ?>
            <option value="newsletter" SELECTED><?php echo $text_newsletter; ?></option>
            <?php } else { ?>
            <option value="newsletter"><?php echo $text_newsletter; ?></option>
            <?php } ?>
            <?php if ($to == 'customer') { ?>
            <option value="customer" SELECTED><?php echo $text_customer; ?></option>
            <?php } else { ?>
            <option value="customer"><?php echo $text_customer; ?></option>
            <?php } ?>
            <?php foreach ($customers as $customer) { ?>
            <?php if ($customer['customer_id'] == $to) { ?>
            <option value="<?php echo $customer['customer_id']; ?>" SELECTED><?php echo $customer['name']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $customer['customer_id']; ?>"><?php echo $customer['name']; ?></option>
            <?php } ?>
            <?php } ?>
          </select></td>
      </tr>
      <tr>
        <td align="right" class="set"><span class="required">*</span> <?php echo $entry_subject; ?></td>
        <td><input name="subject" value="<?php echo $subject; ?>">
          <?php if ($error_subject) { ?>
          <span class="error"><?php echo $error_subject; ?></span>
          <?php } ?></td>
      </tr>
      <tr>
        <td align="right" valign="top" class="set"><span class="required">*</span> <?php echo $entry_content; ?></td>
        <td><textarea name="content" id="content"><?php echo $content; ?></textarea>
          <?php if ($error_content) { ?>
          <span class="error"><?php echo $error_content; ?></span>
          <?php } ?></td>
      </tr>
      <tr>
        <td align="right" colspan="2"><input type="submit" class="submit" value="<?php echo $button_send; ?>"></td>
      </tr>
    </table>
	<input type="hidden" name="<?php echo $cdx;?>" value="<?php echo $validation;?>">
	<script type="text/javascript"><!--
	  CKEDITOR.replace( 'content' );
	//--></script>
  </form>
</div>
