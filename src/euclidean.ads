Pragma SPARK_Mode (On);

package Euclidean with SPARK_Mode is

   procedure Euclidean_Algorithm(a : in Natural;
                                 b : in Natural;
                                 gcd : out Natural)
     with
       Global => null,
       Depends => (gcd => (A,B));

end Euclidean;
