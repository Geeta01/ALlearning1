query 50102 "Top 5 customers"
{
    QueryType = Normal;
    Caption = 'Top 5 customers';
    TopNumberOfRows = 5;
    OrderBy = descending(Sales__LCY_);
    QueryCategory = 'Customer List';
    elements
    {
        dataitem(Cust__Ledger_Entry; "Cust. Ledger Entry")
        {
            filter(Posting_Date; "Posting Date")
            {

            }
            column(Customer_No_; "Customer No.")
            {

            }
            column(Customer_Name; "Customer Name")
            {

            }
            column(Sales__LCY_; "Sales (LCY)")
            {
                Method = Sum;
            }
        }
    }

    var
        myInt: Integer;

    trigger OnBeforeOpen()
    begin

    end;
}