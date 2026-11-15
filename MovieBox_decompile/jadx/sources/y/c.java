package y;

public abstract class c {
    public static final String a(float f10, int i10) {
        if (Float.isNaN(f10)) {
            return "NaN";
        }
        if (Float.isInfinite(f10)) {
            return f10 < 0.0f ? "-Infinity" : "Infinity";
        }
        int iMax = Math.max(i10, 0);
        float fPow = (float) Math.pow(10.0f, iMax);
        float f11 = f10 * fPow;
        int i11 = (int) f11;
        if (f11 - i11 >= 0.5f) {
            i11++;
        }
        float f12 = i11 / fPow;
        return iMax > 0 ? String.valueOf(f12) : String.valueOf((int) f12);
    }
}
