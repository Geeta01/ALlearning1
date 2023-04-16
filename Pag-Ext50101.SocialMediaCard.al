pageextension 50101 "Social Media Card" extends "Customer Card"
{
    layout
    {
        addfirst(General)
        {
            field(Facebook; Rec.Facebook)
            {
                ApplicationArea = All;
                //Caption = 'Caption';//Hides the field name and overrides with caption
                ToolTip = 'Tooltip';
            }
            field(Instagram; Rec.Instagram)
            {
                ApplicationArea = All;
            }

        }
    }
    actions
    {

    }
}
