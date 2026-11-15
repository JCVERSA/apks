package androidx.media3.exoplayer.source;

import android.net.Uri;
import com.google.common.collect.ImmutableList;

public final class h0 extends androidx.media3.exoplayer.source.a {

    private final w1.h f12485h;

    private final androidx.media3.datasource.a.InterfaceC0085a f12486i;

    private final androidx.media3.common.r f12487j;

    private final long f12488k;

    private final androidx.media3.exoplayer.upstream.m f12489l;

    private final boolean f12490m;

    private final androidx.media3.common.e0 f12491n;

    private final androidx.media3.common.t f12492o;

    private final com.google.common.base.q f12493p;

    private w1.n f12494q;

    public static final class b {

        private final androidx.media3.datasource.a.InterfaceC0085a f12495a;

        private androidx.media3.exoplayer.upstream.m f12496b = new androidx.media3.exoplayer.upstream.k();

        private boolean f12497c = true;

        private Object f12498d;

        private String f12499e;

        private com.google.common.base.q f12500f;

        public b(androidx.media3.datasource.a.InterfaceC0085a interfaceC0085a) {
            this.f12495a = (androidx.media3.datasource.a.InterfaceC0085a) androidx.media3.common.util.a.e(interfaceC0085a);
        }

        public h0 a(androidx.media3.common.t.k kVar, long j10) {
            return new h0(this.f12499e, kVar, this.f12495a, j10, this.f12496b, this.f12497c, this.f12498d, this.f12500f);
        }

        public b b(androidx.media3.exoplayer.upstream.m mVar) {
            if (mVar == null) {
                mVar = new androidx.media3.exoplayer.upstream.k();
            }
            this.f12496b = mVar;
            return this;
        }
    }

    @Override
    public androidx.media3.common.t a() {
        return this.f12492o;
    }

    @Override
    public q g(r.b bVar, androidx.media3.exoplayer.upstream.b bVar2, long j10) {
        w1.h hVar = this.f12485h;
        androidx.media3.datasource.a.InterfaceC0085a interfaceC0085a = this.f12486i;
        w1.n nVar = this.f12494q;
        androidx.media3.common.r rVar = this.f12487j;
        long j11 = this.f12488k;
        androidx.media3.exoplayer.upstream.m mVar = this.f12489l;
        s.a aVarU = u(bVar);
        boolean z10 = this.f12490m;
        com.google.common.base.q qVar = this.f12493p;
        return new g0(hVar, interfaceC0085a, nVar, rVar, j11, mVar, aVarU, z10, qVar != null ? (androidx.media3.exoplayer.util.c) qVar.get() : null);
    }

    @Override
    public void k(q qVar) {
        ((g0) qVar).j();
    }

    @Override
    protected void z(w1.n nVar) {
        this.f12494q = nVar;
        A(this.f12491n);
    }

    private h0(String str, androidx.media3.common.t.k kVar, androidx.media3.datasource.a.InterfaceC0085a interfaceC0085a, long j10, androidx.media3.exoplayer.upstream.m mVar, boolean z10, Object obj, com.google.common.base.q qVar) {
        this.f12486i = interfaceC0085a;
        this.f12488k = j10;
        this.f12489l = mVar;
        this.f12490m = z10;
        androidx.media3.common.t tVarA = new androidx.media3.common.t.c().i(Uri.EMPTY).d(kVar.f10017a.toString()).g(ImmutableList.of(kVar)).h(obj).a();
        this.f12492o = tVarA;
        androidx.media3.common.r.b bVarH0 = new androidx.media3.common.r.b().u0((String) com.google.common.base.h.a(kVar.f10018b, "text/x-unknown")).j0(kVar.f10019c).w0(kVar.f10020d).s0(kVar.f10021e).h0(kVar.f10022f);
        String str2 = kVar.f10023g;
        this.f12487j = bVarH0.f0(str2 == null ? str : str2).N();
        this.f12485h = new w1.h.b().i(kVar.f10017a).b(1).a();
        this.f12491n = new f2.w(j10, true, false, false, null, tVarA);
        this.f12493p = qVar;
    }

    @Override
    protected void B() {
    }

    @Override
    public void maybeThrowSourceInfoRefreshError() {
    }
}
