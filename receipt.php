<?php
// Prevent direct access to file
defined('shoppingcart') or exit;

$stmt = $pdo->prepare('SELECT
        p.img AS img,
        p.name AS name,
        t.created AS transaction_date,
        ti.item_price AS price,
        ti.item_quantity AS quantity
        FROM transactions t
        JOIN transactions_items ti ON ti.txn_id = t.txn_id
        JOIN accounts a ON a.id = t.account_id
        JOIN products p ON p.id = ti.item_id
        WHERE t.account_id = ?
        ORDER BY t.created DESC');
    $stmt->execute([ $_SESSION['account_id'] ]);
    $transactions = $stmt->fetchAll(PDO::FETCH_ASSOC);
	
?>

<?=template_header('Receipt')?>

<?php foreach ($transactions as $transaction): ?>
            
	<table>			
			<tr>
                <td class="img">
                    <?php if (!empty($transaction['img']) && file_exists('imgs/' . $transaction['img'])): ?>
                    <img src="imgs/<?=$transaction['img']?>" width="50" height="50" alt="<?=$transaction['name']?>">
                    <?php endif; ?>
                </td>
                <td><?=$transaction['name']?></td>
                <td class="rhide"><?=$transaction['transaction_date']?></td>
                <td class="price rhide"><?=currency_code?><?=number_format($transaction['price'],2)?></td>
                <td class="quantity"><?=$transaction['quantity']?></td>
                <td class="price"><?=currency_code?><?=number_format($transaction['price'] * $transaction['quantity'],2)?></td>
            </tr>
            <?php endforeach; ?>

	</table>
<?=template_footer()?>