package com.google.android.exoplayer2;

import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.List;

final class m2 {

    private static final com.google.android.exoplayer2.source.o.b f24632s = new com.google.android.exoplayer2.source.o.b(new Object());

    public final l3 f24633a;

    public final com.google.android.exoplayer2.source.o.b f24634b;

    public final long f24635c;

    public final long f24636d;

    public final int f24637e;

    public final ExoPlaybackException f24638f;

    public final boolean f24639g;

    public final v9.y f24640h;

    public final na.c0 f24641i;

    public final List f24642j;

    public final com.google.android.exoplayer2.source.o.b f24643k;

    public final boolean f24644l;

    public final int f24645m;

    public final o2 f24646n;

    public final boolean f24647o;

    public volatile long f24648p;

    public volatile long f24649q;

    public volatile long f24650r;

    public m2(l3 l3Var, com.google.android.exoplayer2.source.o.b bVar, long j10, long j11, int i10, ExoPlaybackException exoPlaybackException, boolean z10, v9.y yVar, na.c0 c0Var, List list, com.google.android.exoplayer2.source.o.b bVar2, boolean z11, int i11, o2 o2Var, long j12, long j13, long j14, boolean z12) {
        this.f24633a = l3Var;
        this.f24634b = bVar;
        this.f24635c = j10;
        this.f24636d = j11;
        this.f24637e = i10;
        this.f24638f = exoPlaybackException;
        this.f24639g = z10;
        this.f24640h = yVar;
        this.f24641i = c0Var;
        this.f24642j = list;
        this.f24643k = bVar2;
        this.f24644l = z11;
        this.f24645m = i11;
        this.f24646n = o2Var;
        this.f24648p = j12;
        this.f24649q = j13;
        this.f24650r = j14;
        this.f24647o = z12;
    }

    public static m2 j(na.c0 c0Var) {
        l3 l3Var = l3.f24520a;
        com.google.android.exoplayer2.source.o.b bVar = f24632s;
        return new m2(l3Var, bVar, C.TIME_UNSET, 0L, 1, null, false, v9.y.f73559d, c0Var, ImmutableList.of(), bVar, false, 0, o2.f24843d, 0L, 0L, 0L, false);
    }

    public static com.google.android.exoplayer2.source.o.b k() {
        return f24632s;
    }

    public m2 a(boolean z10) {
        return new m2(this.f24633a, this.f24634b, this.f24635c, this.f24636d, this.f24637e, this.f24638f, z10, this.f24640h, this.f24641i, this.f24642j, this.f24643k, this.f24644l, this.f24645m, this.f24646n, this.f24648p, this.f24649q, this.f24650r, this.f24647o);
    }

    public m2 b(com.google.android.exoplayer2.source.o.b bVar) {
        return new m2(this.f24633a, this.f24634b, this.f24635c, this.f24636d, this.f24637e, this.f24638f, this.f24639g, this.f24640h, this.f24641i, this.f24642j, bVar, this.f24644l, this.f24645m, this.f24646n, this.f24648p, this.f24649q, this.f24650r, this.f24647o);
    }

    public m2 c(com.google.android.exoplayer2.source.o.b bVar, long j10, long j11, long j12, long j13, v9.y yVar, na.c0 c0Var, List list) {
        return new m2(this.f24633a, bVar, j11, j12, this.f24637e, this.f24638f, this.f24639g, yVar, c0Var, list, this.f24643k, this.f24644l, this.f24645m, this.f24646n, this.f24648p, j13, j10, this.f24647o);
    }

    public m2 d(boolean z10, int i10) {
        return new m2(this.f24633a, this.f24634b, this.f24635c, this.f24636d, this.f24637e, this.f24638f, this.f24639g, this.f24640h, this.f24641i, this.f24642j, this.f24643k, z10, i10, this.f24646n, this.f24648p, this.f24649q, this.f24650r, this.f24647o);
    }

    public m2 e(ExoPlaybackException exoPlaybackException) {
        return new m2(this.f24633a, this.f24634b, this.f24635c, this.f24636d, this.f24637e, exoPlaybackException, this.f24639g, this.f24640h, this.f24641i, this.f24642j, this.f24643k, this.f24644l, this.f24645m, this.f24646n, this.f24648p, this.f24649q, this.f24650r, this.f24647o);
    }

    public m2 f(o2 o2Var) {
        return new m2(this.f24633a, this.f24634b, this.f24635c, this.f24636d, this.f24637e, this.f24638f, this.f24639g, this.f24640h, this.f24641i, this.f24642j, this.f24643k, this.f24644l, this.f24645m, o2Var, this.f24648p, this.f24649q, this.f24650r, this.f24647o);
    }

    public m2 g(int i10) {
        return new m2(this.f24633a, this.f24634b, this.f24635c, this.f24636d, i10, this.f24638f, this.f24639g, this.f24640h, this.f24641i, this.f24642j, this.f24643k, this.f24644l, this.f24645m, this.f24646n, this.f24648p, this.f24649q, this.f24650r, this.f24647o);
    }

    public m2 h(boolean z10) {
        return new m2(this.f24633a, this.f24634b, this.f24635c, this.f24636d, this.f24637e, this.f24638f, this.f24639g, this.f24640h, this.f24641i, this.f24642j, this.f24643k, this.f24644l, this.f24645m, this.f24646n, this.f24648p, this.f24649q, this.f24650r, z10);
    }

    public m2 i(l3 l3Var) {
        return new m2(l3Var, this.f24634b, this.f24635c, this.f24636d, this.f24637e, this.f24638f, this.f24639g, this.f24640h, this.f24641i, this.f24642j, this.f24643k, this.f24644l, this.f24645m, this.f24646n, this.f24648p, this.f24649q, this.f24650r, this.f24647o);
    }
}
