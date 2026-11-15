package kotlinx.coroutines;

public abstract class h1 {

    private static final kotlinx.coroutines.internal.z f64865a = new kotlinx.coroutines.internal.z("REMOVED_TASK");

    private static final kotlinx.coroutines.internal.z f64866b = new kotlinx.coroutines.internal.z("CLOSED_EMPTY");

    public static final long c(long j10) {
        if (j10 <= 0) {
            return 0L;
        }
        if (j10 >= 9223372036854L) {
            return Long.MAX_VALUE;
        }
        return 1000000 * j10;
    }
}
