<?php

$formdata = array(
    "merchantID" => $merchantid,
    "amount" => $amount,
    "action" => "SALE",
    "type" => 1,
    "countryCode" => $countrycode,
    "currencyCode" => $currencycode,
    "transactionUnique" => $trans_id,
    "orderRef" => "Order " . $trans_id,
    "redirectURL" => $callback,
    "customerName" => $bill_name,
    "customerAddress" => $bill_addr,
    "customerPostCode" => $bill_post_code,
    "customerEmail" => $bill_email,
    "customerPhone" => $bill_tel,
    "item1Description" => "Order " . $trans_id,
    "item1Quantity" => 1,
    "item1GrossValue" => $amount
);
ksort($formdata);
$signature = http_build_query($formdata).$merchantsecret;

$formdata['signature'] = hash('SHA512', $signature);

?>

<form action="https://gateway.charityclear.com/paymentform/" method="post">
    <?php
    foreach( $formdata as $key => $value ){
    
        echo "<input type=\"hidden\" name=\"" . $key . "\" value=\"" . $value . "\" />";
        
    }
    ?>
    <div class="buttons">
        <div class="right">
          <input type="submit" value="<?php echo $button_confirm; ?>" class="button" />
        </div>
    </div>
</form>