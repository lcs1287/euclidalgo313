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
      gcd := 0;
      GA := 0;
      GB := 0;
      while r > 0 and s > 0 loop
            loop
         if r > s then
            new_r := r mod s;
            d := r / s;
            sa := ra*d + sa;
            sb := rb*d + sb;
            r := new_r;

            else
            new_s := s mod r;
            d:= s / r;
            ra := ra + sa*d;
            rb := rb + sb*d;
            s := new_s;
         end if;

         pragma Assert(A = r*ra + s*sa);
         pragma Assert(B = r*rb + s*sb);

          if (r = 0 and s > 0) or (s = 0 and r > 0) then
            exit;
          end if;
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
      end loop;

   end;

 end Euclidean;
