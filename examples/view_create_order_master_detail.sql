/*
Merging the previous combined 3 tables "order master"
to details table
*/

CREATE OR REPLACE VIEW "orders_master_detail_view" AS
SELECT mst.*,
det.order_detail_id,
det.product_id,
det.quantity,
det.unit_price,
det.discount,
det.status_id det_status_id,
det.date_allocated,
det.purchase_order_id,
det.inventory_id,
det.qty_x_up,
det.sale_grades,
det.product_name
FROM "company_orders_db"."order_master" mst
JOIN "company_orders_db"."order_details" det
ON mst.order_id = det.order_id
