public class Main {
    
    public static Boolean luhnAlgoVerify(Integer[] PA_number) {
        Integer sumOfOdds = 0;
        Integer sumOfEvens = 0;
        
        for (Integer i = PA_number.size() - 1; i >= 0; i--) {
            if (math.mod(i, 2) != 0) {
                sumOfOdds += PA_number[i];
            } else {
                sumOfEvens += splitTheNumber(PA_number[i]);
            }
        }
        
        Integer totalSum = sumOfOdds + sumOfEvens;
        
        return math.mod(totalSum, 10) == 0;
    }
    
    public static String luhnAlgoGetTwoDigits(Integer[] PA_number) {
        Integer sumOfOdds = 0;
        Integer sumOfEvens = 0;
        
        for (Integer i = PA_number.size() - 1; i >= 0; i--) {
            if (math.mod(i, 2) != 0) {
                sumOfOdds += PA_number[i];
            } else {
                sumOfEvens += splitTheNumber(PA_number[i]);
            }
        }
        
        Integer totalSum = sumOfOdds + sumOfEvens;
        String sTotalSum = '';
        
        if (totalSum >= 0 && totalSum < 10) {
            sTotalSum = '0' + String.valueOf(totalSum);
        } else if (totalsum >= 10) {
            sTotalSum = String.valueOf(totalSum);
        }
        
        System.debug('Valoarea numerica de doua cifre este: ' + sTotalSum);
        
        return sTotalSum;
    }
    
    public static Integer splitTheNumber(Integer numberToInsert) {
        
        Integer splitNumberSum = 0;
        Integer numberTimesTwo = numberToInsert * 2;
        
        if (numberToInsert >= 5 && numberToInsert < 10) {
            Integer lastDigit = math.mod(numberTimesTwo, 10);
            numberTimesTwo = numberTimesTwo / 10;
            Integer firstDigit = numberTimesTwo;
            
            splitNumberSum = firstDigit + lastDigit;
        } else if(numberToInsert >=0 && numberToInsert < 5) {
            splitNumberSum = numberTimesTwo;
        }
        
        return splitNumberSum;
    }
    
    public static void isValidOrNot(Boolean b) {
        
        if (b == true) {
            System.debug('Cardul de credit este este valid');
        } else {
            System.debug('Cardul de credit este invalid');
        }
    }
}