/*-------------------------------------------------------------------------------------------------------------------------
        Different options to generate a table from code
-------------------------------------------------------------------------------------------------------------------------*/



let

    tbl_Simple = #table({"header1", "header2"}, {{1,2}, {3,4}}),

    tbl_FromRecords = Table.FromRecords({[Header1=1, Header2=2, Header3=3], [Header1=2, Header2=5, Header3=7]}),

	
    //Credit Chris Webb
    //https://blog.crossjoin.co.uk/2016/06/03/creating-tables-in-power-bipower-query-m-code-using-table/
    tbl_WithTypes = #table(
        type table[
            #"Number Column"=number, 
            #"Text Column"=text,
            #"Date Column"=date
            ], 
        {
            {1,"Hello",#date(2016,1,1)},
            {2,"World",#date(2017,12,12)}
        }
    )
	
	
in
    tbl_WithTypes