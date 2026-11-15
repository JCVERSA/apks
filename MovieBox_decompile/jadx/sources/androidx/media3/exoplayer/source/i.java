package androidx.media3.exoplayer.source;

import android.content.Context;
import android.net.Uri;
import androidx.media3.common.util.a1;
import androidx.media3.exoplayer.dash.DashMediaSource;
import androidx.media3.exoplayer.hls.HlsMediaSource;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import k2.m0;
import k2.s0;

public final class i implements r.a {

    private final a f12501a;

    private androidx.media3.datasource.a.InterfaceC0085a f12502b;

    private h3.s.a f12503c;

    private r.a f12504d;

    private androidx.media3.exoplayer.upstream.m f12505e;

    private long f12506f;

    private long f12507g;

    private long f12508h;

    private float f12509i;

    private float f12510j;

    private boolean f12511k;

    static final class a {

        private final k2.x f12512a;

        private androidx.media3.datasource.a.InterfaceC0085a f12515d;

        private h3.s.a f12517f;

        private int f12518g;

        private androidx.media3.exoplayer.drm.w f12519h;

        private androidx.media3.exoplayer.upstream.m f12520i;

        private final Map f12513b = new HashMap();

        private final Map f12514c = new HashMap();

        private boolean f12516e = true;

        public a(k2.x xVar, h3.s.a aVar) {
            this.f12512a = xVar;
            this.f12517f = aVar;
        }

        public r.a k(androidx.media3.datasource.a.InterfaceC0085a interfaceC0085a) {
            return new b0.b(interfaceC0085a, this.f12512a);
        }

        private com.google.common.base.q l(int i10) {
            com.google.common.base.q qVar;
            com.google.common.base.q qVar2;
            com.google.common.base.q qVar3 = (com.google.common.base.q) this.f12513b.get(Integer.valueOf(i10));
            if (qVar3 != null) {
                return qVar3;
            }
            final androidx.media3.datasource.a.InterfaceC0085a interfaceC0085a = (androidx.media3.datasource.a.InterfaceC0085a) androidx.media3.common.util.a.e(this.f12515d);
            if (i10 == 0) {
                final Class clsAsSubclass = DashMediaSource.Factory.class.asSubclass(r.a.class);
                qVar = new com.google.common.base.q() {
                    @Override
                    public final Object get() {
                        return i.i(clsAsSubclass, interfaceC0085a);
                    }
                };
            } else {
                if (i10 != 1) {
                    if (i10 == 2) {
                        final Class clsAsSubclass2 = HlsMediaSource.Factory.class.asSubclass(r.a.class);
                        qVar = new com.google.common.base.q() {
                            @Override
                            public final Object get() {
                                return i.i(clsAsSubclass2, interfaceC0085a);
                            }
                        };
                    } else if (i10 == 3) {
                        final Class<? extends U> clsAsSubclass3 = Class.forName("androidx.media3.exoplayer.rtsp.RtspMediaSource$Factory").asSubclass(r.a.class);
                        qVar2 = new com.google.common.base.q() {
                            @Override
                            public final Object get() {
                                return i.h(clsAsSubclass3);
                            }
                        };
                    } else {
                        if (i10 != 4) {
                            throw new IllegalArgumentException("Unrecognized contentType: " + i10);
                        }
                        qVar2 = new com.google.common.base.q() {
                            @Override
                            public final Object get() {
                                return this.f12483a.k(interfaceC0085a);
                            }
                        };
                    }
                    this.f12513b.put(Integer.valueOf(i10), qVar2);
                    return qVar2;
                }
                final Class<? extends U> clsAsSubclass4 = Class.forName("androidx.media3.exoplayer.smoothstreaming.SsMediaSource$Factory").asSubclass(r.a.class);
                qVar = new com.google.common.base.q() {
                    @Override
                    public final Object get() {
                        return i.i(clsAsSubclass4, interfaceC0085a);
                    }
                };
            }
            qVar2 = qVar;
            this.f12513b.put(Integer.valueOf(i10), qVar2);
            return qVar2;
        }

