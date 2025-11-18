Pragma SPARK_Mode (On);

package body Euclidean with SPARK_Mode is

   -- q2(a) done
   procedure Euclidean_Algorithm(a : in Natural; b : in Natural; gcd : out Natural; GA : out Integer; GB : Out Integer)
   is


      r : Natural := a;
      s : Natural := b;

      --q2(d) done
      ra : Integer := 1;
      rb : Integer := 0;
      sa : Integer := 0;
      sb : Integer := 1;
      d : Integer;
      new_r : Natural;
      new_s : Natural;


   begin

      while r > 0 and s > 0 loop
         pragma Loop_Invariant((r > 0 and s >= 0) or (s > 0 and r >= 0));



         pragma Loop_Invariant (r = a * ra + b * rb);
         pragma Loop_Invariant (s = a * sa + b * sb);

            if r > s then
            new_r := r mod s;
            d := r / s;
            pragma Assert(r = d*s + new_r);
            sa := ra*d + sa;
            sb := rb*d + sb;
            r := new_r;
            pragma Assert(r = a * ra + b * rb);

            else
            new_s := s mod r;
            d:= s / r;
            pragma Assert(s = d*r + new_s);
            ra := ra + sa*d;
            rb := rb + sb*d;
            s := new_s;

            pragma Assert(s = a * sa + b * sb);
         end if;

          if (r = 0 and s > 0) or (s = 0 and r > 0) then
               exit;

            end if;

         pragma Assert((r > 0 and s >= 0) or (s > 0 and r >= 0));

      end loop;

      if r = 0 then
            gcd := s;
            GA := sa;
            GB := sb;
      else

            gcd := r;
            GA := ra;
            GB := rb;
         end if;

   end Euclidean_Algorithm;
 end Euclidean;
