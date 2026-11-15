package defpackage;

import android.os.SystemClock;
import androidx.media3.common.C;
import com.google.android.gms.internal.ads.zzfww;
import com.google.android.gms.internal.ads.zzii;
import java.util.List;

public final class o9j {
    public static final bnj u = new bnj(new Object(), -1);
    public final w4f a;
    public final bnj b;
    public final long c;
    public final long d;
    public final int e;
    public final zzii f;
    public final boolean g;
    public final npj h;
    public final arj i;
    public final List j;
    public final bnj k;
    public final boolean l;
    public final int m;
    public final int n;
    public final vwe o;
    public final boolean p = false;
    public volatile long q;
    public volatile long r;
    public volatile long s;
    public volatile long t;

    public o9j(w4f w4fVar, bnj bnjVar, long j, long j2, int i, zzii zziiVar, boolean z, npj npjVar, arj arjVar, List list, bnj bnjVar2, boolean z2, int i2, int i3, vwe vweVar, long j3, long j4, long j5, long j6, boolean z3) {
        this.a = w4fVar;
        this.b = bnjVar;
        this.c = j;
        this.d = j2;
        this.e = i;
        this.f = zziiVar;
        this.g = z;
        this.h = npjVar;
        this.i = arjVar;
        this.j = list;
        this.k = bnjVar2;
        this.l = z2;
        this.m = i2;
        this.n = i3;
        this.o = vweVar;
        this.q = j3;
        this.r = j4;
        this.s = j5;
        this.t = j6;
    }

    public static o9j h(arj arjVar) {
        w4f w4fVar = w4f.a;
        bnj bnjVar = u;
        return new o9j(w4fVar, bnjVar, C.TIME_UNSET, 0L, 1, null, false, npj.d, arjVar, zzfww.zzn(), bnjVar, false, 1, 0, vwe.d, 0L, 0L, 0L, 0L, false);
    }

    public static bnj i() {
        return u;
    }

    public final o9j a(boolean z) {
        return new o9j(this.a, this.b, this.c, this.d, this.e, this.f, z, this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.o, this.q, this.r, this.s, this.t, false);
    }

    public final o9j b(bnj bnjVar) {
        return new o9j(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, bnjVar, this.l, this.m, this.n, this.o, this.q, this.r, this.s, this.t, false);
    }

    public final o9j c(bnj bnjVar, long j, long j2, long j3, long j4, npj npjVar, arj arjVar, List list) {
        bnj bnjVar2 = this.k;
        boolean z = this.l;
        int i = this.m;
        int i2 = this.n;
        vwe vweVar = this.o;
        long j5 = this.q;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        return new o9j(this.a, bnjVar, j2, j3, this.e, this.f, this.g, npjVar, arjVar, list, bnjVar2, z, i, i2, vweVar, j5, j4, j, jElapsedRealtime, false);
    }

    public final o9j d(boolean z, int i, int i2) {
        return new o9j(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, z, i, i2, this.o, this.q, this.r, this.s, this.t, false);
    }

    public final o9j e(zzii zziiVar) {
        return new o9j(this.a, this.b, this.c, this.d, this.e, zziiVar, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.o, this.q, this.r, this.s, this.t, false);
    }

    public final o9j f(int i) {
        return new o9j(this.a, this.b, this.c, this.d, i, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.o, this.q, this.r, this.s, this.t, false);
    }

    public final o9j g(w4f w4fVar) {
        return new o9j(w4fVar, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.o, this.q, this.r, this.s, this.t, false);
    }

    public final boolean j() {
        return this.e == 3 && this.l && this.n == 0;
    }
}
