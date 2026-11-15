package defpackage;

public abstract class th8 {
    public static final long a(long j, long j2) {
        return (j / j2) * j2;
    }

    public static final long b(long j) {
        if (j < 0) {
            return 0L;
        }
        if (j < 100) {
            return a(j, 20L);
        }
        if (j < 1000) {
            return a(j, 100L);
        }
        if (j < 2000) {
            return a(j, 200L);
        }
        if (j < 5000) {
            return a(j, 500L);
        }
        if (j < 10000) {
            return a(j, 1000L);
        }
        if (j < 20000) {
            return a(j, 2000L);
        }
        if (j < 50000) {
            return a(j, 5000L);
        }
        return 50000L;
    }
}
