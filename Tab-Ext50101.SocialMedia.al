tableextension 50101 "Social Media" extends Customer
{
    fields
    {
        field(50100; Facebook; Text[50])
        {
            Caption = 'Facebook';
            DataClassification = ToBeClassified;
        }
        field(50101; Instagram; Text[50])
        {
            Caption = 'Instagram';
            DataClassification = ToBeClassified;
        }
    }
}
