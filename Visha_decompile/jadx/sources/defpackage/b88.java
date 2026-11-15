package defpackage;

import androidx.media3.common.C;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.a0;
import com.google.android.exoplayer2.s;
import com.google.android.exoplayer2.source.i;
import com.google.common.collect.ImmutableList;
import java.util.List;

public final class b88 {
    public static final i.b s = new i.b(new Object());
    public final a0 a;
    public final i.b b;
    public final long c;
    public final long d;
    public final int e;
    public final ExoPlaybackException f;
    public final boolean g;
    public final eva h;
    public final sva i;
    public final List j;
    public final i.b k;
    public final boolean l;
    public final int m;
    public final s n;
    public final boolean o;
    public volatile long p;
    public volatile long q;
    public volatile long r;

    public b88(a0 a0Var, i.b bVar, long j, long j2, int i, ExoPlaybackException exoPlaybackException, boolean z, eva evaVar, sva svaVar, List list, i.b bVar2, boolean z2, int i2, s sVar, long j3, long j4, long j5, boolean z3) {
        this.a = a0Var;
        this.b = bVar;
        this.c = j;
        this.d = j2;
        this.e = i;
        this.f = exoPlaybackException;
        this.g = z;
        this.h = evaVar;
        this.i = svaVar;
        this.j = list;
        this.k = bVar2;
        this.l = z2;
        this.m = i2;
        this.n = sVar;
        this.p = j3;
        this.q = j4;
        this.r = j5;
        this.o = z3;
    }

    public static b88 j(sva svaVar) {
        a0 a0Var = a0.b;
        i.b bVar = s;
        return new b88(a0Var, bVar, C.TIME_UNSET, 0L, 1, null, false, eva.e, svaVar, ImmutableList.of(), bVar, false, 0, s.e, 0L, 0L, 0L, false);
    }

    public static i.b k() {
        return s;
    }

    public b88 a(boolean z) {
        return new b88(this.a, this.b, this.c, this.d, this.e, this.f, z, this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.p, this.q, this.r, this.o);
    }

    public b88 b(i.b bVar) {
        return new b88(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, bVar, this.l, this.m, this.n, this.p, this.q, this.r, this.o);
    }

    public b88 c(i.b bVar, long j, long j2, long j3, long j4, eva evaVar, sva svaVar, List list) {
        return new b88(this.a, bVar, j2, j3, this.e, this.f, this.g, evaVar, svaVar, list, this.k, this.l, this.m, this.n, this.p, j4, j, this.o);
    }

    public b88 d(boolean z, int i) {
        return new b88(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, z, i, this.n, this.p, this.q, this.r, this.o);
    }

    public b88 e(ExoPlaybackException exoPlaybackException) {
        return new b88(this.a, this.b, this.c, this.d, this.e, exoPlaybackException, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.p, this.q, this.r, this.o);
    }

    public b88 f(s sVar) {
        return new b88(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, sVar, this.p, this.q, this.r, this.o);
    }

    public b88 g(int i) {
        return new b88(this.a, this.b, this.c, this.d, i, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.p, this.q, this.r, this.o);
    }

    public b88 h(boolean z) {
        return new b88(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.p, this.q, this.r, z);
    }

    public b88 i(a0 a0Var) {
        return new b88(a0Var, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.p, this.q, this.r, this.o);
    }
}
