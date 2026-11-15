package com.google.android.exoplayer2.source;

import android.content.Context;
import android.net.Uri;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.source.dash.DashMediaSource;
import com.google.android.exoplayer2.source.hls.HlsMediaSource;
import com.google.android.exoplayer2.source.rtsp.RtspMediaSource;
import com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.w1;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class i implements o.a {

    private final a f25537a;

    private com.google.android.exoplayer2.upstream.k.a f25538b;

    private o.a f25539c;

    private com.google.android.exoplayer2.upstream.z f25540d;

    private long f25541e;

    private long f25542f;

    private long f25543g;

    private float f25544h;

    private float f25545i;

    private boolean f25546j;

    static final class a {

        private final i9.r f25547a;

        private final Map f25548b = new HashMap();

        private final Set f25549c = new HashSet();

        private final Map f25550d = new HashMap();

        private com.google.android.exoplayer2.upstream.k.a f25551e;

        private com.google.android.exoplayer2.drm.x f25552f;

        private com.google.android.exoplayer2.upstream.z f25553g;

        public a(i9.r rVar) {
            this.f25547a = rVar;
        }

        public o.a k(com.google.android.exoplayer2.upstream.k.a aVar) {
            return new x.b(aVar, this.f25547a);
        }

        /* JADX WARN: Code duplicated, block: B:27:0x0076  */
        private com.google.common.base.q l(int i10) {
            com.google.common.base.q qVar;
            com.google.common.base.q qVar2;
            if (this.f25548b.containsKey(Integer.valueOf(i10))) {
                return (com.google.common.base.q) this.f25548b.get(Integer.valueOf(i10));
            }
            final com.google.android.exoplayer2.upstream.k.a aVar = (com.google.android.exoplayer2.upstream.k.a) com.google.android.exoplayer2.util.a.e(this.f25551e);
            com.google.common.base.q qVar3 = null;
            try {
                if (i10 == 0) {
                    final Class clsAsSubclass = DashMediaSource.Factory.class.asSubclass(o.a.class);
                    qVar = new com.google.common.base.q() {
                        @Override
                        public final Object get() {
                            return i.f(clsAsSubclass, aVar);
                        }
                    };
                } else {
                    if (i10 != 1) {
                        if (i10 != 2) {
                            if (i10 == 3) {
                                final Class clsAsSubclass2 = RtspMediaSource.Factory.class.asSubclass(o.a.class);
                                qVar2 = new com.google.common.base.q() {
                                    @Override
                                    public final Object get() {
                                        return i.e(clsAsSubclass2);
                                    }
                                };
                            } else if (i10 == 4) {
                                qVar2 = new com.google.common.base.q() {
                                    @Override
                                    public final Object get() {
                                        return this.f25249a.k(aVar);
                                    }
                                };
                            }
                            qVar3 = qVar2;
                        } else {
                            final Class clsAsSubclass3 = HlsMediaSource.Factory.class.asSubclass(o.a.class);
                            qVar = new com.google.common.base.q() {
                                @Override
                                public final Object get() {
                                    return i.f(clsAsSubclass3, aVar);
                                }
                            };
                        }
                        this.f25548b.put(Integer.valueOf(i10), qVar3);
                        if (qVar3 != null) {
                            this.f25549c.add(Integer.valueOf(i10));
                        }
                        return qVar3;
                    }
                    final Class clsAsSubclass4 = SsMediaSource.Factory.class.asSubclass(o.a.class);
                    qVar = new com.google.common.base.q() {
                        @Override
                        public final Object get() {
                            return i.f(clsAsSubclass4, aVar);
                        }
                    };
                }
                qVar3 = qVar;
            } catch (ClassNotFoundException unused) {
            }
            this.f25548b.put(Integer.valueOf(i10), qVar3);
            if (qVar3 != null) {
                this.f25549c.add(Integer.valueOf(i10));
            }
            return qVar3;
        }

        public o.a f(int i10) {
            o.a aVar = (o.a) this.f25550d.get(Integer.valueOf(i10));
            if (aVar != null) {
                return aVar;
            }
            com.google.common.base.q qVarL = l(i10);
            if (qVarL == null) {
                return null;
            }
            o.a aVar2 = (o.a) qVarL.get();
            com.google.android.exoplayer2.drm.x xVar = this.f25552f;
            if (xVar != null) {
                aVar2.b(xVar);
            }
            com.google.android.exoplayer2.upstream.z zVar = this.f25553g;
            if (zVar != null) {
                aVar2.c(zVar);
            }
            this.f25550d.put(Integer.valueOf(i10), aVar2);
            return aVar2;
        }

        public void m(com.google.android.exoplayer2.upstream.k.a aVar) {
            if (aVar != this.f25551e) {
                this.f25551e = aVar;
                this.f25548b.clear();
                this.f25550d.clear();
            }
        }

        public void n(com.google.android.exoplayer2.drm.x xVar) {
            this.f25552f = xVar;
            Iterator it = this.f25550d.values().iterator();
            while (it.hasNext()) {
                ((o.a) it.next()).b(xVar);
            }
        }

        public void o(com.google.android.exoplayer2.upstream.z zVar) {
            this.f25553g = zVar;
            Iterator it = this.f25550d.values().iterator();
            while (it.hasNext()) {
                ((o.a) it.next()).c(zVar);
            }
        }
    }

    public i(Context context, i9.r rVar) {
        this(new com.google.android.exoplayer2.upstream.r.a(context), rVar);
    }

    public static o.a e(Class cls) {
        return j(cls);
    }

    public static o.a f(Class cls, com.google.android.exoplayer2.upstream.k.a aVar) {
        return k(cls, aVar);
    }

    public static i9.l[] g(p1 p1Var) {
        da.k kVar = da.k.f58971a;
        return new i9.l[]{kVar.a(p1Var) ? new da.l(kVar.b(p1Var), p1Var) : new b(p1Var)};
    }

    private static o h(w1 w1Var, o oVar) {
        w1.d dVar = w1Var.f27153f;
        long j10 = dVar.f27170a;
        if (j10 == 0 && dVar.f27171b == Long.MIN_VALUE && !dVar.f27173d) {
            return oVar;
        }
        long jB0 = p0.B0(j10);
        long jB1 = p0.B0(w1Var.f27153f.f27171b);
        w1.d dVar2 = w1Var.f27153f;
        return new ClippingMediaSource(oVar, jB0, jB1, !dVar2.f27174e, dVar2.f27172c, dVar2.f27173d);
    }

    private o i(w1 w1Var, o oVar) {
        com.google.android.exoplayer2.util.a.e(w1Var.f27149b);
        w1Var.f27149b.getClass();
        return oVar;
    }

    public static o.a j(Class cls) {
        try {
            return (o.a) cls.getConstructor(null).newInstance(null);
        } catch (Exception e10) {
            throw new IllegalStateException(e10);
        }
    }

    public static o.a k(Class cls, com.google.android.exoplayer2.upstream.k.a aVar) {
        try {
            return (o.a) cls.getConstructor(com.google.android.exoplayer2.upstream.k.a.class).newInstance(aVar);
        } catch (Exception e10) {
            throw new IllegalStateException(e10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public o a(w1 w1Var) {
        com.google.android.exoplayer2.util.a.e(w1Var.f27149b);
        String scheme = w1Var.f27149b.f27212a.getScheme();
        if (scheme != null && scheme.equals("ssai")) {
            return ((o.a) com.google.android.exoplayer2.util.a.e(this.f25539c)).a(w1Var);
        }
        w1.h hVar = w1Var.f27149b;
        int iQ0 = p0.q0(hVar.f27212a, hVar.f27213b);
        o.a aVarF = this.f25537a.f(iQ0);
        com.google.android.exoplayer2.util.a.j(aVarF, "No suitable media source factory found for content type: " + iQ0);
        w1.g.a aVarB = w1Var.f27151d.b();
        if (w1Var.f27151d.f27202a == C.TIME_UNSET) {
            aVarB.k(this.f25541e);
        }
        if (w1Var.f27151d.f27205d == -3.4028235E38f) {
            aVarB.j(this.f25544h);
        }
        if (w1Var.f27151d.f27206e == -3.4028235E38f) {
            aVarB.h(this.f25545i);
        }
        if (w1Var.f27151d.f27203b == C.TIME_UNSET) {
            aVarB.i(this.f25542f);
        }
        if (w1Var.f27151d.f27204c == C.TIME_UNSET) {
            aVarB.g(this.f25543g);
        }
        w1.g gVarF = aVarB.f();
        if (!gVarF.equals(w1Var.f27151d)) {
            w1Var = w1Var.b().c(gVarF).a();
        }
        o oVarA = aVarF.a(w1Var);
        ImmutableList immutableList = ((w1.h) p0.j(w1Var.f27149b)).f27217f;
        if (!immutableList.isEmpty()) {
            o[] oVarArr = new o[immutableList.size() + 1];
            oVarArr[0] = oVarA;
            for (int i10 = 0; i10 < immutableList.size(); i10++) {
                if (this.f25546j) {
                    final p1 p1VarE = new p1.b().e0(((w1.l) immutableList.get(i10)).f27229b).V(((w1.l) immutableList.get(i10)).f27230c).g0(((w1.l) immutableList.get(i10)).f27231d).c0(((w1.l) immutableList.get(i10)).f27232e).U(((w1.l) immutableList.get(i10)).f27233f).S(((w1.l) immutableList.get(i10)).f27234g).E();
                    x.b bVar = new x.b(this.f25538b, new i9.r() {
                        @Override
                        public i9.l[] c(Uri uri, Map map) {
                            return i9.q.a(this, uri, map);
                        }

                        @Override
                        public final i9.l[] createExtractors() {
                            return com.google.android.exoplayer2.source.i.g(p1VarE);
                        }
                    });
                    com.google.android.exoplayer2.upstream.z zVar = this.f25540d;
                    if (zVar != null) {
                        bVar.c(zVar);
                    }
                    oVarArr[i10 + 1] = bVar.a(w1.e(((w1.l) immutableList.get(i10)).f27228a.toString()));
                } else {
                    d0.b bVar2 = new d0.b(this.f25538b);
                    com.google.android.exoplayer2.upstream.z zVar2 = this.f25540d;
                    if (zVar2 != null) {
                        bVar2.b(zVar2);
                    }
                    oVarArr[i10 + 1] = bVar2.a((w1.l) immutableList.get(i10), C.TIME_UNSET);
                }
            }
            oVarA = new MergingMediaSource(oVarArr);
        }
        return i(w1Var, h(w1Var, oVarA));
    }

    @Override
    public i b(com.google.android.exoplayer2.drm.x xVar) {
        this.f25537a.n((com.google.android.exoplayer2.drm.x) com.google.android.exoplayer2.util.a.f(xVar, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."));
        return this;
    }

    @Override
    public i c(com.google.android.exoplayer2.upstream.z zVar) {
        this.f25540d = (com.google.android.exoplayer2.upstream.z) com.google.android.exoplayer2.util.a.f(zVar, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior.");
        this.f25537a.o(zVar);
        return this;
    }

    public i(com.google.android.exoplayer2.upstream.k.a aVar, i9.r rVar) {
        this.f25538b = aVar;
        a aVar2 = new a(rVar);
        this.f25537a = aVar2;
        aVar2.m(aVar);
        this.f25541e = C.TIME_UNSET;
        this.f25542f = C.TIME_UNSET;
        this.f25543g = C.TIME_UNSET;
        this.f25544h = -3.4028235E38f;
        this.f25545i = -3.4028235E38f;
    }

    private static final class b implements i9.l {

        private final p1 f25554a;

        public b(p1 p1Var) {
            this.f25554a = p1Var;
        }

        @Override
        public void b(i9.n nVar) {
            i9.e0 e0VarTrack = nVar.track(0, 3);
            nVar.g(new i9.b0.b(C.TIME_UNSET));
            nVar.endTracks();
            e0VarTrack.d(this.f25554a.b().e0("text/x-unknown").I(this.f25554a.f24901l).E());
        }

        @Override
        public boolean c(i9.m mVar) {
            return true;
        }

        @Override
        public int d(i9.m mVar, i9.a0 a0Var) {
            return mVar.skip(Integer.MAX_VALUE) == -1 ? -1 : 0;
        }

        @Override
        public void release() {
        }

        @Override
        public void seek(long j10, long j11) {
        }
    }
}
