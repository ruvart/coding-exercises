/**
 * This is the solution for the Is unique problem, in JavaScript
 * 
 * @author Ruvart, <contacto@ruvart.com>
 */


/**
 * If the string length is less than 2 return true.
 * 
 * For each char in the string search for the same in the substring from the position of this char to the end of the string
 * 
 * @param {String} str 
 * @returns Boolean
 */
const isUnique_1 = function (str) {
    const str_length = str.length;

    if ( str_length < 2 ) {
        return true;
    }

    for ( let x = 1; x < str_length; x++ ) {
        if ( str.includes(str[x-1],x) ) {
            return false;
        }
    }

    return true
}


/**
 * If the string length is less than 2 return true.
 * 
 * Search each char in the object of found chars (as a key), if found then return false, if not, then add this char as a propperty to the object.
 * 
 * @param {String} str 
 * @returns Boolean
 */
const isUnique_2 = function (str) {
    const str_length = str.length;
    let encontrados = {};

    if ( str_length < 2 ) {
        return true;
    }

    for ( let x = 0; x < str_length; x++ ) {
        if ( typeof encontrados[str[x]] != 'undefined' ) {
            return false;
        }
        
        encontrados[str[x]] = true;
    }

    return true
}


/**
 * If the string length is less than 2 return true.
 * 
 * Search each char in the array of found chars, if found then return false, if not, then add this char at the end of the array of found chars.
 * 
 * @param {String} str 
 * @returns Boolean
 */
const isUnique_3 = function (str) {
    const str_length = str.length;
    let encontrados = [];

    if ( str_length < 2 ) {
        return true;
    }

    for ( let x = 0; x < str_length; x++ ) {
        if ( encontrados.includes(str[x]) ) {
            return false;
        }
        
        encontrados.push(str[x]);
    }

    return true
}


/**
 * If the string length is less than 2 return true.
 * 
 * Transform the string in array, then filter the array searching if there is a copy of each char in the same array.
 * If the length of the array of unique chars is different of the length of the string return false, else return true.
 * 
 * @param {String} str 
 * @returns Boolean
 */
const isUnique_4 = function (str) {
    const str_length = str.length;

    if ( str_length < 2 ) {
        return true;
    }

    let str_array        = str.split('');
    let str_array_unique = str_array.filter((tchar,tindex,tarray) => { return !tarray.includes(tchar,tindex+1) })

    if ( str_array_unique.length != str_length ) {
        return false;
    }

    return true;
}


/**
 * 
 * @param {String} str 
 * @returns Boolean
 */
const isUnique_5 = function (str) {
    const str_length = str.length;

    if ( str_length < 2 ) {
        return true;
    }

    let str_array = str.split('');
    str_array.sort();

    for ( let x = 1; x < str_length; x++ ) {
        if ( str_array[x-1] == str_array[x] ) {
            return false;
        }
    }

    return true;
}


const str_1 = "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit";
const str_2 = "abcdefghijklmnopqrstuvwxyz ";



console.log(`isUnique_1 - (${str_1.length}) "${str_1}":`);
let d      = new Date();
let ini    = d.getMilliseconds();
let result = isUnique_1(str_1);
    d      = new Date();
let fin    = d.getMilliseconds();
if ( result ) {
    console.log('Son caracteres únicos.\t Tiempo (milisec): ' + (fin-ini)) + "\n\n";
    console.log('');
}
else {
    console.log('No son caracteres únicos.\t Tiempo (milisec): ' + (fin-ini)) + "\n\n";
    console.log('');
}

console.log(`isUnique_1 - (${str_2.length}) "${str_2}":`);
d      = new Date();
ini    = d.getMilliseconds();
result = isUnique_1(str_2);
d      = new Date();
fin    = d.getMilliseconds();
if ( result ) {
    console.log('Son caracteres únicos.\t Tiempo (milisec): ' + (fin-ini)) + "\n\n";
    console.log('');
}
else {
    console.log('No son caracteres únicos.\t Tiempo (milisec): ' + (fin-ini)) + "\n\n";
    console.log('');
}


