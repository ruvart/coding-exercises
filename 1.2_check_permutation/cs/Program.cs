/**
 * This is the solution for the Check permutation problem, in C#
 * 
 * @author Ruvart, <contacto@ruvart.com>
 */

namespace CheckPermutation
{
    class Program
    {
        public static bool checkPermutation_1(string str_1, string str_2) {
            int  str_1_length  = str_1.Length;
            char[] str_1_chars = str_1.ToCharArray();
            char[] str_2_chars = str_2.ToCharArray();

            if ( str_1_length != str_2.Length ) {
                return false;
            }

            Array.Sort(str_1_chars);
            Array.Sort(str_2_chars);

            for ( int x = 0; x < str_1_length; x++ ) {
                if ( str_1_chars[x] != str_2_chars[x] ) {
                    return false;
                }
            }

            return true;
        }


        public static bool checkPermutation_2(string str_1, string str_2) {
            int  str_1_length  = str_1.Length;
            char[] str_1_chars = str_1.ToCharArray();
            char[] str_2_chars = str_2.ToCharArray();
            string new_str_1;
            string new_str_2;

            if ( str_1_length != str_2.Length ) {
                return false;
            }

            Array.Sort(str_1_chars);
            Array.Sort(str_2_chars);

            new_str_1 = String.Join("",str_1_chars);
            new_str_2 = String.Join("",str_2_chars);

            if ( !new_str_1.Equals(new_str_2) ) {
                return false;
            }

            return true;
        }


        static void Main(string[] args) {
            long ini    = 0;
            long fin    = 0;
            bool result = false;

            string str_1 = "1234567891011121314151617181920";
            string str_2 = "1678011718191213149115162345120";
            string str_3 = "1234567891011121314151617181920";
            string str_4 = "1234567891022221314151617181920";

            Console.WriteLine($"checkPermutation_1\n\"{str_1}\"\n\"{str_2}\"\nResult:");
            ini    = DateTimeOffset.Now.ToUnixTimeMilliseconds();
            result = checkPermutation_1(str_1,str_2);
            fin    = DateTimeOffset.Now.ToUnixTimeMilliseconds();
            if ( result ) {
                Console.WriteLine($"Valid permuted strings.\t Time (milisec):" + (fin-ini) + "\n");
            }
            else {
                Console.WriteLine($"Not valid permuted strings.\t Tiempo (milisec):" + (fin-ini) + "\n");
            }

            Console.WriteLine($"checkPermutation_1\n\"{str_3}\"\n\"{str_4}\"\nResult:");
            ini    = DateTimeOffset.Now.ToUnixTimeMilliseconds();
            result = checkPermutation_1(str_3,str_4);
            fin    = DateTimeOffset.Now.ToUnixTimeMilliseconds();
            if ( result ) {
                Console.WriteLine($"Valid permuted strings.\t Time (milisec):" + (fin-ini) + "\n");
            }
            else {
                Console.WriteLine($"Not valid permuted strings.\t Tiempo (milisec):" + (fin-ini) + "\n");
            }



            Console.WriteLine($"checkPermutation_2\n\"{str_1}\"\n\"{str_2}\"\nResult:");
            ini    = DateTimeOffset.Now.ToUnixTimeMilliseconds();
            result = checkPermutation_2(str_1,str_2);
            fin    = DateTimeOffset.Now.ToUnixTimeMilliseconds();
            if ( result ) {
                Console.WriteLine($"Valid permuted strings.\t Time (milisec):" + (fin-ini) + "\n");
            }
            else {
                Console.WriteLine($"Not valid permuted strings.\t Tiempo (milisec):" + (fin-ini) + "\n");
            }

            Console.WriteLine($"checkPermutation_2\n\"{str_3}\"\n\"{str_4}\"\nResult:");
            ini    = DateTimeOffset.Now.ToUnixTimeMilliseconds();
            result = checkPermutation_2(str_3,str_4);
            fin    = DateTimeOffset.Now.ToUnixTimeMilliseconds();
            if ( result ) {
                Console.WriteLine($"Valid permuted strings.\t Time (milisec):" + (fin-ini) + "\n");
            }
            else {
                Console.WriteLine($"Not valid permuted strings.\t Tiempo (milisec):" + (fin-ini) + "\n");
            }
        }
    }
}