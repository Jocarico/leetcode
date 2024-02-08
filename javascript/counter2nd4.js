/**
 * @param {integer} init
 * @return { increment: Function, decrement: Function, reset: Function }
 */

var createCounter = function(init) {
    let count = 0;
    let total = init;
    return {
        increment: function(){
            count++;
            total = init + count;
            return total;
        },
        reset: function(){
            count = 0;
            total = init;
            return total;
        },
        decrement: function(){
            count--;
            total = init + count;
            return total;
        }
    }    
};

/**
 * const counter = createCounter(5)
 * counter.increment(); // 6
 * counter.reset(); // 5
 * counter.decrement(); // 4
 */