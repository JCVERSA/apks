package defpackage;

import java.util.Objects;

public final class f8j {
    public final bnj a;
    public final long b;
    public final long c;
    public final long d;
    public final long e;
    public final boolean f;
    public final boolean g;
    public final boolean h;
    public final boolean i;
    public final boolean j;

    public f8j(bnj bnjVar, long j, long j2, long j3, long j4, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        boolean z6 = true;
        n7g.d(!z5 || z3);
        if (z4 && !z3) {
            z6 = false;
        }
        n7g.d(z6);
        this.a = bnjVar;
        this.b = j;
        this.c = j2;
        this.d = j3;
        this.e = j4;
        this.f = false;
        this.g = false;
        this.h = z3;
        this.i = z4;
        this.j = z5;
    }

    public final f8j a(long j) {
        return j == this.c ? this : new f8j(this.a, this.b, j, this.d, this.e, false, false, this.h, this.i, this.j);
    }

    public final f8j b(long j) {
        return j == this.b ? this : new f8j(this.a, j, this.c, this.d, this.e, false, false, this.h, this.i, this.j);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && f8j.class == obj.getClass()) {
            f8j f8jVar = (f8j) obj;
            if (this.b == f8jVar.b && this.c == f8jVar.c && this.d == f8jVar.d && this.e == f8jVar.e && this.h == f8jVar.h && this.i == f8jVar.i && this.j == f8jVar.j && Objects.equals(this.a, f8jVar.a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() + 527;
        long j = this.e;
        long j2 = this.d;
        return (((((((((((((iHashCode * 31) + ((int) this.b)) * 31) + ((int) this.c)) * 31) + ((int) j2)) * 31) + ((int) j)) * 29791) + (this.h ? 1 : 0)) * 31) + (this.i ? 1 : 0)) * 31) + (this.j ? 1 : 0);
    }
}
