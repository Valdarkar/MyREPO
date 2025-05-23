SELECT * FROM mydb.payment;
SELECT * FROM  user
RIGHT JOIN payment 
ON payment.user_id = user.user_id WHERE Paymentcol = 'Не оплачено';

SELECT * FROM payment
LEFT JOIN courses
ON payment.course_id = courses.course_id;

SELECT * FROM user 
INNER JOIN courses
ON user.user_id = courses.course_id;