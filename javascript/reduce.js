/**
 * @param {number[]} nums
 * @param {Function} fn
 * @param {number} init
 * @return {number}
 */

let nums = [1,2,3,4]
fn = function sum(accum, curr) { return accum + curr; }
let init = 0
let total = 0

var reduce = function(nums, fn, init) {
    if (nums.length === 0){
        return init;
    }
    for( let i in nums){
        total = fn(init,nums[i])
        init = total
        
    }
    return total;
};
reduce(nums,fn,init)