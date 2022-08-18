/*
   Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.



Q-1) actor ve customer tablolarında bulunan first_name sütunları için tüm verileri sıralayalım.

Q-2) actor ve customer tablolarında bulunan first_name sütunları için kesişen verileri sıralayalım.

Q-3) actor ve customer tablolarında bulunan first_name sütunları için ilk tabloda bulunan ancak ikinci tabloda bulunmayan verileri sıralayalım.

Q-4) İlk 3 sorguyu tekrar eden veriler için de yapalım.

*/

--Answer 1

(
SELECT first_name FROM actor
)
UNION 
(
SELECT first_name FROM customer
);

--Answer 2

(
SELECT first_name FROM actor
)
INTERSECT
(
SELECT first_name FROM customer
);

--Answer 3

(
SELECT first_name FROM actor
)
EXCEPT
(
SELECT first_name FROM customer
);

--Answer 4

(
SELECT first_name FROM actor
)
UNION ALL
(
SELECT first_name FROM customer
);
--
(
SELECT first_name FROM actor
)
INTERSECT ALL
(
SELECT first_name FROM customer
);
--
(
SELECT first_name FROM actor
)
EXCEPT ALL
(
SELECT first_name FROM customer
);

