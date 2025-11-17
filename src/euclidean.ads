Pragma SPARK_Mode (On);

package Euclidean with SPARK_Mode is

   procedure Euclidean_Algorithm(a : in Natural;
                                 b : in Natural;
                                 gcd : out Natural;
                                 GA : out Integer;
                                 GB : out Integer)
     with
       Global => null,
       Depends => (gcd => (a,b),
                   GA => (a,b),
                   GB => (a,b));

end Euclidean;
