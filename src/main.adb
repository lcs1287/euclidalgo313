Pragma SPARK_Mode (On);

with AS_Io_Wrapper; use AS_Io_Wrapper;
with Euclidean; use Euclidean;

procedure Main is


   A, B, G : Integer;
   User_Input : String(1..20);
   Last : Integer;

begin
   AS_Init_Standard_Input;
   AS_Init_Standard_Output;

   loop
      -- Input first number
      loop
         AS_Put("enter the a value: ");
         AS_Get(A);
         if A > 0 then
            exit;
         else
            AS_Put_Line("number not greater than 0");
         end if;
      end loop;

      -- Input second number
      loop
         AS_Put("enter the b value: ");
         AS_Get(B);
         if B > 0 then
            exit;
         else
            AS_Put_Line("number not greater than 0");
         end if;
      end loop;

      Euclidean.Euclidean_Algorithm(A, B, G);
      AS_Put_Line("gcd is: " & Natural'Image(G));

         loop
         As_Put("Do you want to try again (y/n)? ");
         As_Get_Line(User_Input, Last);
         exit when Last > 0;
         As_Put_Line("Please enter a non-empty string");
      end loop;
      exit when User_Input(1 .. 1) = "n";
   end loop;

end Main;
