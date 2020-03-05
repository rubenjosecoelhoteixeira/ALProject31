pageextension 50132 PermissionSetExplorer extends "Permission Sets"
{
    actions
    {
        addafter(Permissions)
        {
            action(RunQuery)
            {
                Promoted = true;
                PromotedCategory = New;
                trigger OnAction();
                begin
                    // Save the query in root C, in format xml
                    Query.SaveAsXml(50132, 'C:\myquery.xml')
                end;
            }
        }
    }
}