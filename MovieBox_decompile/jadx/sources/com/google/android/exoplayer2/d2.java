package com.google.android.exoplayer2;

final class d2 {

    public final com.google.android.exoplayer2.source.o.b f24185a;

    public final long f24186b;

    public final long f24187c;

    public final long f24188d;

    public final long f24189e;

    public final boolean f24190f;

    public final boolean f24191g;

    public final boolean f24192h;

    public final boolean f24193i;

    d2(com.google.android.exoplayer2.source.o.b bVar, long j10, long j11, long j12, long j13, boolean z10, boolean z11, boolean z12, boolean z13) {
        boolean z14 = true;
        com.google.android.exoplayer2.util.a.a(!z13 || z11);
        com.google.android.exoplayer2.util.a.a(!z12 || z11);
        if (z10 && (z11 || z12 || z13)) {
            z14 = false;
        }
        com.google.android.exoplayer2.util.a.a(z14);
        this.f24185a = bVar;
        this.f24186b = j10;
        this.f24187c = j11;
        this.f24188d = j12;
        this.f24189e = j13;
        this.f24190f = z10;
        this.f24191g = z11;
        this.f24192h = z12;
        this.f24193i = z13;
    }

    public d2 a(long j10) {
        return j10 == this.f24187c ? this : new d2(this.f24185a, this.f24186b, j10, this.f24188d, this.f24189e, this.f24190f, this.f24191g, this.f24192h, this.f24193i);
    }

    public d2 b(long j10) {
        return j10 == this.f24186b ? this : new d2(this.f24185a, j10, this.f24187c, this.f24188d, this.f24189e, this.f24190f, this.f24191g, this.f24192h, this.f24193i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d2.class != obj.getClass()) {
            return false;
        }
        d2 d2Var = (d2) obj;
        return this.f24186b == d2Var.f24186b && this.f24187c == d2Var.f24187c && this.f24188d == d2Var.f24188d && this.f24189e == d2Var.f24189e && this.f24190f == d2Var.f24190f && this.f24191g == d2Var.f24191g && this.f24192h == d2Var.f24192h && this.f24193i == d2Var.f24193i && com.google.android.exoplayer2.util.p0.c(this.f24185a, d2Var.f24185a);
    }

    public int hashCode() {
        return ((((((((((((((((527 + this.f24185a.hashCode()) * 31) + ((int) this.f24186b)) * 31) + ((int) this.f24187c)) * 31) + ((int) this.f24188d)) * 31) + ((int) this.f24189e)) * 31) + (this.f24190f ? 1 : 0)) * 31) + (this.f24191g ? 1 : 0)) * 31) + (this.f24192h ? 1 : 0)) * 31) + (this.f24193i ? 1 : 0);
    }
}
