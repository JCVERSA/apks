package androidx.compose.ui.input.pointer;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class e {

    private final long f4673a;

    private final long f4674b;

    private long f4675c;

    public e(long j10, long j11, long j12, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, j11, j12);
    }

    public final long a() {
        return this.f4675c;
    }

    public final long b() {
        return this.f4674b;
    }

    public final long c() {
        return this.f4673a;
    }

    public String toString() {
        return "HistoricalChange(uptimeMillis=" + this.f4673a + ", position=" + ((Object) y.g.t(this.f4674b)) + ')';
    }

    public e(long j10, long j11, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, j11);
    }

    private e(long j10, long j11) {
        this.f4673a = j10;
        this.f4674b = j11;
        this.f4675c = y.g.f75999b.c();
    }

    private e(long j10, long j11, long j12) {
        this(j10, j11, (DefaultConstructorMarker) null);
        this.f4675c = j12;
    }
}
