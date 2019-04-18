-- Unique Invoice Countries -- 
Select  i.BillingCountry
From dbo.Invoice i
Group By i.BillingCountry  