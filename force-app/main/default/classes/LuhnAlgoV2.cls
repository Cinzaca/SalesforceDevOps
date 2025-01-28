public class LuhnAlgoV2 {

    public static List<String> stringToStringArray(String initialNumber) {
        
       List<String> stringArr = new List<String>();

        for (Integer i = 0; i < initialNumber.length(); i++) {
            String character = initialNumber.substring(i, i+1);
            stringArr.add(character);
        } 
        
        return stringArr;
    }
    
    public static void addFirstNumber(List<String> stringArr) {
        
        Integer firstSum = 0;
        Integer secondSum = 0;
        
        for (Integer i = stringArr.size() - 1; i >= 0; i - 2) {
            
            Integer doubleTempNumber = Integer.valueOf(stringArr.get(i)) * 2;
            
            if (doubleTempNumber > 9 ) {
                
                Integer secondDigit = Math.mod(doubleTempNumber, 10);
                Integer firstDigit = doubleTempNumber / 10;
                
                firstSum = firstSum + (secondDigit + firstDigit);
            } else {
                firstSum = firstSum + doubleTempNumber;
            }
            
            secondSum = secondSum + Integer.valueOf(stringArr.get(i - 1));
        }
        
        System.debug('First Sum: ' + firstSum + ' Second Sum: ' + secondSum);
    }  
}