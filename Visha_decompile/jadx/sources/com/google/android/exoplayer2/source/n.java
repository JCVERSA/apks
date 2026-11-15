package com.google.android.exoplayer2.source;

import android.os.Looper;
import androidx.media3.common.C;
import com.google.android.exoplayer2.a0;
import com.google.android.exoplayer2.source.l;
import com.google.android.exoplayer2.source.n;
import defpackage.cb;
import defpackage.j33;
import defpackage.kn9;
import defpackage.m54;
import defpackage.n12;
import defpackage.ta8;
import defpackage.u5b;
import defpackage.uk3;
import defpackage.zi;
import defpackage.zn0;

public final class n extends com.google.android.exoplayer2.source.a implements m.b {
    public final com.google.android.exoplayer2.n h;
    public final com.google.android.exoplayer2.n.h i;
    public final com.google.android.exoplayer2.upstream.a.InterfaceC0084a j;
    public final l.a k;
    public final com.google.android.exoplayer2.drm.c l;
    public final com.google.android.exoplayer2.upstream.f m;
    public final int n;
    public boolean o;
    public long p;
    public boolean q;
    public boolean r;
    public u5b s;

    public class a extends m54 {
        public a(n nVar, a0 a0Var) {
            super(a0Var);
        }

        @Override
        public a0.b k(int i, a0.b bVar, boolean z) {
            super.k(i, bVar, z);
            bVar.g = true;
            return bVar;
        }

        @Override
        public a0.d s(int i, a0.d dVar, long j) {
            super.s(i, dVar, j);
            dVar.m = true;
            return dVar;
        }
    }

    public static final class b implements i.a {
        public final com.google.android.exoplayer2.upstream.a.InterfaceC0084a a;
        public l.a b;
        public j33 c;
        public com.google.android.exoplayer2.upstream.f d;
        public int e;
        public String f;
        public Object g;

        public b(com.google.android.exoplayer2.upstream.a.InterfaceC0084a interfaceC0084a) {
            this(interfaceC0084a, new n12());
        }

        public static l f(uk3 uk3Var, ta8 ta8Var) {
            return new zn0(uk3Var);
        }

        @Override
        public n b(com.google.android.exoplayer2.n nVar) {
            zi.e(nVar.c);
            com.google.android.exoplayer2.n.h hVar = nVar.c;
            boolean z = false;
            boolean z2 = hVar.h == null && this.g != null;
            if (hVar.e == null && this.f != null) {
                z = true;
            }
            if (z2 && z) {
                nVar = nVar.b().h(this.g).b(this.f).a();
            } else if (z2) {
                nVar = nVar.b().h(this.g).a();
            } else if (z) {
                nVar = nVar.b().b(this.f).a();
            }
            com.google.android.exoplayer2.n nVar2 = nVar;
            return new n(nVar2, this.a, this.b, this.c.a(nVar2), this.d, this.e, null);
        }

        @Override
        public b c(j33 j33Var) {
            this.c = (j33) zi.f(j33Var, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior.");
            return this;
        }

        @Override
        public b a(com.google.android.exoplayer2.upstream.f fVar) {
            this.d = (com.google.android.exoplayer2.upstream.f) zi.f(fVar, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior.");
            return this;
        }

        public b(com.google.android.exoplayer2.upstream.a.InterfaceC0084a interfaceC0084a, final uk3 uk3Var) {
            this(interfaceC0084a, new l.a() {
                @Override
                public final l a(ta8 ta8Var) {
                    return n.b.f(uk3Var, ta8Var);
                }
            });
        }

        public b(com.google.android.exoplayer2.upstream.a.InterfaceC0084a interfaceC0084a, l.a aVar) {
            this(interfaceC0084a, aVar, new com.google.android.exoplayer2.drm.a(), new com.google.android.exoplayer2.upstream.e(), 1048576);
        }

        public b(com.google.android.exoplayer2.upstream.a.InterfaceC0084a interfaceC0084a, l.a aVar, j33 j33Var, com.google.android.exoplayer2.upstream.f fVar, int i) {
            this.a = interfaceC0084a;
            this.b = aVar;
            this.c = j33Var;
            this.d = fVar;
            this.e = i;
        }
    }

    public n(com.google.android.exoplayer2.n nVar, com.google.android.exoplayer2.upstream.a.InterfaceC0084a interfaceC0084a, l.a aVar, com.google.android.exoplayer2.drm.c cVar, com.google.android.exoplayer2.upstream.f fVar, int i, a aVar2) {
        this(nVar, interfaceC0084a, aVar, cVar, fVar, i);
    }

    @Override
    public h c(i.b bVar, cb cbVar, long j) {
        com.google.android.exoplayer2.upstream.a aVarCreateDataSource = this.j.createDataSource();
        u5b u5bVar = this.s;
        if (u5bVar != null) {
            aVarCreateDataSource.b(u5bVar);
        }
        return new m(this.i.a, aVarCreateDataSource, this.k.a(r()), this.l, m(bVar), this.m, o(bVar), this, cbVar, this.i.e, this.n);
    }

    @Override
    public void e(h hVar) {
        ((m) hVar).S();
    }

    @Override
    public com.google.android.exoplayer2.n getMediaItem() {
        return this.h;
    }

    @Override
    public void h(long j, boolean z, boolean z2) {
        if (j == C.TIME_UNSET) {
            j = this.p;
        }
        if (!this.o && this.p == j && this.q == z && this.r == z2) {
            return;
        }
        this.p = j;
        this.q = z;
        this.r = z2;
        this.o = false;
        w();
    }

    @Override
    public void maybeThrowSourceInfoRefreshError() {
    }

    @Override
    public void t(u5b u5bVar) {
        this.s = u5bVar;
        this.l.prepare();
        this.l.a((Looper) zi.e(Looper.myLooper()), r());
        w();
    }

    @Override
    public void v() {
        this.l.release();
    }

    public final void w() {
        a0 kn9Var = new kn9(this.p, this.q, false, this.r, null, this.h);
        if (this.o) {
            kn9Var = new a(this, kn9Var);
        }
        u(kn9Var);
    }

    public n(com.google.android.exoplayer2.n nVar, com.google.android.exoplayer2.upstream.a.InterfaceC0084a interfaceC0084a, l.a aVar, com.google.android.exoplayer2.drm.c cVar, com.google.android.exoplayer2.upstream.f fVar, int i) {
        this.i = (com.google.android.exoplayer2.n.h) zi.e(nVar.c);
        this.h = nVar;
        this.j = interfaceC0084a;
        this.k = aVar;
        this.l = cVar;
        this.m = fVar;
        this.n = i;
        this.o = true;
        this.p = C.TIME_UNSET;
    }
}
