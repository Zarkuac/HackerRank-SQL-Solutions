DECLARE @P int = 20              
WHILE @P > 0                 
BEGIN                          
PRINT replicate('* ', @P)    
SET @P = @P - 1            
END

/* Language --> MS SQL */