        public r.a f(int i10) {
            r.a aVar = (r.a) this.f12514c.get(Integer.valueOf(i10));
            if (aVar != null) {
                return aVar;
            }
            r.a aVar2 = (r.a) l(i10).get();
            androidx.media3.exoplayer.drm.w wVar = this.f12519h;
            if (wVar != null) {
                aVar2.e(wVar);
            }
            androidx.media3.exoplayer.upstream.m mVar = this.f12520i;
            if (mVar != null) {
                aVar2.f(mVar);
            }
            aVar2.a(this.f12517f);
            aVar2.c(this.f12516e);
            aVar2.b(this.f12518g);
            this.f12514c.put(Integer.valueOf(i10), aVar2);
            return aVar2;
        }

        public void m(int i10) {
            this.f12518g = i10;
            this.f12512a.b(i10);
        }

        public void n(androidx.media3.datasource.a.InterfaceC0085a interfaceC0085a) {
            if (interfaceC0085a != this.f12515d) {
                this.f12515d = interfaceC0085a;
                this.f12513b.clear();
                this.f12514c.clear();
            }
        }

        public void o(androidx.media3.exoplayer.drm.w wVar) {
            this.f12519h = wVar;
            Iterator it = this.f12514c.values().iterator();
            while (it.hasNext()) {
                ((r.a) it.next()).e(wVar);
            }
        }

        public void p(int i10) {
            k2.x xVar = this.f12512a;
            if (xVar instanceof k2.m) {
                ((k2.m) xVar).l(i10);
            }
        }

        public void q(androidx.media3.exoplayer.upstream.m mVar) {
            this.f12520i = mVar;
            Iterator it = this.f12514c.values().iterator();
            while (it.hasNext()) {
                ((r.a) it.next()).f(mVar);
            }
        }

        public void r(boolean z10) {
            this.f12516e = z10;
            this.f12512a.d(z10);
            Iterator it = this.f12514c.values().iterator();
            while (it.hasNext()) {
                ((r.a) it.next()).c(z10);
            }
        }

        public void s(h3.s.a aVar) {
            this.f12517f = aVar;
            this.f12512a.a(aVar);
            Iterator it = this.f12514c.values().iterator();
            while (it.hasNext()) {
                ((r.a) it.next()).a(aVar);
            }
        }
    }

    public i(Context context) {
        this(new androidx.media3.datasource.b.a(context));
    }

    public static r.a h(Class cls) {
        return o(cls);
    }

    public static r.a i(Class cls, androidx.media3.datasource.a.InterfaceC0085a interfaceC0085a) {
        return p(cls, interfaceC0085a);
    }

    public k2.r[] l(androidx.media3.common.r rVar) {
        return new k2.r[]{this.f12503c.a(rVar) ? new h3.n(this.f12503c.c(rVar), null) : new b(rVar)};
    }

    private static r m(androidx.media3.common.t tVar, r rVar) {
        androidx.media3.common.t.d dVar = tVar.f9903f;
        return (dVar.f9928b == 0 && dVar.f9930d == Long.MIN_VALUE && !dVar.f9932f) ? rVar : new ClippingMediaSource.b(rVar).m(tVar.f9903f.f9928b).k(tVar.f9903f.f9930d).j(!tVar.f9903f.f9933g).i(tVar.f9903f.f9931e).l(tVar.f9903f.f9932f).h();
    }

    private r n(androidx.media3.common.t tVar, r rVar) {
        androidx.media3.common.util.a.e(tVar.f9899b);
        tVar.f9899b.getClass();
        return rVar;
    }

    public static r.a o(Class cls) {
        try {
            return (r.a) cls.getConstructor(null).newInstance(null);
        } catch (Exception e10) {
            throw new IllegalStateException(e10);
        }
    }

