package com.google.android.exoplayer2.source;

import android.net.Uri;
import com.google.android.exoplayer2.l3;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.upstream.k0;
import com.google.android.exoplayer2.w1;
import com.google.common.collect.ImmutableList;

public final class d0 extends com.google.android.exoplayer2.source.a {

    private final com.google.android.exoplayer2.upstream.n f25101h;

    private final com.google.android.exoplayer2.upstream.k.a f25102i;

    private final p1 f25103j;

    private final long f25104k;

    private final com.google.android.exoplayer2.upstream.z f25105l;

    private final boolean f25106m;

    private final l3 f25107n;

    private final w1 f25108o;

    private k0 f25109p;

    public static final class b {

        private final com.google.android.exoplayer2.upstream.k.a f25110a;

        private com.google.android.exoplayer2.upstream.z f25111b = new com.google.android.exoplayer2.upstream.v();

        private boolean f25112c = true;

        private Object f25113d;

        private String f25114e;

        public b(com.google.android.exoplayer2.upstream.k.a aVar) {
            this.f25110a = (com.google.android.exoplayer2.upstream.k.a) com.google.android.exoplayer2.util.a.e(aVar);
        }

        public d0 a(w1.l lVar, long j10) {
            return new d0(this.f25114e, lVar, this.f25110a, j10, this.f25111b, this.f25112c, this.f25113d);
        }

        public b b(com.google.android.exoplayer2.upstream.z zVar) {
            if (zVar == null) {
                zVar = new com.google.android.exoplayer2.upstream.v();
            }
            this.f25111b = zVar;
            return this;
        }
    }

    @Override
    protected void B(k0 k0Var) {
        this.f25109p = k0Var;
        C(this.f25107n);
    }

    @Override
    public w1 a() {
        return this.f25108o;
    }

    @Override
    public n d(o.b bVar, com.google.android.exoplayer2.upstream.b bVar2, long j10) {
        return new c0(this.f25101h, this.f25102i, this.f25109p, this.f25103j, this.f25104k, this.f25105l, v(bVar), this.f25106m);
    }

    @Override
    public void i(n nVar) {
        ((c0) nVar).h();
    }

    private d0(String str, w1.l lVar, com.google.android.exoplayer2.upstream.k.a aVar, long j10, com.google.android.exoplayer2.upstream.z zVar, boolean z10, Object obj) {
        this.f25102i = aVar;
        this.f25104k = j10;
        this.f25105l = zVar;
        this.f25106m = z10;
        w1 w1VarA = new w1.c().i(Uri.EMPTY).d(lVar.f27228a.toString()).g(ImmutableList.of(lVar)).h(obj).a();
        this.f25108o = w1VarA;
        p1.b bVarU = new p1.b().e0((String) com.google.common.base.h.a(lVar.f27229b, "text/x-unknown")).V(lVar.f27230c).g0(lVar.f27231d).c0(lVar.f27232e).U(lVar.f27233f);
        String str2 = lVar.f27234g;
        this.f25103j = bVarU.S(str2 == null ? str : str2).E();
        this.f25101h = new com.google.android.exoplayer2.upstream.n.b().i(lVar.f27228a).b(1).a();
        this.f25107n = new v9.u(j10, true, false, false, null, w1VarA);
    }

    @Override
    protected void D() {
    }

    @Override
    public void maybeThrowSourceInfoRefreshError() {
    }
}
