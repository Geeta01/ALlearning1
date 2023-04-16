codeunit 50102 "Customer sales greater than 50"
{
    trigger OnRun()
    begin
        CustQuery.SetFilter(Quantity, '>50');
        CustQuery.OPEN;
        while CustQuery.Read() do begin
            Message(Textbox, CustQuery.CustName, CustQuery.Quantity);
        end;
        CustQuery.CLOSE;
    end;

    var
        CustQuery: Query "Customer sales by quantity";
        Textbox: TextConst ENU = 'Customer name = %1,Quantity=%2.';
}