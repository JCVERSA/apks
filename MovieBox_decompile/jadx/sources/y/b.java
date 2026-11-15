package y;

public abstract class b {
    public static final long a(float f10, float f11) {
        return a.b((((long) Float.floatToRawIntBits(f11)) & 4294967295L) | (Float.floatToRawIntBits(f10) << 32));
    }

    public static long b(float f10, float f11, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            f11 = f10;
        }
        return a(f10, f11);
    }
}
