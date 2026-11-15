package defpackage;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class by2 {
    public long a;
    public String b;
    public final long c;
    public long d;
    public long e;
    public long f;

    public by2(long j, String str, long j2, long j3, long j4, long j5) {
        y45.j(str, "taskId");
        this.a = j;
        this.b = str;
        this.c = j2;
        this.d = j3;
        this.e = j4;
        this.f = j5;
    }

    public final long a() {
        return this.c;
    }

    public final long b() {
        return this.f;
    }

    public final long c() {
        return this.a;
    }

    public final long d() {
        return this.d;
    }

    public final long e() {
        return this.e;
    }

    public final String f() {
        return this.b;
    }

    public final void g(long j) {
        this.a = j;
    }

    public final void h(long j) {
        this.d = j;
    }

    public by2(long j, String str, long j2, long j3, long j4, long j5, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0L : j, str, j2, (i & 8) != 0 ? 0L : j3, (i & 16) != 0 ? 0L : j4, (i & 32) != 0 ? 0L : j5);
    }
}
