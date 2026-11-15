package com.google.android.exoplayer2.source;

import android.content.Context;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import com.google.android.exoplayer2.source.d;
import com.google.common.collect.ImmutableList;
import defpackage.blb;
import defpackage.fva;
import defpackage.id8;
import defpackage.j33;
import defpackage.ja9;
import defpackage.nk3;
import defpackage.p2a;
import defpackage.pk3;
import defpackage.qk3;
import defpackage.u4a;
import defpackage.uk3;
import defpackage.w6a;
import defpackage.zi;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class d implements i.a {
    public final a a;
    public com.google.android.exoplayer2.upstream.a.InterfaceC0084a b;
    public i.a c;
    public com.google.android.exoplayer2.upstream.f d;
    public long e;
    public long f;
    public long g;
    public float h;
    public float i;
    public boolean j;

    public static final class a {
        public final uk3 a;
        public final Map b = new HashMap();
        public final Set c = new HashSet();
        public final Map d = new HashMap();
        public com.google.android.exoplayer2.upstream.a.InterfaceC0084a e;
        public j33 f;
        public com.google.android.exoplayer2.upstream.f g;

        public a(uk3 uk3Var) {
            this.a = uk3Var;
        }

        public i.a f(int i) {
            i.a aVar = (i.a) this.d.get(Integer.valueOf(i));
            if (aVar != null) {
                return aVar;
            }
            w6a w6aVarL = l(i);
            if (w6aVarL == null) {
                return null;
            }
            i.a aVar2 = (i.a) w6aVarL.get();
            j33 j33Var = this.f;
            if (j33Var != null) {
                aVar2.c(j33Var);
            }
            com.google.android.exoplayer2.upstream.f fVar = this.g;
            if (fVar != null) {
                aVar2.a(fVar);
            }
            this.d.put(Integer.valueOf(i), aVar2);
            return aVar2;
        }

        public final i.a k(com.google.android.exoplayer2.upstream.a.InterfaceC0084a interfaceC0084a) {
            return new n.b(interfaceC0084a, this.a);
        }

        /* JADX WARN: Code duplicated, block: B:27:0x0086  */
        public final w6a l(int i) {
            w6a w6aVar;
            w6a w6aVar2;
            if (this.b.containsKey(Integer.valueOf(i))) {
                return (w6a) this.b.get(Integer.valueOf(i));
            }
            final com.google.android.exoplayer2.upstream.a.InterfaceC0084a interfaceC0084a = (com.google.android.exoplayer2.upstream.a.InterfaceC0084a) zi.e(this.e);
            w6a w6aVar3 = null;
            try {
                if (i == 0) {
                    final Class<? extends U> clsAsSubclass = Class.forName("com.google.android.exoplayer2.source.dash.DashMediaSource$Factory").asSubclass(i.a.class);
                    w6aVar = new w6a() {
                        @Override
                        public final Object get() {
                            return d.f(clsAsSubclass, interfaceC0084a);
                        }
                    };
                } else {
                    if (i != 1) {
                        if (i != 2) {
                            if (i == 3) {
                                final Class<? extends U> clsAsSubclass2 = Class.forName("com.google.android.exoplayer2.source.rtsp.RtspMediaSource$Factory").asSubclass(i.a.class);
                                w6aVar2 = new w6a() {
                                    @Override
                                    public final Object get() {
                                        return d.e(clsAsSubclass2);
                                    }
                                };
                            } else if (i == 4) {
                                w6aVar2 = new w6a() {
                                    @Override
                                    public final Object get() {
                                        return this.b.k(interfaceC0084a);
                                    }
                                };
                            }
                            w6aVar3 = w6aVar2;
                        } else {
                            final Class<? extends U> clsAsSubclass3 = Class.forName("com.google.android.exoplayer2.source.hls.HlsMediaSource$Factory").asSubclass(i.a.class);
                            w6aVar = new w6a() {
                                @Override
                                public final Object get() {
                                    return d.f(clsAsSubclass3, interfaceC0084a);
                                }
                            };
                        }
                        this.b.put(Integer.valueOf(i), w6aVar3);
                        if (w6aVar3 != null) {
                            this.c.add(Integer.valueOf(i));
                        }
                        return w6aVar3;
                    }
                    final Class<? extends U> clsAsSubclass4 = Class.forName("com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource$Factory").asSubclass(i.a.class);
                    w6aVar = new w6a() {
                        @Override
                        public final Object get() {
                            return d.f(clsAsSubclass4, interfaceC0084a);
                        }
                    };
                }
                w6aVar3 = w6aVar;
            } catch (ClassNotFoundException unused) {
            }
            this.b.put(Integer.valueOf(i), w6aVar3);
            if (w6aVar3 != null) {
                this.c.add(Integer.valueOf(i));
            }
            return w6aVar3;
        }

        public void m(com.google.android.exoplayer2.upstream.a.InterfaceC0084a interfaceC0084a) {
            if (interfaceC0084a != this.e) {
                this.e = interfaceC0084a;
                this.b.clear();
                this.d.clear();
            }
        }

        public void n(j33 j33Var) {
            this.f = j33Var;
            Iterator it = this.d.values().iterator();
            while (it.hasNext()) {
                ((i.a) it.next()).c(j33Var);
            }
        }

        public void o(com.google.android.exoplayer2.upstream.f fVar) {
            this.g = fVar;
            Iterator it = this.d.values().iterator();
            while (it.hasNext()) {
                ((i.a) it.next()).a(fVar);
            }
        }
    }

    public static final class b implements nk3 {
        public final com.google.android.exoplayer2.k a;

        public b(com.google.android.exoplayer2.k kVar) {
            this.a = kVar;
        }

        @Override
        public void a(qk3 qk3Var) {
            fva fvaVarTrack = qk3Var.track(0, 3);
            qk3Var.d(new ja9.b(C.TIME_UNSET));
            qk3Var.endTracks();
            fvaVarTrack.b(this.a.b().e0(MimeTypes.TEXT_UNKNOWN).I(this.a.m).E());
        }

        @Override
        public int b(pk3 pk3Var, id8 id8Var) {
            return pk3Var.skip(Integer.MAX_VALUE) == -1 ? -1 : 0;
        }

        @Override
        public boolean c(pk3 pk3Var) {
            return true;
        }

        @Override
        public void release() {
        }

        @Override
        public void seek(long j, long j2) {
        }
    }

    public d(Context context, uk3 uk3Var) {
        this(new com.google.android.exoplayer2.upstream.c.a(context), uk3Var);
    }

    public static i.a e(Class cls) {
        return j(cls);
    }

    public static i.a f(Class cls, com.google.android.exoplayer2.upstream.a.InterfaceC0084a interfaceC0084a) {
        return k(cls, interfaceC0084a);
    }

    public static nk3[] g(com.google.android.exoplayer2.k kVar) {
        p2a p2aVar = p2a.a;
        return new nk3[]{p2aVar.a(kVar) ? new u4a(p2aVar.b(kVar), kVar) : new b(kVar)};
    }

    public static i h(com.google.android.exoplayer2.n nVar, i iVar) {
        com.google.android.exoplayer2.n.d dVar = nVar.g;
        long j = dVar.b;
        if (j == 0 && dVar.c == Long.MIN_VALUE && !dVar.e) {
            return iVar;
        }
        long jT0 = blb.t0(j);
        long jT1 = blb.t0(nVar.g.c);
        com.google.android.exoplayer2.n.d dVar2 = nVar.g;
        return new ClippingMediaSource(iVar, jT0, jT1, !dVar2.f, dVar2.d, dVar2.e);
    }

    public static i.a j(Class cls) {
        try {
            return (i.a) cls.getConstructor(null).newInstance(null);
        } catch (Exception e) {
            throw new IllegalStateException(e);
        }
    }

    public static i.a k(Class cls, com.google.android.exoplayer2.upstream.a.InterfaceC0084a interfaceC0084a) {
        try {
            return (i.a) cls.getConstructor(com.google.android.exoplayer2.upstream.a.InterfaceC0084a.class).newInstance(interfaceC0084a);
        } catch (Exception e) {
            throw new IllegalStateException(e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public i b(com.google.android.exoplayer2.n nVar) {
        zi.e(nVar.c);
        String scheme = nVar.c.a.getScheme();
        if (scheme != null && scheme.equals(C.SSAI_SCHEME)) {
            return ((i.a) zi.e(this.c)).b(nVar);
        }
        com.google.android.exoplayer2.n.h hVar = nVar.c;
        int iI0 = blb.i0(hVar.a, hVar.b);
        i.a aVarF = this.a.f(iI0);
        zi.j(aVarF, "No suitable media source factory found for content type: " + iI0);
        com.google.android.exoplayer2.n.g.a aVarB = nVar.e.b();
        if (nVar.e.b == C.TIME_UNSET) {
            aVarB.k(this.e);
        }
        if (nVar.e.e == -3.4028235E38f) {
            aVarB.j(this.h);
        }
        if (nVar.e.f == -3.4028235E38f) {
            aVarB.h(this.i);
        }
        if (nVar.e.c == C.TIME_UNSET) {
            aVarB.i(this.f);
        }
        if (nVar.e.d == C.TIME_UNSET) {
            aVarB.g(this.g);
        }
        com.google.android.exoplayer2.n.g gVarF = aVarB.f();
        if (!gVarF.equals(nVar.e)) {
            nVar = nVar.b().c(gVarF).a();
        }
        i iVarB = aVarF.b(nVar);
        ImmutableList immutableList = ((com.google.android.exoplayer2.n.h) blb.j(nVar.c)).f;
        if (!immutableList.isEmpty()) {
            i[] iVarArr = new i[immutableList.size() + 1];
            iVarArr[0] = iVarB;
            for (int i = 0; i < immutableList.size(); i++) {
                if (this.j) {
                    final com.google.android.exoplayer2.k kVarE = new com.google.android.exoplayer2.k.b().e0(((com.google.android.exoplayer2.n.l) immutableList.get(i)).b).V(((com.google.android.exoplayer2.n.l) immutableList.get(i)).c).g0(((com.google.android.exoplayer2.n.l) immutableList.get(i)).d).c0(((com.google.android.exoplayer2.n.l) immutableList.get(i)).e).U(((com.google.android.exoplayer2.n.l) immutableList.get(i)).f).S(((com.google.android.exoplayer2.n.l) immutableList.get(i)).g).E();
                    n.b bVar = new n.b(this.b, new uk3() {
                        @Override
                        public final nk3[] createExtractors() {
                            return d.g(kVarE);
                        }
                    });
                    com.google.android.exoplayer2.upstream.f fVar = this.d;
                    if (fVar != null) {
                        bVar.a(fVar);
                    }
                    iVarArr[i + 1] = bVar.b(com.google.android.exoplayer2.n.e(((com.google.android.exoplayer2.n.l) immutableList.get(i)).a.toString()));
                } else {
                    s.b bVar2 = new s.b(this.b);
                    com.google.android.exoplayer2.upstream.f fVar2 = this.d;
                    if (fVar2 != null) {
                        bVar2.b(fVar2);
                    }
                    iVarArr[i + 1] = bVar2.a((com.google.android.exoplayer2.n.l) immutableList.get(i), C.TIME_UNSET);
                }
            }
            iVarB = new MergingMediaSource(iVarArr);
        }
        return i(nVar, h(nVar, iVarB));
    }

    public final i i(com.google.android.exoplayer2.n nVar, i iVar) {
        zi.e(nVar.c);
        nVar.c.getClass();
        return iVar;
    }

    @Override
    public d c(j33 j33Var) {
        this.a.n((j33) zi.f(j33Var, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."));
        return this;
    }

    @Override
    public d a(com.google.android.exoplayer2.upstream.f fVar) {
        this.d = (com.google.android.exoplayer2.upstream.f) zi.f(fVar, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior.");
        this.a.o(fVar);
        return this;
    }

    public d(com.google.android.exoplayer2.upstream.a.InterfaceC0084a interfaceC0084a, uk3 uk3Var) {
        this.b = interfaceC0084a;
        a aVar = new a(uk3Var);
        this.a = aVar;
        aVar.m(interfaceC0084a);
        this.e = C.TIME_UNSET;
        this.f = C.TIME_UNSET;
        this.g = C.TIME_UNSET;
        this.h = -3.4028235E38f;
        this.i = -3.4028235E38f;
    }
}
