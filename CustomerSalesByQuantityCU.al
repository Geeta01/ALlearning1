codeunit 50103 CustomerSalesByQuantityCU
{
    trigger OnRun()
    begin
        CustQuery.SetFilter(Quantity, '>100');
        CustQuery.Open();
        while CustQuery.Read() do begin
            Message(Textbox, CustQuery.Name, CustQuery.Quantity);
        end;
        CustQuery.Close();
        ;
    end;

    var
        CustQuery: Query "Customer sales by quantity2";
        Textbox: TextConst ENU = 'Customer name=%1, Quantity = %2';
}