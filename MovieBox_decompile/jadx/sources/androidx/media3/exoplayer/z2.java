package androidx.media3.exoplayer;

import java.util.Objects;

final class z2 {

    public final androidx.media3.exoplayer.source.r.b f13076a;

    public final long f13077b;

    public final long f13078c;

    public final long f13079d;

    public final long f13080e;

    public final boolean f13081f;

    public final boolean f13082g;

    public final boolean f13083h;

    public final boolean f13084i;

    public final boolean f13085j;

    z2(androidx.media3.exoplayer.source.r.b bVar, long j10, long j11, long j12, long j13, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14) {
        boolean z15 = true;
        androidx.media3.common.util.a.a(!z14 || z12);
        androidx.media3.common.util.a.a(!z13 || z12);
        if (z11 && (z12 || z13 || z14)) {
            z15 = false;
        }
        androidx.media3.common.util.a.a(z15);
        this.f13076a = bVar;
        this.f13077b = j10;
        this.f13078c = j11;
        this.f13079d = j12;
        this.f13080e = j13;
        this.f13081f = z10;
        this.f13082g = z11;
        this.f13083h = z12;
        this.f13084i = z13;
        this.f13085j = z14;
    }

    public z2 a(long j10) {
        return j10 == this.f13078c ? this : new z2(this.f13076a, this.f13077b, j10, this.f13079d, this.f13080e, this.f13081f, this.f13082g, this.f13083h, this.f13084i, this.f13085j);
    }

    public z2 b(long j10) {
        return j10 == this.f13077b ? this : new z2(this.f13076a, j10, this.f13078c, this.f13079d, this.f13080e, this.f13081f, this.f13082g, this.f13083h, this.f13084i, this.f13085j);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || z2.class != obj.getClass()) {
            return false;
        }
        z2 z2Var = (z2) obj;
        return this.f13077b == z2Var.f13077b && this.f13078c == z2Var.f13078c && this.f13079d == z2Var.f13079d && this.f13080e == z2Var.f13080e && this.f13081f == z2Var.f13081f && this.f13082g == z2Var.f13082g && this.f13083h == z2Var.f13083h && this.f13084i == z2Var.f13084i && this.f13085j == z2Var.f13085j && Objects.equals(this.f13076a, z2Var.f13076a);
    }

    public int hashCode() {
        return ((((((((((((((((((527 + this.f13076a.hashCode()) * 31) + ((int) this.f13077b)) * 31) + ((int) this.f13078c)) * 31) + ((int) this.f13079d)) * 31) + ((int) this.f13080e)) * 31) + (this.f13081f ? 1 : 0)) * 31) + (this.f13082g ? 1 : 0)) * 31) + (this.f13083h ? 1 : 0)) * 31) + (this.f13084i ? 1 : 0)) * 31) + (this.f13085j ? 1 : 0);
    }
}
