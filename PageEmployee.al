page 50111 EmployeeView
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = EmployeeNew;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Editable = true;
                field("emp code"; rec."emp code")
                {
                    ApplicationArea = All;

                }
                field("Emp name"; rec."emp name")
                {
                    ApplicationArea = All;

                }
                field("emp salary"; rec.salary)
                {
                    ApplicationArea = All;

                }
                field("doj"; rec.DOJ)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}