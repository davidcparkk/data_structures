module.exports = { 
 //param A : array of integers
 //return a array of integers
    maxset : function(A){
        var subArrays = [];
        // console.log(subArrays);
        var currentStartingIdx;
        var currentEndingIdx;
        
        for (i = 0; i < A.length; i++){
            if (A[i] >= 0 && currentStartingIdx === undefined){
                
                currentStartingIdx = i;
                currentEndingIdx = i;

            } else if (A[i] >= 0) { 
                currentEndingIdx = i;
                if (currentEndingIdx === A.length-1){
                  subArrays.push(A.slice(currentStartingIdx,currentEndingIdx+1))
                }
            } else {
                if (currentStartingIdx !== undefined && currentEndingIdx!== undefined){
                    subArrays.push(A.slice(currentStartingIdx,currentEndingIdx+1))
                }
                currentStartingIdx = undefined;
                currentEndingIdx = undefined;
            }
        }
        
        // console.log(subArrays);
        var maxSubArray =[];
        var maxSubArraySum;
        
        function getSum(total,num){
            return total + num;
        }
        
        for (j = 0; j < subArrays.length; j ++) {
            var currentMax = subArrays[j].reduce(getSum,0);
            if (maxSubArraySum === undefined || currentMax > maxSubArraySum){
                maxSubArraySum = currentMax;
                maxSubArray = subArrays[j];
            }
            
        }
        
        // console.log(maxSubArray);
        return maxSubArray;
        
        
    }
};