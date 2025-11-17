with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Euclidean; use Euclidean;


procedure Main is

   A, B, G : Integer;
   Continue : Character := 'Y';

   begin
   while Continue = 'Y' or Continue = 'y' loop
      -- Input first number
      loop
         Put("enter the a value: ");
         Get(A);
         if A > 0 then
            exit;
         else
            Put_Line("number not greater than 0");
         end if;
      end loop;

      -- Input second number
      loop
         Put("enter the b value: ");
         Get(B);
         if B > 0 then
            exit;
         else
            Put_Line("number not greater than 0");
         end if;
      end loop;

      Euclidean.Euclidean_Algorithm(A, B, G);
      Put_Line("gcd is: " & Natural'Image(G));

      -- Ask whether to continue
      Put("Do you want to continue? (Y/N): ");
      Get(Continue);
   end loop;

end Main;
