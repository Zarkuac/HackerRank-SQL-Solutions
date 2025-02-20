/* Language : MS SQL */

Declare @P int = 20
Set @P = 1
while @P<21
Begin 
    Print replicate('* ',@P)
    Set @P = @P + 1
End
