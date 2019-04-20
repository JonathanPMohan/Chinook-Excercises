-- Most purchased Track of 2013 Nathan Class Example --

declare @invoiceYear int = 2013 -- (declare) Here is about to be a variable -- Must start with @ symbol --
-- Next you specify type of variable -- (int) and Set it (2013)

declare @countOfTracksSoldIn2013 int



Select @countOfTracksSoldIn2013, count(*) #OfSales
from dbo.Track t
	join dbo.InvoiceLine il
		on il.TrackId = t.TrackId
	join dbo.Invoice i
		on i.InvoiceId = il.InvoiceId
where Year(i.invoicedate) = @invoiceYear
--group by t.TrackId, t.Name
--order by #OfSales desc

select @countOfTracksSoldIn2013