public class StringManipulator {
 
    public static String concatenateStrings(String str1, String str2) {
        return str1 + str2;
    }
 
    public static String reverseString(String input) {
        return new String(String.valueOf(input).getChars().reverse());
    }
}