    public static r.a p(Class cls, androidx.media3.datasource.a.InterfaceC0085a interfaceC0085a) {
        try {
            return (r.a) cls.getConstructor(androidx.media3.datasource.a.InterfaceC0085a.class).newInstance(interfaceC0085a);
        } catch (Exception e10) {
            throw new IllegalStateException(e10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public r d(androidx.media3.common.t tVar) {
        androidx.media3.common.util.a.e(tVar.f9899b);
        String scheme = tVar.f9899b.f9991a.getScheme();
        if (scheme != null && scheme.equals("ssai")) {
            return ((r.a) androidx.media3.common.util.a.e(this.f12504d)).d(tVar);
        }
        if (Objects.equals(tVar.f9899b.f9992b, "application/x-image-uri")) {
            long jR0 = a1.R0(tVar.f9899b.f9999i);
            android.support.v4.media.session.c.a(androidx.media3.common.util.a.e(null));
            return new l.b(jR0, null).d(tVar);
        }
        androidx.media3.common.t.h hVar = tVar.f9899b;
        int iA0 = a1.A0(hVar.f9991a, hVar.f9992b);
        if (tVar.f9899b.f9999i != C.TIME_UNSET) {
            this.f12501a.p(1);
        }
        try {
            r.a aVarF = this.f12501a.f(iA0);
            androidx.media3.common.t.g.a aVarA = tVar.f9901d.a();
            if (tVar.f9901d.f9973a == C.TIME_UNSET) {
                aVarA.k(this.f12506f);
            }
            if (tVar.f9901d.f9976d == -3.4028235E38f) {
                aVarA.j(this.f12509i);
            }
            if (tVar.f9901d.f9977e == -3.4028235E38f) {
                aVarA.h(this.f12510j);
            }
            if (tVar.f9901d.f9974b == C.TIME_UNSET) {
                aVarA.i(this.f12507g);
            }
            if (tVar.f9901d.f9975c == C.TIME_UNSET) {
                aVarA.g(this.f12508h);
            }
            androidx.media3.common.t.g gVarF = aVarA.f();
            if (!gVarF.equals(tVar.f9901d)) {
                tVar = tVar.a().c(gVarF).a();
            }
            r rVarD = aVarF.d(tVar);
            ImmutableList immutableList = ((androidx.media3.common.t.h) a1.i(tVar.f9899b)).f9996f;
            if (!immutableList.isEmpty()) {
                r[] rVarArr = new r[immutableList.size() + 1];
                rVarArr[0] = rVarD;
                for (int i10 = 0; i10 < immutableList.size(); i10++) {
                    if (this.f12511k) {
                        final androidx.media3.common.r rVarN = new androidx.media3.common.r.b().u0(((androidx.media3.common.t.k) immutableList.get(i10)).f10018b).j0(((androidx.media3.common.t.k) immutableList.get(i10)).f10019c).w0(((androidx.media3.common.t.k) immutableList.get(i10)).f10020d).s0(((androidx.media3.common.t.k) immutableList.get(i10)).f10021e).h0(((androidx.media3.common.t.k) immutableList.get(i10)).f10022f).f0(((androidx.media3.common.t.k) immutableList.get(i10)).f10023g).N();
                        b0.b bVar = new b0.b(this.f12502b, new k2.x() {
                            @Override
                            public k2.x a(h3.s.a aVar) {
                                return k2.w.d(this, aVar);
                            }

                            @Override
                            public k2.x b(int i11) {
                                return k2.w.b(this, i11);
                            }

                            @Override
                            public k2.r[] c(Uri uri, Map map) {
                                return k2.w.a(this, uri, map);
                            }

                            @Override
                            public final k2.r[] createExtractors() {
                                return this.f59907b.l(rVarN);
                            }

                            @Override
                            public k2.x d(boolean z10) {
                                return k2.w.c(this, z10);
                            }
                        });
                        if (this.f12503c.a(rVarN)) {
                            rVarN = rVarN.b().u0("application/x-media3-cues").S(rVarN.f9849o).W(this.f12503c.b(rVarN)).N();
                        }
                        b0.b bVarI = bVar.i(0, rVarN);
                        androidx.media3.exoplayer.upstream.m mVar = this.f12505e;
                        if (mVar != null) {
                            bVarI.f(mVar);
                        }
                        rVarArr[i10 + 1] = bVarI.d(androidx.media3.common.t.b(((androidx.media3.common.t.k) immutableList.get(i10)).f10017a.toString()));
                    } else {
                        h0.b bVar2 = new h0.b(this.f12502b);
                        androidx.media3.exoplayer.upstream.m mVar2 = this.f12505e;
                        if (mVar2 != null) {
                            bVar2.b(mVar2);
                        }
                        rVarArr[i10 + 1] = bVar2.a((androidx.media3.common.t.k) immutableList.get(i10), C.TIME_UNSET);
                    }
                }
                rVarD = new MergingMediaSource(rVarArr);
            }
            return n(tVar, m(tVar, rVarD));
        } catch (ClassNotFoundException e10) {
            throw new IllegalStateException(e10);
        }
    }

    @Override
    public i c(boolean z10) {
        this.f12511k = z10;
        this.f12501a.r(z10);
        return this;
    }

    @Override
    public i b(int i10) {
        this.f12501a.m(i10);
        return this;
    }

    public i q(androidx.media3.datasource.a.InterfaceC0085a interfaceC0085a) {
        this.f12502b = interfaceC0085a;
        this.f12501a.n(interfaceC0085a);
        return this;
    }

    @Override
    public i e(androidx.media3.exoplayer.drm.w wVar) {
        this.f12501a.o((androidx.media3.exoplayer.drm.w) androidx.media3.common.util.a.f(wVar, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."));
        return this;
    }

    @Override
    public i f(androidx.media3.exoplayer.upstream.m mVar) {
        this.f12505e = (androidx.media3.exoplayer.upstream.m) androidx.media3.common.util.a.f(mVar, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior.");
        this.f12501a.q(mVar);
        return this;
    }

    @Override
    public i a(h3.s.a aVar) {
        this.f12503c = (h3.s.a) androidx.media3.common.util.a.e(aVar);
        this.f12501a.s(aVar);
        return this;
    }

    public i(Context context, k2.x xVar) {
        this(new androidx.media3.datasource.b.a(context), xVar);
    }

    public i(androidx.media3.datasource.a.InterfaceC0085a interfaceC0085a) {
        this(interfaceC0085a, new k2.m());
    }

    public i(androidx.media3.datasource.a.InterfaceC0085a interfaceC0085a, k2.x xVar) {
        this.f12502b = interfaceC0085a;
        h3.h hVar = new h3.h();
        this.f12503c = hVar;
        a aVar = new a(xVar, hVar);
        this.f12501a = aVar;
        aVar.n(interfaceC0085a);
        this.f12506f = C.TIME_UNSET;
        this.f12507g = C.TIME_UNSET;
        this.f12508h = C.TIME_UNSET;
        this.f12509i = -3.4028235E38f;
        this.f12510j = -3.4028235E38f;
        this.f12511k = true;
    }

    private static final class b implements k2.r {

        private final androidx.media3.common.r f12521a;

        public b(androidx.media3.common.r rVar) {
            this.f12521a = rVar;
        }

        @Override
        public boolean b(k2.s sVar) {
            return true;
        }

        @Override
        public k2.r c() {
            return k2.q.b(this);
        }

        @Override
        public int d(k2.s sVar, k2.l0 l0Var) {
            return sVar.skip(Integer.MAX_VALUE) == -1 ? -1 : 0;
        }

        @Override
        public void e(k2.t tVar) {
            s0 s0VarTrack = tVar.track(0, 3);
            tVar.d(new m0.b(C.TIME_UNSET));
            tVar.endTracks();
            s0VarTrack.d(this.f12521a.b().u0("text/x-unknown").S(this.f12521a.f9849o).N());
        }

        @Override
        public List f() {
            return k2.q.a(this);
        }

        @Override
        public void release() {
        }

        @Override
        public void seek(long j10, long j11) {
        }
    }
}
