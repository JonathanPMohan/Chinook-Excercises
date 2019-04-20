-- Most purchased Track of 2013 Nathan Class Example --
Select t.Name, count(*) #OfSales
from dbo.Track t
	join dbo.InvoiceLine il
		on il.TrackId = t.TrackId
	join dbo.Invoice i
		on i.InvoiceId = il.InvoiceId
where Year(i.invoicedate) = 2013
group by t.TrackId, t.Name
order by #OfSales desc