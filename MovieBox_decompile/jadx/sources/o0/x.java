package o0;

import com.cloud.tmc.kernel.constants.TmcConstants;

public abstract class x {
    public static final long a(float f10, long j10) {
        return e(j10, f10);
    }

    public static final long b(float f10) {
        return e(TmcConstants.TEMP_FILE_RUNTIME_MAX_SIZE, f10);
    }

    public static final long c(int i10) {
        return e(TmcConstants.TEMP_FILE_RUNTIME_MAX_SIZE, i10);
    }

    public static final boolean d(long j10) {
        return w.f(j10) == 0;
    }

    public static final long e(long j10, float f10) {
        return w.c(j10 | (((long) Float.floatToIntBits(f10)) & 4294967295L));
    }
}
