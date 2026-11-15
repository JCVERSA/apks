package defpackage;

public abstract class e1a extends d1a {
    public static Double o(String str) {
        y45.j(str, "<this>");
        try {
            if (z29.b.matches(str)) {
                return Double.valueOf(Double.parseDouble(str));
            }
            return null;
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static Float p(String str) {
        y45.j(str, "<this>");
        try {
            if (z29.b.matches(str)) {
                return Float.valueOf(Float.parseFloat(str));
            }
            return null;
        } catch (NumberFormatException unused) {
            return null;
        }
    }
}
