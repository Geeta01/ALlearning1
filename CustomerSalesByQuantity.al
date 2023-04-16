query 50104 "Customer sales by quantity2"
{
    QueryType = Normal;
    QueryCategory = 'Customer List';
    OrderBy = descending(Quantity);
    elements
    {
        dataitem(Customer; Customer)
        {
            column(CustNo; "No.")
            {

            }
            column(Name; Name)
            {

            }
            dataitem(Sales_Line; "Sales Line")
            {
                DataItemLink = "Sell-to Customer No." = Customer."No.";
                SqlJoinType = InnerJoin;
                column(Quantity; Quantity)
                {
                    Method = Sum;
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