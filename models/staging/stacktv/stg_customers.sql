with cust as
  (select customerid
         ,signup_date
         ,cancel_date
         ,status
         ,version
         ,customerid || version as customeridversion
    from {{ source('antony_sandbox', 'stacktv_customers') }})

select customerid
      ,signup_date
      ,cancel_date
      ,status
      ,version
      ,customeridversion
from cust