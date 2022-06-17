/**
 * This is the solution for the Is unique problem, in Java
 * 
 * @author Ruvart, <contacto@ruvart.com>
 */

import java.util.*;

class is_unique {

    /**
     * Takes the original string and if it's length is less than 2 return true.
     * 
     * If its length is 2 or more takes each char and search for the same char in the substring from the position of this char to the end of the string
     * 
     * @param String str
     * @return Boolean
     */
    public static boolean isUnique_1( String str ) {
        int str_length = str.length();
    
        if ( str_length < 2 ) {
            return true;
        }
    
        for ( int x = 1; x < str_length; x++ ) {
            if ( str.substring(x).contains(Character.toString(str.charAt(x-1))) ) {
                return false;
            }
        }
    
        return true;
    }
    
    
    /**
     * Takes the original string and if it's length is less than 2 return true.
     * 
     * Takes each char of the string and search for it in an array of "unique chars", if the char is found, then return false,
     * if not, then this char is save in the array of unique chars.
     * 
     * @param str
     * @return
     */
    public static boolean isUnique_2( String str ) {
        int str_length = str.length();
        char[] encontrados = new char[0]; 
    
        if ( str_length < 2 ) {
            return true;
        }
    
        for ( int x = 0; x < str_length; x++ ) {
            if ( Arrays.binarySearch(encontrados,str.charAt(x)) >= 0 ) {
                return false;
            }
            encontrados = Arrays.copyOf(encontrados, encontrados.length + 1);
            encontrados[encontrados.length - 1] = str.charAt(x);
        }
    
        return true;
    }


    /**
     * Takes the original string and if it's length is less than 2 return true.
     * 
     * Transform the string in to an array of chars, then remove the first char of the array and search for the same char in the rest of the array.
     * If it is found, then return false; if not, then repeat the actions qith the next char
     * 
     * @param str
     * @return
     */
    public static boolean isUnique_3( String str ) {
        int str_length = str.length();
        char[] letras = str.toCharArray();
        char letra_actual;

        if ( str_length < 2 ) {
            return true;
        }

        for ( int x = 1; x < str_length; x++ ) {
            letra_actual = letras[0];
            letras       = Arrays.copyOfRange(letras,1, letras.length);

            if ( Arrays.binarySearch(letras,letra_actual) >= 0 ) {
                return false;
            }
        }
    
        return true;
    }


    /**
     * 
     * @param str
     * @return
     */
    public static boolean isUnique_4( String str ) {
        int str_length = str.length();
        char[] letras = str.toCharArray();

        if ( str_length < 2 ) {
            return true;
        }

        Arrays.sort(letras);

        for ( int x = 1; x < str_length; x++ ) {
            if ( letras[x-1] == letras[x] ) {
                return false;
            }
        }
    
        return true;
    }


    public static void main(String args[]) {
        Date    hoy    = new Date();
        long    ini    = 0;
        long    fin    = 0;
        boolean result = false;

        String str_1 = "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit";
        String str_2 = "abcdefghijklmnopqrstuvwxyz ";

        System.out.println("isUnique_1 - (" + str_1.length() + ") \"" + str_1 + "\":");
        ini    = hoy.getTime();
        result = isUnique_1(str_1);
        hoy    = new Date();
        fin    = hoy.getTime();
        if ( result ) {
            System.out.println("Son caracteres únicos.\t Tiempo (milisec):" + (fin-ini) + "\n");
        }
        else {
            System.out.println("No son caracteres únicos.\t Tiempo (milisec):" + (fin-ini) + "\n");
        }

        System.out.println("isUnique_1 - (" + str_2.length() + ") \"" + str_2 + "\":");
        ini    = hoy.getTime();
        result = isUnique_1(str_2);
        hoy    = new Date();
        fin    = hoy.getTime();
        if ( result ) {
            System.out.println("Son caracteres únicos.\t Tiempo (milisec):" + (fin-ini) + "\n");
        }
        else {
            System.out.println("No son caracteres únicos.\t Tiempo (milisec):" + (fin-ini) + "\n");
        }



        System.out.println("isUnique_2 - (" + str_1.length() + ") \"" + str_1 + "\":");
        ini    = hoy.getTime();
        result = isUnique_2(str_1);
        hoy    = new Date();
        fin    = hoy.getTime();
        if ( result ) {
            System.out.println("Son caracteres únicos.\t Tiempo (milisec):" + (fin-ini) + "\n");
        }
        else {
            System.out.println("No son caracteres únicos.\t Tiempo (milisec):" + (fin-ini) + "\n");
        }

        System.out.println("isUnique_2 - (" + str_2.length() + ") \"" + str_2 + "\":");
        ini    = hoy.getTime();
        result = isUnique_2(str_2);
        hoy    = new Date();
        fin    = hoy.getTime();
        if ( result ) {
            System.out.println("Son caracteres únicos.\t Tiempo (milisec):" + (fin-ini) + "\n");
        }
        else {
            System.out.println("No son caracteres únicos.\t Tiempo (milisec):" + (fin-ini) + "\n");
        }



        System.out.println("isUnique_3 - (" + str_1.length() + ") \"" + str_1 + "\":");
        ini    = hoy.getTime();
        result = isUnique_3(str_1);
        hoy    = new Date();
        fin    = hoy.getTime();
        if ( result ) {
            System.out.println("Son caracteres únicos.\t Tiempo (milisec):" + (fin-ini) + "\n");
        }
        else {
            System.out.println("No son caracteres únicos.\t Tiempo (milisec):" + (fin-ini) + "\n");
        }

        System.out.println("isUnique_3 - (" + str_2.length() + ") \"" + str_2 + "\":");
        ini    = hoy.getTime();
        result = isUnique_3(str_2);
        hoy    = new Date();
        fin    = hoy.getTime();
        if ( result ) {
            System.out.println("Son caracteres únicos.\t Tiempo (milisec):" + (fin-ini) + "\n");
        }
        else {
            System.out.println("No son caracteres únicos.\t Tiempo (milisec):" + (fin-ini) + "\n");
        }



        System.out.println("isUnique_4 - (" + str_1.length() + ") \"" + str_1 + "\":");
        ini    = hoy.getTime();
        result = isUnique_4(str_1);
        hoy    = new Date();
        fin    = hoy.getTime();
        if ( result ) {
            System.out.println("Son caracteres únicos.\t Tiempo (milisec):" + (fin-ini) + "\n");
        }
        else {
            System.out.println("No son caracteres únicos.\t Tiempo (milisec):" + (fin-ini) + "\n");
        }

        System.out.println("isUnique_4 - (" + str_2.length() + ") \"" + str_2 + "\":");
        ini    = hoy.getTime();
        result = isUnique_4(str_2);
        hoy    = new Date();
        fin    = hoy.getTime();
        if ( result ) {
            System.out.println("Son caracteres únicos.\t Tiempo (milisec):" + (fin-ini) + "\n");
        }
        else {
            System.out.println("No son caracteres únicos.\t Tiempo (milisec):" + (fin-ini) + "\n");
        }
    }
}


