query 50101 "list of Customers"
{
    Caption = 'list of Customers';
    QueryType = Normal;
    QueryCategory = 'Customer List';

    elements
    {
        dataitem(Customer; Customer)
        {
            column(Address; Address)
            {

            }
            column(Amount; Amount)
            {
            }
            column(Balance; Balance)
            {
            }
            column(City; City)
            {
            }
            column(Contact; Contact)
            {
            }
            column(Comment; Comment)
            {
            }
            column(County; County)
            {
            }
            column(EMail; "E-Mail")
            {
            }
            column(Name; Name)
            {
            }
            column(Image; Image)
            {
            }
            column(PartnerType; "Partner Type")
            {
            }
        }
    }

    trigger OnBeforeOpen()
    begin

    end;
}
