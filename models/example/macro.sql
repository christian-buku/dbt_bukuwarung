select 
    *
    , {{ get_date_parts('disbursed_date') }} as date_extract_of_disbursed_month
from community_loan.comm_loan_disbursal_repayment