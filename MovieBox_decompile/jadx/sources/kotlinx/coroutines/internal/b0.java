package kotlinx.coroutines.internal;

abstract class b0 {

    private static final int f64881a = Runtime.getRuntime().availableProcessors();

    public static final int a() {
        return f64881a;
    }

    public static final String b(String str) {
        try {
            return System.getProperty(str);
        } catch (SecurityException unused) {
            return null;
        }
    }
}
