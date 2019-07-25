1) SELECT model  FROM sveta.auto 
join sveta.characteristic ON sveta.auto.id=sveta.characteristic.auto_id
join sveta.showroom ON sveta.characteristic.id=sveta.showroom.characteristic_id
where sveta.showroom.discount<5 

2)SELECT model  FROM sveta.auto 
join sveta.characteristic ON sveta.auto.id=sveta.characteristic.auto_id
join sveta.showroom ON sveta.characteristic.id=sveta.showroom.characteristic_id
where sveta.characteristic.cabin='sedan' order by sveta.showroom.price desc Limit 4

3)SELECT maker FROM sveta.auto 
join sveta.characteristic ON sveta.auto.id=sveta.characteristic.auto_id
join sveta.showroom ON sveta.characteristic.id=sveta.showroom.characteristic_id
order by sveta.showroom.price asc Limit 1

4)SELECT maker FROM sveta.auto 
join sveta.characteristic ON sveta.auto.id=sveta.characteristic.auto_id
join sveta.showroom ON sveta.characteristic.id=sveta.showroom.characteristic_id
where sveta.showroom.presence='y' and maker!='volkswagen'

5)SELECT count(make) FROM sveta.auto 
join sveta.characteristic ON sveta.auto.id=sveta.characteristic.auto_id
join sveta.showroom ON sveta.characteristic.id=sveta.showroom.characteristic_id
where sveta.showroom.assuranceamout <40000 and speed < 200


1) Select sum ( pages) From books 

2)Select * From books where (2019-YearPress)<15

3)INSERT INTO BOOKS (Name,YearPress,Comment,Quantity) VALUES ('Sql 2019 базы данных Генник Питер',2019,'карманный справочник',3)

7)Select sum (Quantity) From books

9) Select max (pages) From books

11) Select min (pages) From books

12) Select AVG (pages) From books

17) Select sum (Quantity) From books group by Id_Themes

18) Select * From books
