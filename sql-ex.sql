--Найдите номер модели, скорость и размер жесткого диска для всех ПК стоимостью менее 500 дол. Вывести: model, speed и hd
Select model, speed, hd from PC where price < 500

--Найдите производителей принтеров. Вывести: maker
Select distinct maker from Product where type = 'Printer'

--Найдите номер модели, объем памяти и размеры экранов ПК-блокнотов, цена которых превышает 1000 дол.
Select model, ram, screen from Laptop where price >1000

--Найдите все записи таблицы Printer для цветных принтеров.
Select * from Printer where color = 'y'

--Найдите номер модели, скорость и размер жесткого диска ПК, имеющих 12x или 24x CD и цену менее 600 дол.
Select model, speed, hd from PC where (cd = '12x' or cd = '24x') and price < 600

--Для каждого производителя, выпускающего ПК-блокноты c объёмом жесткого диска не менее 10 Гбайт, найти скорости таких ПК-блокнотов. Вывод: производитель, скорость.
Select distinct maker, speed from Laptop l, Product p
where l.model = p.model and l.hd > = 10

--Найдите номера моделей и цены всех имеющихся в продаже продуктов (любого типа) производителя B (латинская буква).
Select PC.model as model, PC.price as price from PC inner join Product on PC.model = Product.model where Product.maker like 'B%'
union 
Select Laptop.model as model, Laptop.price as price from Laptop inner join Product on Laptop.model = Product.model 
where Product.maker like 'B%'
union 
Select Printer.model as model, Printer.price as price from Printer inner join Product on Printer.model = Product.model 
where Product.maker like 'B%'


--Найдите производителя, выпускающего ПК, но не ПК-блокноты.
Select distinct maker from Product where type = 'PC'
except
Select distinct maker from Product where type = 'Laptop'


--Найдите производителей ПК с процессором не менее 450 Мгц. Вывести: Maker
SELECT DISTINCT maker FROM PC a, Product b
WHERE  a.model = b.model  AND speed> =450


--Найдите модели принтеров, имеющих самую высокую цену. Вывести: model, price
Select model, price from Printer where price = (select max(price) from Printer)

--Найдите среднюю скорость ПК.
Select avg (speed) as avg_speed from PC

--Найдите среднюю скорость ПК-блокнотов, цена которых превышает 1000 дол.
Select avg(lap.speed) from (select speed from Laptop where price>1000) as lap

--Найдите среднюю скорость ПК, выпущенных производителем A.
select avg(speed) from PC where model in (select model from Product where maker = 'A')

--Найдите класс, имя и страну для кораблей из таблицы Ships, имеющих не менее 10 орудий.
Select Ships.class, Ships.name, Classes.country from Ships inner join Classes on Ships.class = Classes.class where 
Classes.numGuns >=10

--Найдите размеры жестких дисков, совпадающих у двух и более PC. Вывести: HD
select hd  from PC group by hd having count(model) >= 2

--Найдите пары моделей PC, имеющих одинаковые скорость и RAM. 
--В результате каждая пара указывается только один раз, т.е. (i,j), но не (j,i), 
--Порядок вывода: модель с большим номером, модель с меньшим номером, скорость и RAM.
select distinct A.model as model_a, B.model as model_b , A.speed, A.ram from PC as A, PC as B where A.speed = B.speed and A.ram = B.ram and A.model>B.model

--Найдите модели ПК-блокнотов, скорость которых меньше скорости каждого из ПК.
--Вывести: type, model, speed
Select distinct 'laptop' as type, model, speed from Laptop where speed < all (select speed from PC)


--Найдите производителей самых дешевых цветных принтеров. Вывести: maker, price
select distinct maker, price from Printer inner join Product on Printer.model = Product.model where Printer.color = 'y' and Printer.price = (select min(price) from Printer where color = 'y')
SELECT DISTINCT product.maker, printer.price FROM product, printer WHERE product.model = printer.model AND printer.color = 'y' AND printer.price = (SELECT MIN(price) FROM printer WHERE printer.color = 'y')

--Для каждого производителя, имеющего модели в таблице Laptop, найдите средний размер экрана выпускаемых им ПК-блокнотов.
--Вывести: maker, средний размер экрана.
select distinct Product.maker, avg(Laptop.screen) as screen from Product, Laptop where Product.model = Laptop.model group by Product.maker
select Product.maker, avg(screen) from Laptop left join Product on Product.model = Laptop.model group by Product.maker

--Найдите производителей, выпускающих по меньшей мере три различных модели ПК. Вывести: Maker, число моделей ПК.
select distinct maker, count(model) from Product 
where type = 'PC'
group by maker
having count(model) >=3

--Найдите максимальную цену ПК, выпускаемых каждым производителем, у которого есть модели в таблице PC.
--Вывести: maker, максимальная цена
Select maker , max(price) from Product, PC where Product.model = PC.model group by maker

--Для каждого значения скорости ПК, превышающего 600 МГц, определите среднюю цену ПК с такой же скоростью. Вывести: speed, средняя цена.
Select speed, avg(price) from PC where speed > 600 group by speed

--Найдите производителей, которые производили бы как ПК со скоростью не менее 750 МГц, так и ПК-блокноты со скоростью не менее 750 МГц.
--Вывести: Maker
select distinct maker from Product inner join PC on Product.model = PC.model where speed >=750
intersect
select distinct maker from Product inner join Laptop on Product.model = Laptop.model where speed >=750

--Даны таблицы workers и departments. Найдите все департаменты без единого сотрудника
select d.department_name, w.first_name from departments as d left join workers as w on d.id=w.id
 where w.first_name is null

--Замените в таблице зарплату работника на 1000, если она равна 900, и на 1500 в остальных случаях
update table set Salary
Case when salary = 900 then 1000
else 1500
end;