console.log(`isUnique_2 - (${str_1.length}) "${str_1}":`);
d      = new Date();
ini    = d.getMilliseconds();
result = isUnique_2(str_1);
d      = new Date();
fin    = d.getMilliseconds();
if ( result ) {
    console.log('Son caracteres únicos.\t Tiempo (milisec): ' + (fin-ini)) + "\n\n";
    console.log('');
}
else {
    console.log('No son caracteres únicos.\t Tiempo (milisec): ' + (fin-ini)) + "\n\n";
    console.log('');
}

console.log(`isUnique_2 - (${str_2.length}) "${str_2}":`);
d      = new Date();
ini    = d.getMilliseconds();
result = isUnique_2(str_2);
d      = new Date();
fin    = d.getMilliseconds();
if ( result ) {
    console.log('Son caracteres únicos.\t Tiempo (milisec): ' + (fin-ini)) + "\n\n";
    console.log('');
}
else {
    console.log('No son caracteres únicos.\t Tiempo (milisec): ' + (fin-ini)) + "\n\n";
    console.log('');
}


console.log(`isUnique_3 - (${str_1.length}) "${str_1}":`);
d      = new Date();
ini    = d.getMilliseconds();
result = isUnique_3(str_1);
d      = new Date();
fin    = d.getMilliseconds();
if ( result ) {
    console.log('Son caracteres únicos.\t Tiempo (milisec): ' + (fin-ini)) + "\n\n";
    console.log('');
}
else {
    console.log('No son caracteres únicos.\t Tiempo (milisec): ' + (fin-ini)) + "\n\n";
    console.log('');
}

console.log(`isUnique_3 - (${str_2.length}) "${str_2}":`);
d      = new Date();
ini    = d.getMilliseconds();
result = isUnique_3(str_2);
d      = new Date();
fin    = d.getMilliseconds();
if ( result ) {
    console.log('Son caracteres únicos.\t Tiempo (milisec): ' + (fin-ini)) + "\n\n";
    console.log('');
}
else {
    console.log('No son caracteres únicos.\t Tiempo (milisec): ' + (fin-ini)) + "\n\n";
    console.log('');
}


console.log(`isUnique_4 - (${str_1.length}) "${str_1}":`);
d      = new Date();
ini    = d.getMilliseconds();
result = isUnique_4(str_1);
d      = new Date();
fin    = d.getMilliseconds();
if ( result ) {
    console.log('Son caracteres únicos.\t Tiempo (milisec): ' + (fin-ini)) + "\n\n";
    console.log('');
}
else {
    console.log('No son caracteres únicos.\t Tiempo (milisec): ' + (fin-ini)) + "\n\n";
    console.log('');
}

console.log(`isUnique_4 - (${str_2.length}) "${str_2}":`);
d      = new Date();
ini    = d.getMilliseconds();
result = isUnique_4(str_2);
d      = new Date();
fin    = d.getMilliseconds();
if ( result ) {
    console.log('Son caracteres únicos.\t Tiempo (milisec): ' + (fin-ini)) + "\n\n";
    console.log('');
}
else {
    console.log('No son caracteres únicos.\t Tiempo (milisec): ' + (fin-ini)) + "\n\n";
    console.log('');
}


console.log(`isUnique_5 - (${str_1.length}) "${str_1}":`);
d      = new Date();
ini    = d.getMilliseconds();
result = isUnique_5(str_1);
d      = new Date();
fin    = d.getMilliseconds();
if ( result ) {
    console.log('Son caracteres únicos.\t Tiempo (milisec): ' + (fin-ini)) + "\n\n";
    console.log('');
}
else {
    console.log('No son caracteres únicos.\t Tiempo (milisec): ' + (fin-ini)) + "\n\n";
    console.log('');
}

console.log(`isUnique_5 - (${str_2.length}) "${str_2}":`);
d      = new Date();
ini    = d.getMilliseconds();
result = isUnique_5(str_2);
d      = new Date();
fin    = d.getMilliseconds();
if ( result ) {
    console.log('Son caracteres únicos.\t Tiempo (milisec): ' + (fin-ini)) + "\n\n";
    console.log('');
}
else {
    console.log('No son caracteres únicos.\t Tiempo (milisec): ' + (fin-ini)) + "\n\n";
    console.log('');
}