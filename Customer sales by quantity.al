query 50103 "Customer sales by quantity"
{
    QueryType = Normal;
    OrderBy = descending(Quantity);
    QueryCategory = 'Customer List';
    elements
    {
        dataitem(Customer; Customer)
        {
            column(CustNo; "No.")
            {

            }
            column(CustName; Name)
            {

            }
            dataitem(Sales_Line; "Sales Line")
            {
                DataItemLink = "Sell-to Customer No." = Customer."No.";
                SqlJoinType = InnerJoin;
                column(Quantity; Quantity)
                {

                }
            }
        }
    }

    var
        myInt: Integer;

    trigger OnBeforeOpen()
    begin

    end;
}