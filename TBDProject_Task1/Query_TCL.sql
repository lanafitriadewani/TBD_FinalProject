-- TCL dengan COMMIT
BEGIN;

INSERT INTO public.sales(
	sale_id, store_id, customer_id, total_amount, sale_date)
	VALUES (21, 2, 2, 250000, '2024-01-22');

COMMIT;

-- TCL dengan ROLLBACK
BEGIN;

INSERT INTO public.sales(
	sale_id, store_id, customer_id, total_amount, sale_date)
	VALUES (22, 8, 4, 320000, '2024-01-22');

ROLLBACK;

-- TCL dengan SAVEPOINT
BEGIN;

INSERT INTO public.sales(
	sale_id, store_id, customer_id, total_amount, sale_date)
	VALUES (22, 8, 4, 320000, '2024-01-22');

SAVEPOINT sp1;

INSERT INTO public.sales(
	sale_id, store_id, customer_id, total_amount, sale_date)
	VALUES (23, 2, 2, 100000, '2024-01-25');

SAVEPOINT sp2;

ROLLBACK TO SAVEPOINT sp1;

