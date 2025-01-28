public class DataTest {
	public static Date calculateMinimumDate() {
    Date currentDate = Date.today();
    Integer workingDaysToAdd = 5;
    Integer totalDaysToAdd = 0;

        while (workingDaysToAdd > 0) {
            currentDate = currentDate.addDays(1);
            if (!isHoliday(currentDate)) {
                workingDaysToAdd--;
            }
            totalDaysToAdd++;
        }
        
    
        // Adjust the calculated date by adding non-working days
        currentDate = currentDate.addDays(totalDaysToAdd);
        
        return currentDate;
    }
    
    public static Boolean isHoliday(Date d) {
    
    BusinessHours bh = [SELECT Id FROM BusinessHours WHERE IsDefault=true];
    Boolean isWithin= BusinessHours.isWithin(bh.id, d);
    return isWithin;
    }
}