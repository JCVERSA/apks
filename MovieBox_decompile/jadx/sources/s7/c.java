package s7;

public class c {
    public static String a(int i10) {
        if (i10 == 2) {
            return "VERBOSE";
        }
        if (i10 == 3) {
            return "DEBUG";
        }
        if (i10 == 4) {
            return "INFO";
        }
        if (i10 == 5) {
            return "WARN";
        }
        if (i10 == 6) {
            return "ERROR";
        }
        if (i10 < 2) {
            return "VERBOSE-" + (2 - i10);
        }
        return "ERROR+" + (i10 - 6);
    }

    public static String b(int i10) {
        if (i10 == 2) {
            return "V";
        }
        if (i10 == 3) {
            return "D";
        }
        if (i10 == 4) {
            return "I";
        }
        if (i10 == 5) {
            return "W";
        }
        if (i10 == 6) {
            return "E";
        }
        if (i10 < 2) {
            return "V-" + (2 - i10);
        }
        return "E+" + (i10 - 6);
    }
}
