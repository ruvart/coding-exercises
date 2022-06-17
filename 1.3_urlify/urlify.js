/**
 * This is the solution for the urlify problem, in JavaScript
 * 
 * @author Ruvart, <contacto@ruvart.com>
 */


/**
 * 
 * @param {String} str 
 * @returns String
 */
const urlify_1 = function (str) {

    const str_array = str.split(' ');
    const result    = str_array.join('%20');

    return result;
}


/**
 * 
 * @param {String} str 
 * @returns String
 */
const urlify_2 = function (str) {

    const str_array = str.split('');

    const result = str_array.map(char => ((char == ' ') ? '%20' : char));
    
    return result.join('');
}



const str = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sagittis nulla a tincidunt eleifend. Nulla eu luctus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse id consequat metus. Aliquam tincidunt sem ante, eu maximus ex commodo quis. Nulla eros dui, faucibus in sagittis eget, mattis vitae ex. Mauris rhoncus consectetur augue, ac congue odio faucibus nec. Duis ac est pulvinar, maximus sem vel, fringilla magna";


console.log(`urlify_1:\n"${str}":`);
let d      = new Date();
let ini    = d.getMilliseconds();
let result = urlify_1(str);
    d      = new Date();
let fin    = d.getMilliseconds();
console.log('[' + (fin-ini) + '] "' + result + "\"\n\n");
console.log('');


console.log(`urlify_2:\n"${str}":`);
d      = new Date();
ini    = d.getMilliseconds();
result = urlify_2(str);
d      = new Date();
fin    = d.getMilliseconds();
console.log('[' + (fin-ini) + '] "' + result + "\"\n\n");
console.log('');