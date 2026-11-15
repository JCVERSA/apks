package defpackage;

import com.google.android.exoplayer2.source.i;

public final class yk6 {
    public final i.b a;
    public final long b;
    public final long c;
    public final long d;
    public final long e;
    public final boolean f;
    public final boolean g;
    public final boolean h;
    public final boolean i;

    public yk6(i.b bVar, long j, long j2, long j3, long j4, boolean z, boolean z2, boolean z3, boolean z4) {
        boolean z5 = true;
        zi.a(!z4 || z2);
        zi.a(!z3 || z2);
        if (z && (z2 || z3 || z4)) {
            z5 = false;
        }
        zi.a(z5);
        this.a = bVar;
        this.b = j;
        this.c = j2;
        this.d = j3;
        this.e = j4;
        this.f = z;
        this.g = z2;
        this.h = z3;
        this.i = z4;
    }

    public yk6 a(long j) {
        return j == this.c ? this : new yk6(this.a, this.b, j, this.d, this.e, this.f, this.g, this.h, this.i);
    }

    public yk6 b(long j) {
        return j == this.b ? this : new yk6(this.a, j, this.c, this.d, this.e, this.f, this.g, this.h, this.i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || yk6.class != obj.getClass()) {
            return false;
        }
        yk6 yk6Var = (yk6) obj;
        return this.b == yk6Var.b && this.c == yk6Var.c && this.d == yk6Var.d && this.e == yk6Var.e && this.f == yk6Var.f && this.g == yk6Var.g && this.h == yk6Var.h && this.i == yk6Var.i && blb.c(this.a, yk6Var.a);
    }

    public int hashCode() {
        return ((((((((((((((((527 + this.a.hashCode()) * 31) + ((int) this.b)) * 31) + ((int) this.c)) * 31) + ((int) this.d)) * 31) + ((int) this.e)) * 31) + (this.f ? 1 : 0)) * 31) + (this.g ? 1 : 0)) * 31) + (this.h ? 1 : 0)) * 31) + (this.i ? 1 : 0);
    }
}
