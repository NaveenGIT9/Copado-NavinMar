public class LengthCalculator {

    // Method to calculate the length of a string
    public static Integer calculateStringLength(String inputString) {
        if (inputString == null) {
            return 0;
        } else {
            return inputString.length();
        }
    }

    // Method to calculate the length of a list
    public static Integer calculateListLength(List<Object> inputList) {
        if (inputList == null) {
            return 0;
        } else {
            return inputList.size();
        }
    }
}