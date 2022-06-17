/**
 * This is the solution for the Check permutation problem, in Java
 * 
 * @author Ruvart, <contacto@ruvart.com>
 */

import java.util.*;

class check_permutation {
    
    /**
     * Uses the array sort to order the arrays (formed from the strings), and then compared both
     * 
     * @param String str_1
     * @param String str_2
     * @return Boolean
     */
    public static boolean checkPermutation_1(String str_1,String str_2) {
        int  str_1_length  = str_1.length();
        char[] str_1_chars = str_1.toCharArray();
        char[] str_2_chars = str_2.toCharArray();

        if ( str_1_length != str_2.length() ) {
            return false;
        }

        Arrays.sort(str_1_chars);
        Arrays.sort(str_2_chars);

        for ( int x = 0; x < str_1_length; x++ ) {
            if ( str_1_chars[x] != str_2_chars[x] ) {
                return false;
            }
        }

        return true;
    }


    /**
     * Uses the array sort to order the arrays (formed from the strings), then transform those arrays in string and compare them
     * 
     * @param String str_1
     * @param String str_2
     * @return Boolean
     */
    public static boolean checkPermutation_2(String str_1,String str_2) {
        int  str_1_length  = str_1.length();
        char[] str_1_chars = str_1.toCharArray();
        char[] str_2_chars = str_2.toCharArray();
        String new_str_1;
        String new_str_2;

        if ( str_1_length != str_2.length() ) {
            return false;
        }

        Arrays.sort(str_1_chars);
        Arrays.sort(str_2_chars);

        new_str_1 = String.valueOf(str_1_chars);
        new_str_2 = String.valueOf(str_2_chars);

        if ( !new_str_1.equals(new_str_2) ) {
            return false;
        }

        return true;
    }


    public static void main(String args[]) {
        Date    hoy    = new Date();
        long    ini    = 0;
        long    fin    = 0;
        boolean result = false;

        String str_1 = "1234567891011121314151617181920";
        String str_2 = "1678011718191213149115162345120";
        String str_3 = "1234567891011121314151617181920";
        String str_4 = "1234567891022221314151617181920";

        System.out.println("checkPermutation_1\n\"" + str_1 + "\"\n\"" + str_2 + "\"\nResult:");
        ini    = hoy.getTime();
        result = checkPermutation_1(str_1,str_2);
        hoy    = new Date();
        fin    = hoy.getTime();
        if ( result ) {
            System.out.println("Valid permuted strings.\t Time (milisec):" + (fin-ini) + "\n");
        }
        else {
            System.out.println("Not valid permuted strings.\t Tiempo (milisec):" + (fin-ini) + "\n");
        }

        System.out.println("checkPermutation_1\n\"" + str_3 + "\"\n\"" + str_4 + "\"\nResult:");
        ini    = hoy.getTime();
        result = checkPermutation_1(str_3,str_4);
        hoy    = new Date();
        fin    = hoy.getTime();
        if ( result ) {
            System.out.println("Valid permuted strings.\t Time (milisec):" + (fin-ini) + "\n");
        }
        else {
            System.out.println("Not valid permuted strings.\t Tiempo (milisec):" + (fin-ini) + "\n");
        }


        System.out.println("checkPermutation_2\n\"" + str_1 + "\"\n\"" + str_2 + "\"\nResult:");
        ini    = hoy.getTime();
        result = checkPermutation_2(str_1,str_2);
        hoy    = new Date();
        fin    = hoy.getTime();
        if ( result ) {
            System.out.println("Valid permuted strings.\t Time (milisec):" + (fin-ini) + "\n");
        }
        else {
            System.out.println("Not valid permuted strings.\t Tiempo (milisec):" + (fin-ini) + "\n");
        }

        System.out.println("checkPermutation_2\n\"" + str_3 + "\"\n\"" + str_4 + "\"\nResult:");
        ini    = hoy.getTime();
        result = checkPermutation_2(str_3,str_4);
        hoy    = new Date();
        fin    = hoy.getTime();
        if ( result ) {
            System.out.println("Valid permuted strings.\t Time (milisec):" + (fin-ini) + "\n");
        }
        else {
            System.out.println("Not valid permuted strings.\t Tiempo (milisec):" + (fin-ini) + "\n");
        }
    }

}
