-- 2DO PARCIAL INF 317
-- NOMBRES Y APELLIDOS: BORIS ORLANDO ROQUE HUANCA
-- CI: 9868420 LP
----------- EJERCICIO 3 -------------
-- CODIGO T-SQL PARA ACTUALIZAR LOS DATOS DE LA TABLA
-- PRODUCTION.PRODUCTCOSTHISTORY

DECLARE @productid int;
DECLARE @startdate datetime;
DECLARE @enddate datetime;
DECLARE @standardcost money;
DECLARE @modifieddate datetime;

DECLARE cursor_actualizar_productcosthistory CURSOR FOR
SELECT ProductID, StartDate, EndDate, StandardCost, ModifiedDate FROM Ejercicio1_BorisRoque.Production.ProductCostHistory;

OPEN cursor_actualizar_productcosthistory;

FETCH NEXT FROM cursor_actualizar_productcosthistory INTO @productid, @startdate, @enddate, @standardcost, @modifieddate;

WHILE @@FETCH_STATUS = 0
BEGIN
    UPDATE Ejercicio3_BorisRoque.Production.ProductCostHistory
    SET EndDate = @enddate,
		StandardCost = @standardcost,
		ModifiedDate = @modifieddate		
    WHERE ProductID = @productid and StartDate = @startdate;

    FETCH NEXT FROM cursor_actualizar_productcosthistory INTO @productid, @startdate, @enddate, @standardcost, @modifieddate;
;
END

CLOSE cursor_actualizar_productcosthistory;

DEALLOCATE cursor_actualizar_productcosthistory;



-- CODIGO T-SQL PARA ACTUALIZAR LOS DATOS DE LA TABLA
-- PRODUCTION.PRODUCTLISTPRICEHISTORY

DECLARE @productid int;
DECLARE @startdate datetime;
DECLARE @enddate datetime;
DECLARE @listprice money;
DECLARE @modifieddate datetime;

DECLARE cursor_actualizar_productlistpricehistory CURSOR FOR
SELECT ProductID, StartDate, EndDate, ListPrice, ModifiedDate FROM Ejercicio1_BorisRoque.Production.ProductListPriceHistory;

OPEN cursor_actualizar_productlistpricehistory;

FETCH NEXT FROM cursor_actualizar_productlistpricehistory INTO @productid, @startdate, @enddate, @listprice, @modifieddate;

WHILE @@FETCH_STATUS = 0
BEGIN
    UPDATE Ejercicio3_BorisRoque.Production.ProductListPriceHistory
    SET EndDate = @enddate,
		ListPrice = @listprice,
		ModifiedDate = @modifieddate		
    WHERE ProductID = @productid and StartDate = @startdate;

    FETCH NEXT FROM cursor_actualizar_productlistpricehistory INTO @productid, @startdate, @enddate, @listprice, @modifieddate;
;
END

CLOSE cursor_actualizar_productlistpricehistory;

DEALLOCATE cursor_actualizar_productlistpricehistory;
