/**
 * @param {string} val
 * @return {Object}
 */
var expect = function(val1) {
    var result = null;
    
    var toBe = function(val2){
        if(val1 === val2){
            result = true;
        }
    }
    var NotToBe = function(val2){
        
    }
    return {
        "value": result
    }
    // true
};

console.log(expect(5).toBe(5))