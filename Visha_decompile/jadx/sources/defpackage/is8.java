package defpackage;

public final class is8 {
    public long a;
    public long b;
    public long c;
    public long d;
    public long e;

    public final void a(long j) {
        this.e += j;
    }

    public final void b(long j) {
        this.d += j;
    }

    public final void c(long j) {
        this.c += j;
    }

    public final void d(long j) {
        this.a = j;
    }

    public final long e() {
        return this.e;
    }

    public final long f() {
        return this.d;
    }

    public final long g() {
        return this.c;
    }

    public final long h() {
        return Math.max(this.a, this.b) + this.c + this.d + this.e;
    }

    public final void i(long j) {
        this.b = j;
    }

    public final void j() {
        this.c = 0L;
        this.d = 0L;
        this.e = 0L;
        this.a = 0L;
        this.b = 0L;
    }
}
