package defpackage;

public abstract class ae3 {
    public static final y7a a = new y7a("REMOVED_TASK");
    public static final y7a b = new y7a("CLOSED_EMPTY");

    public static final long c(long j) {
        if (j <= 0) {
            return 0L;
        }
        if (j >= 9223372036854L) {
            return Long.MAX_VALUE;
        }
        return 1000000 * j;
    }
}
