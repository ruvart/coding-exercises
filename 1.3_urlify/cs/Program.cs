/**
 * This is the solution for the urlify problem, in C#
 * 
 * @author Ruvart, <contacto@ruvart.com>
 */

namespace urlify
{
    class Program {

        /**
         * 
         * @param String str
         * @return String
         */
        public static string urlify_1( string str ) {
            string[] blocks = str.Split(" ");
            string result = String.Join("%20",blocks);
        
            return result;
        }


        /**
         * 
         * @param String str
         * @return String
         */
        public static string urlify_2( string str ) {
            char[] str_chars = str.ToCharArray();
            char[] str_chars_result = new char[0];
            char[] str_chars_temp = new char[0];
            string result = "";

            for ( int x = 0; x < str_chars.Length; x++ ) {
                if ( str_chars[x] == ' ' ) {
                    str_chars_temp = new char[str_chars_result.Length + 3];
                    str_chars_result.CopyTo(str_chars_temp,0);
                    str_chars_temp[str_chars_temp.Length - 3] = '%';
                    str_chars_temp[str_chars_temp.Length - 2] = '2';
                    str_chars_temp[str_chars_temp.Length - 1] = '0';
                    str_chars_result = new char[str_chars_temp.Length];
                    str_chars_temp.CopyTo(str_chars_result,0);
                }
                else {
                    str_chars_temp = new char[str_chars_result.Length + 1];
                    str_chars_result.CopyTo(str_chars_temp,0);
                    str_chars_temp[str_chars_temp.GetUpperBound(0)] = str_chars[x];
                    str_chars_result = new char[str_chars_temp.Length];
                    str_chars_temp.CopyTo(str_chars_result,0);
                }
            }

            result = String.Join("",str_chars_result);
        
            return result;
        }


        /**
         * 
         * @param String str
         * @return String
         */
        public static string urlify_3( string str ) {
            string result = "";

            for ( int x = 0; x < str.Length; x++ ) {
                if ( str[x] == ' ' ) {
                    result += "%20";
                }
                else {
                    result +=  str[x];
                }
            }
        
            return result;
        }


        /**
         * 
         * @param String str
         * @return String
         */
        public static string urlify_4( string str ) {
            List<char> result = new List<char>(str.ToCharArray());

            for ( int x = 0; x < str.Length; x++ ) {
                if ( str[x] == ' ' ) {
                    result.Add('%');
                    result.Add('2');
                    result.Add('0');
                }
                else {
                    result.Add(str[x]);
                }
            }

            return String.Join("",result.ToArray());
        }



        static void Main(string[] args) {
            long   ini    = 0;
            long   fin    = 0;
            string result = "";

            string str = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sagittis nulla a tincidunt eleifend. Nulla eu luctus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse id consequat metus. Aliquam tincidunt sem ante, eu maximus ex commodo quis. Nulla eros dui, faucibus in sagittis eget, mattis vitae ex. Mauris rhoncus consectetur augue, ac congue odio faucibus nec. Duis ac est pulvinar, maximus sem vel, fringilla magna";


            Console.WriteLine($"urlify_1:\n\"{str}\"");
            ini    = DateTimeOffset.Now.ToUnixTimeMilliseconds();
            result = urlify_1(str);
            fin    = DateTimeOffset.Now.ToUnixTimeMilliseconds();
            Console.WriteLine("[" + (fin-ini) + $"] {result}\n");


            Console.WriteLine($"urlify_2:\n\"{str}\"");
            ini    = DateTimeOffset.Now.ToUnixTimeMilliseconds();
            result = urlify_2(str);
            fin    = DateTimeOffset.Now.ToUnixTimeMilliseconds();
            Console.WriteLine("[" + (fin-ini) + $"] {result}\n");


            Console.WriteLine($"urlify_3:\n\"{str}\"");
            ini    = DateTimeOffset.Now.ToUnixTimeMilliseconds();
            result = urlify_3(str);
            fin    = DateTimeOffset.Now.ToUnixTimeMilliseconds();
            Console.WriteLine("[" + (fin-ini) + $"] {result}\n");


            Console.WriteLine($"urlify_4:\n\"{str}\"");
            ini    = DateTimeOffset.Now.ToUnixTimeMilliseconds();
            result = urlify_4(str);
            fin    = DateTimeOffset.Now.ToUnixTimeMilliseconds();
            Console.WriteLine("[" + (fin-ini) + $"] {result}\n");
        }
    }
}