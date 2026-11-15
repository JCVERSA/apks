package defpackage;

public abstract class tx2 {
    public static double a(double d) {
        xd8.d(!Double.isNaN(d));
        return Math.max(d, 0.0d);
    }

    public static long b(double d) {
        xd8.e(c(d), "not a normal value");
        int exponent = Math.getExponent(d);
        long jDoubleToRawLongBits = Double.doubleToRawLongBits(d) & 4503599627370495L;
        return exponent == -1023 ? jDoubleToRawLongBits << 1 : jDoubleToRawLongBits | 4503599627370496L;
    }

    public static boolean c(double d) {
        return Math.getExponent(d) <= 1023;
    }

    public static boolean d(double d) {
        return Math.getExponent(d) >= -1022;
    }

    public static double e(double d) {
        return Double.longBitsToDouble((Double.doubleToRawLongBits(d) & 4503599627370495L) | 4607182418800017408L);
    }
}
