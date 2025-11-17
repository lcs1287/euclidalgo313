Pragma SPARK_Mode (On);

package body Euclidean with SPARK_Mode is

   -- q2(a)
   procedure Euclidean_Algorithm(a : in Natural; b : in Natural; gcd : out Natural)
   is
      r : Natural := a;
      s : Natural := b;

   begin
      while r > 0 and s >0
      loop
         if r>s then
            r := r mod s;
         else
            s := s mod r;
         end if;

          if r = 0 and s>0 or s = 0 and r > 0 then
            exit;

            else if s > 0 then
               gcd := s;
            else
               gcd := r;
            end if;
      end loop;
   end;
