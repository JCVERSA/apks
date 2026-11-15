package fr;

public class b {
    public static int a(String str) {
        return b(str, 0);
    }

    public static int b(String str, int i10) {
        try {
            return Integer.valueOf(str).intValue();
        } catch (Exception unused) {
            return i10;
        }
    }
}
