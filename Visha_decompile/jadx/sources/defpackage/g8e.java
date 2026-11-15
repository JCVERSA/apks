package defpackage;

import androidx.media3.common.C;

public final class g8e {
    public static final g8e d = new g8e(-3, C.TIME_UNSET, -1);
    public final int a;
    public final long b;
    public final long c;

    public g8e(int i, long j, long j2) {
        this.a = i;
        this.b = j;
        this.c = j2;
    }

    public static g8e d(long j, long j2) {
        return new g8e(-1, j, j2);
    }

    public static g8e e(long j) {
        return new g8e(0, C.TIME_UNSET, j);
    }

    public static g8e f(long j, long j2) {
        return new g8e(-2, j, j2);
    }
}
