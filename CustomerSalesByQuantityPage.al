pageextension 50102 MyExtension extends "Sales Order"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addafter(AssemblyOrders)
        {
            action(CustomerSalesQuantity)
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = New;

                trigger OnAction()

                var
                    Mycodeunit: Codeunit 50103;
                begin
                    clear(Mycodeunit);
                    Mycodeunit.Run();
                end;


            }
        }
    }

    var
        myInt: Integer;
}