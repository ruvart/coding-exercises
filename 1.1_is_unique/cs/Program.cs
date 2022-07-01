/**
 * This is the solution for the Is unique problem, in C#
 * 
 * @author Ruvart, <contacto@ruvart.com>
 */

namespace IsUnique
{
    class Program
    {
        /**
        * 
        */
        public static bool isUnique_1(string str) {
            int str_len = str.Length;

            if ( str_len < 2 ) {
                return true;
            }

            for ( int x = 1; x < str_len; x++ ) {
                if ( str.IndexOf(str[x-1],x) != -1 ) {
                    return false;
                }
            }

            return true;
        }


        public static bool isUnique_2(string str) {
            int str_len = str.Length;

            if ( str_len < 2 ) {
                return true;
            }

            char[] chars = str.ToArray();
            Array.Sort(chars);

            for ( int x = 1; x < str_len; x++ ) {
                if ( chars[x-1] == chars[x] ) {
                    return false;
                }
            }

            return true;
        }


        public static bool isUnique_3(string str) {
            int str_len = str.Length;

            if ( str_len < 2 ) {
                return true;
            }

            var chars = str.Distinct();
            if ( chars.Count() != str_len ) {
                return false;
            }

            return true;
        }


        public static bool isUnique_4(string str) {
            int str_len = str.Length;

            if ( str_len < 2 ) {
                return true;
            }

            var ltrs = new SortedSet<char>(str);

            if ( ltrs.Count() != str_len ) {
                return false;
            }

            return true;

            /* for ( int x = 1; x < str_len; x++ ) {
                if ( chars[x-1] == chars[x] ) {
                    return false;
                }
            } */
        }


        static void Main(string[] args)
        {
            string str_1        = "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit";
            string str_2        = "abcdefghijklmnopqrstuvwxyz ";
            long   ini;
            long   fin;
            bool result;

            Console.WriteLine($"isUnique_1 - ({str_1.Length}) \"{str_1}\":");
            ini = DateTimeOffset.Now.ToUnixTimeMilliseconds();
            result = isUnique_1(str_1);
            fin = DateTimeOffset.Now.ToUnixTimeMilliseconds();
            if ( result ) {
                Console.WriteLine($"Son caracteres únicos.\t Tiempo (milisec): " + (fin - ini) + "\n");
            }
            else {
                Console.WriteLine($"No son caracteres únicos.\t Tiempo (milisec): " + (fin - ini) + "\n");
            }


            Console.WriteLine($"isUnique_1 - ({str_2.Length}) \"{str_2}\":");
            ini = DateTimeOffset.Now.ToUnixTimeMilliseconds();
            result = isUnique_1(str_2);
            fin = DateTimeOffset.Now.ToUnixTimeMilliseconds();
            if ( result ) {
                Console.WriteLine($"Son caracteres únicos.\t Tiempo (milisec): " + (fin - ini) + "\n");
            }
            else {
                Console.WriteLine($"No son caracteres únicos.\t Tiempo (milisec): " + (fin - ini) + "\n");
            }



            Console.WriteLine($"isUnique_2 - ({str_1.Length}) \"{str_1}\":");
            ini = DateTimeOffset.Now.ToUnixTimeMilliseconds();
            result = isUnique_2(str_1);
            fin = DateTimeOffset.Now.ToUnixTimeMilliseconds();
            if ( result ) {
                Console.WriteLine($"Son caracteres únicos.\t Tiempo (milisec): " + (fin - ini) + "\n");
            }
            else {
                Console.WriteLine($"No son caracteres únicos.\t Tiempo (milisec): " + (fin - ini) + "\n");
            }


            Console.WriteLine($"isUnique_2 - ({str_2.Length}) \"{str_2}\":");
            ini = DateTimeOffset.Now.ToUnixTimeMilliseconds();
            result = isUnique_2(str_2);
            fin = DateTimeOffset.Now.ToUnixTimeMilliseconds();
            if ( result ) {
                Console.WriteLine($"Son caracteres únicos.\t Tiempo (milisec): " + (fin - ini) + "\n");
            }
            else {
                Console.WriteLine($"No son caracteres únicos.\t Tiempo (milisec): " + (fin - ini) + "\n");
            }



            Console.WriteLine($"isUnique_3 - ({str_1.Length}) \"{str_1}\":");
            ini = DateTimeOffset.Now.ToUnixTimeMilliseconds();
            result = isUnique_3(str_1);
            fin = DateTimeOffset.Now.ToUnixTimeMilliseconds();
            if ( result ) {
                Console.WriteLine($"Son caracteres únicos.\t Tiempo (milisec): " + (fin - ini) + "\n");
            }
            else {
                Console.WriteLine($"No son caracteres únicos.\t Tiempo (milisec): " + (fin - ini) + "\n");
            }


            Console.WriteLine($"isUnique_3 - ({str_2.Length}) \"{str_2}\":");
            ini = DateTimeOffset.Now.ToUnixTimeMilliseconds();
            result = isUnique_3(str_2);
            fin = DateTimeOffset.Now.ToUnixTimeMilliseconds();
            if ( result ) {
                Console.WriteLine($"Son caracteres únicos.\t Tiempo (milisec): " + (fin - ini) + "\n");
            }
            else {
                Console.WriteLine($"No son caracteres únicos.\t Tiempo (milisec): " + (fin - ini) + "\n");
            }



            Console.WriteLine($"isUnique_4 - ({str_1.Length}) \"{str_1}\":");
            ini = DateTimeOffset.Now.ToUnixTimeMilliseconds();
            result = isUnique_4(str_1);
            fin = DateTimeOffset.Now.ToUnixTimeMilliseconds();
            if ( result ) {
                Console.WriteLine($"Son caracteres únicos.\t Tiempo (milisec): " + (fin - ini) + "\n");
            }
            else {
                Console.WriteLine($"No son caracteres únicos.\t Tiempo (milisec): " + (fin - ini) + "\n");
            }


            Console.WriteLine($"isUnique_4 - ({str_2.Length}) \"{str_2}\":");
            ini = DateTimeOffset.Now.ToUnixTimeMilliseconds();
            result = isUnique_4(str_2);
            fin = DateTimeOffset.Now.ToUnixTimeMilliseconds();
            if ( result ) {
                Console.WriteLine($"Son caracteres únicos.\t Tiempo (milisec): " + (fin - ini) + "\n");
            }
            else {
                Console.WriteLine($"No son caracteres únicos.\t Tiempo (milisec): " + (fin - ini) + "\n");
            }
        }
    }
}