<!--  Product Options -->	
<?php if ($product['options']) { ?>
 <div class="product_options" id="<?php echo $this_controller.'_options_'.$product['product_id']; ?>" >
  <?php $options_price = array(); ?>
  <div class="available"><?php echo $text_options; ?></b></div>
  <table class="b">
<?php if(!isset($weight_decimal)){$weight_decimal = $decimal_place;}?>
  <?php foreach ($product['options'] as $key => $option) { ?>
   <tr>	  
    <td><?php echo $option['name']; ?></td>
    <td><select name="option<?php echo '_' . $product['product_id'];?>[<?php echo $key+1; ?>]" onchange="UpdateTotal(<?php echo $decimal_place . "," . $weight_decimal . ",'" . $decimal_point . "',". $product['product_id'] . ",'" . $this_controller . "'";?>)">		
    <?php foreach ($option['value'] as $price_key => $option_value) { ?>
     <option id="<?php echo "O".($product['product_id'])."_".($key+1)."_".($price_key+1); ?>" value="<?php echo $option_value['product_to_option_id']; ?>"><?php echo $option_value['name']; ?>
     <?php if ($option_value['price']) { ?> 
      <?php echo $option_value['prefix']; ?><?php echo $option_value['price']; ?>
	   <?php if($price_key == '0'){
	    if ($option_value['prefix'] == '+'){
         $product_total = $product_total + number_format((float)str_replace($decimal_point,'.',str_replace($symbols,'',$option_value['price'])),$decimal_place,'.','');
		} elseif ($option_value['prefix'] == '-'){
		 $product_total = $product_total - number_format((float)str_replace($decimal_point,'.',str_replace($symbols,'',$option_value['price'])),$decimal_place,'.','');
		}
	   }?>					  
      <?php } ?>
     </option>
	 <?php $options_price[] = array(
        'price' => $option_value['prefix']."#".number_format((float)str_replace($decimal_point,'.',str_replace($symbols,'',$option_value['price'])),$decimal_place,'.',''),
		'option_id'    => "option_priceO". ($product['product_id'])."_".($key+1)."_".($price_key+1)
	  );?>
    <?php } ?>
    </select></td>
   </tr>
  <?php } ?>
  </table>
 </div>
 <div>
  <?php foreach ($options_price as $option_price){ ?>
   <input type="hidden" id="<?php echo $option_price['option_id'];?>" value="<?php echo $option_price['price'];?>">
  <?php } ?>
 </div>	
<?php } ?>	
<?php if ($product['options']) { ?>	
 <div class="product_total">
 <?php echo $price_with_options;
  $product_total = number_format($product_total,$decimal_place,$decimal_point,''); ?>
  <span id="product_with_options_<?php echo $product['product_id']; ?>"><?php echo $product_total;?></span>
  <?php echo $symbol_right;?>
 </div>
<?php } ?>		
<!--  End Product Options -->