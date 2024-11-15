SELECT 
    res_partner.id AS "Provider Code", 
    res_partner.name AS "Provider Name", 
    purchase_order.date_order AS "Date", 
    purchase_order.id AS "Order Reference"
FROM 
    res_partner
JOIN 
    purchase_order 
    ON res_partner.id = purchase_order.partner_id
WHERE 
    purchase_order.state = 'sent';
