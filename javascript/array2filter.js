/**
 * @param {number[]} arr
 * @param {Function} fn
 * @return {number[]}
 */
var filter = function(arr, fn) {
    const newArray = [];
    //of is to obtain the value of the array as n
    //in is to obtain the index of the array
    for (let i = 0; i < arr.length; i++){
        if (fn(arr[i], i)){
            newArray.push(arr[i]);
        }

    }
    return newArray;
};