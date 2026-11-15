package com.google.android.exoplayer2.source;

import android.net.Uri;
import androidx.media3.common.MimeTypes;
import com.google.android.exoplayer2.a0;
import com.google.common.collect.ImmutableList;
import defpackage.cb;
import defpackage.kn9;
import defpackage.u5b;
import defpackage.zi;
import defpackage.zq6;

public final class s extends com.google.android.exoplayer2.source.a {
    public final com.google.android.exoplayer2.upstream.b h;
    public final com.google.android.exoplayer2.upstream.a.InterfaceC0084a i;
    public final com.google.android.exoplayer2.k j;
    public final long k;
    public final com.google.android.exoplayer2.upstream.f l;
    public final boolean m;
    public final a0 n;
    public final com.google.android.exoplayer2.n o;
    public u5b p;

    public static final class b {
        public final com.google.android.exoplayer2.upstream.a.InterfaceC0084a a;
        public com.google.android.exoplayer2.upstream.f b = new com.google.android.exoplayer2.upstream.e();
        public boolean c = true;
        public Object d;
        public String e;

        public b(com.google.android.exoplayer2.upstream.a.InterfaceC0084a interfaceC0084a) {
            this.a = (com.google.android.exoplayer2.upstream.a.InterfaceC0084a) zi.e(interfaceC0084a);
        }

        public s a(com.google.android.exoplayer2.n.l lVar, long j) {
            return new s(this.e, lVar, this.a, j, this.b, this.c, this.d);
        }

        public b b(com.google.android.exoplayer2.upstream.f fVar) {
            if (fVar == null) {
                fVar = new com.google.android.exoplayer2.upstream.e();
            }
            this.b = fVar;
            return this;
        }
    }

    @Override
    public h c(i.b bVar, cb cbVar, long j) {
        return new r(this.h, this.i, this.p, this.j, this.k, this.l, o(bVar), this.m);
    }

    @Override
    public void e(h hVar) {
        ((r) hVar).k();
    }

    @Override
    public com.google.android.exoplayer2.n getMediaItem() {
        return this.o;
    }

    @Override
    public void maybeThrowSourceInfoRefreshError() {
    }

    @Override
    public void t(u5b u5bVar) {
        this.p = u5bVar;
        u(this.n);
    }

    @Override
    public void v() {
    }

    public s(String str, com.google.android.exoplayer2.n.l lVar, com.google.android.exoplayer2.upstream.a.InterfaceC0084a interfaceC0084a, long j, com.google.android.exoplayer2.upstream.f fVar, boolean z, Object obj) {
        this.i = interfaceC0084a;
        this.k = j;
        this.l = fVar;
        this.m = z;
        com.google.android.exoplayer2.n nVarA = new com.google.android.exoplayer2.n.c().i(Uri.EMPTY).d(lVar.a.toString()).g(ImmutableList.of(lVar)).h(obj).a();
        this.o = nVarA;
        com.google.android.exoplayer2.k.b bVarU = new com.google.android.exoplayer2.k.b().e0((String) zq6.a(lVar.b, MimeTypes.TEXT_UNKNOWN)).V(lVar.c).g0(lVar.d).c0(lVar.e).U(lVar.f);
        String str2 = lVar.g;
        this.j = bVarU.S(str2 == null ? str : str2).E();
        this.h = new com.google.android.exoplayer2.upstream.b.C0085b().i(lVar.a).b(1).a();
        this.n = new kn9(j, true, false, false, null, nVarA);
    }
}
