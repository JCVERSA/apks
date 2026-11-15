package com.google.android.exoplayer2.upstream;

import defpackage.blb;
import defpackage.in5;
import defpackage.ox9;
import defpackage.vs1;
import defpackage.zi;

public final class g implements Loader.d {
    public final long a = in5.a();
    public final b b;
    public final int c;
    public final ox9 d;
    public volatile Object e;

    public interface a {
    }

    public g(com.google.android.exoplayer2.upstream.a aVar, b bVar, int i, a aVar2) {
        this.d = new ox9(aVar);
        this.b = bVar;
        this.c = i;
    }

    public static Object b(com.google.android.exoplayer2.upstream.a aVar, a aVar2, b bVar, int i) {
        g gVar = new g(aVar, bVar, i, aVar2);
        gVar.load();
        return zi.e(gVar.a());
    }

    public final Object a() {
        return this.e;
    }

    @Override
    public final void cancelLoad() {
    }

    @Override
    public final void load() {
        this.d.f();
        vs1 vs1Var = new vs1(this.d, this.b);
        try {
            vs1Var.d();
            throw null;
        } catch (Throwable th) {
            blb.m(vs1Var);
            throw th;
        }
    }
}
