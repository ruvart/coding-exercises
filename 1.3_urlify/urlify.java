/**
 * This is the solution for the urlify problem, in Java
 * 
 * @author Ruvart, <contacto@ruvart.com>
 */

import java.util.*;

public class urlify {
    
    /**
     * 
     * @param String str
     * @return String
     */
    public static String urlify_1( String str ) {
        String[] blocks = str.split(" ");
        String result = String.join("%20",blocks);
    
        return result;
    }


    /**
     * 
     * @param String str
     * @return String
     */
    public static String urlify_2( String str ) {
        char[] str_chars = str.toCharArray();
        char[] str_chars_result = new char[0];
        String result = "";

        for ( int x = 0; x < str_chars.length; x++ ) {
            if ( str_chars[x] == ' ' ) {
                str_chars_result = Arrays.copyOf(str_chars_result, str_chars_result.length + 3);
                str_chars_result[str_chars_result.length - 3] = '%';
                str_chars_result[str_chars_result.length - 2] = '2';
                str_chars_result[str_chars_result.length - 1] = '0';
            }
            else {
                str_chars_result = Arrays.copyOf(str_chars_result, str_chars_result.length + 1);
                str_chars_result[str_chars_result.length - 1] = str_chars[x];
            }
        }

        result = String.valueOf(str_chars_result);
    
        return result;
    }


    /**
     * 
     * @param String str
     * @return String
     */
    public static String urlify_3( String str ) {
        String result = "";

        for ( int x = 0; x < str.length(); x++ ) {
            if ( str.charAt(x) == ' ' ) {
                result += "%20";
            }
            else {
                result += str.charAt(x);//String.valueOf(str.charAt(x));
            }
        }
    
        return result;
    }


    /**
     * 
     * @param String str
     * @return String
     */
    public static String urlify_4( String str ) {
        StringBuilder str_builder = new StringBuilder();
        String        result      = "";

        for ( int x = 0; x < str.length(); x++ ) {
            if ( str.charAt(x) == ' ' ) {
                str_builder.append("%20");
            }
            else {
                str_builder.append(str.charAt(x));
            }
        }

        result = str_builder.toString();
    
        return result;
    }



    public static void main(String args[]) {
        Date   hoy    = new Date();
        long   ini    = 0;
        long   fin    = 0;
        String result = "";

        String str = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sagittis nulla a tincidunt eleifend. Nulla eu luctus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse id consequat metus. Aliquam tincidunt sem ante, eu maximus ex commodo quis. Nulla eros dui, faucibus in sagittis eget, mattis vitae ex. Mauris rhoncus consectetur augue, ac congue odio faucibus nec. Duis ac est pulvinar, maximus sem vel, fringilla magna";


        System.out.println("urlify_1:\n\"" + str + "\"");
        ini    = hoy.getTime();
        result = urlify_1(str);
        hoy    = new Date();
        fin    = hoy.getTime();
        System.out.println("[" + (fin-ini) + "] " + result + "\n");


        System.out.println("urlify_2:\n\"" + str + "\"");
        ini    = hoy.getTime();
        result = urlify_2(str);
        hoy    = new Date();
        fin    = hoy.getTime();
        System.out.println("[" + (fin-ini) + "] " + result + "\n");


        System.out.println("urlify_3:\n\"" + str + "\"");
        ini    = hoy.getTime();
        result = urlify_3(str);
        hoy    = new Date();
        fin    = hoy.getTime();
        System.out.println("[" + (fin-ini) + "] " + result + "\n");


        System.out.println("urlify_4:\n\"" + str + "\"");
        ini    = hoy.getTime();
        result = urlify_4(str);
        hoy    = new Date();
        fin    = hoy.getTime();
        System.out.println("[" + (fin-ini) + "] " + result + "\n");
    }

}
