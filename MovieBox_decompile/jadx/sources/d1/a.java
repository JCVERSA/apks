package d1;

public abstract class a {
    public static float a(float f10, float f11, float f12) {
        if (f10 < f11) {
            return f11;
        }
        return f10 > f12 ? f12 : f10;
    }

    public static int b(int i10, int i11, int i12) {
        if (i10 < i11) {
            return i11;
        }
        return i10 > i12 ? i12 : i10;
    }

    public static long c(long j10, long j11, long j12) {
        if (j10 < j11) {
            return j11;
        }
        return j10 > j12 ? j12 : j10;
    }
}
