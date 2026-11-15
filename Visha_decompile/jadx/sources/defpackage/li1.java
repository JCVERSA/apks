package defpackage;

public abstract class li1 {
    public static final Boolean a(double d) {
        if (d == 0.0d) {
            return Boolean.FALSE;
        }
        if (d == 1.0d) {
            return Boolean.TRUE;
        }
        return null;
    }

    public static final Boolean b(int i) {
        if (i == 0) {
            return Boolean.FALSE;
        }
        if (i != 1) {
            return null;
        }
        return Boolean.TRUE;
    }

    public static final Boolean c(Number number) {
        y45.j(number, "<this>");
        return number instanceof Double ? a(number.doubleValue()) : b(number.intValue());
    }
}
