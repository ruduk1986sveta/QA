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
