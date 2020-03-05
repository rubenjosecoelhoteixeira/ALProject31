query 50132 "Sample Query"
{
    QueryType = Normal;
    Caption = 'Sales Overview';

    elements
    {
        dataitem(Salesperson_Purchaser; "Salesperson/Purchaser")
        {
            column(Salesperson; Name)
            {

            }
            dataitem(Sales_Header; "Sales Header")
            {
                DataItemLink = "Salesperson Code" = Salesperson_Purchaser.Code;
                SqlJoinType = InnerJoin;

                column(Order_Number; "No.")
                {

                }
                column(Sell_to_Customer; "Sell-to Customer Name")
                {

                }
                dataitem(Sales_Line; "Sales Line")
                {
                    DataItemLink = "Sell-to Customer No." = Sales_Header."Sell-to Customer No.";
                }
            }
        }
    }
}