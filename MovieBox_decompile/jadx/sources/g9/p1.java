package g9;

import android.os.Looper;
import android.util.SparseArray;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.PointerIconCompat;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.b2;
import com.google.android.exoplayer2.l3;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.o2;
import com.google.android.exoplayer2.p2;
import com.google.android.exoplayer2.q3;
import com.google.android.exoplayer2.w1;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.g3;
import java.io.IOException;
import java.util.Collection;
import java.util.List;

public class p1 implements g9.a {

    private final com.google.android.exoplayer2.util.e f60827a;

    private final l3.b f60828b;

    private final l3.d f60829c;

    private final a f60830d;

    private final SparseArray f60831e;

    private com.google.android.exoplayer2.util.r f60832f;

    private p2 f60833g;

    private com.google.android.exoplayer2.util.o f60834h;

    private boolean f60835i;

    private static final class a {

        private final l3.b f60836a;

        private ImmutableList f60837b = ImmutableList.of();

        private ImmutableMap f60838c = ImmutableMap.of();

        private com.google.android.exoplayer2.source.o.b f60839d;

        private com.google.android.exoplayer2.source.o.b f60840e;

        private com.google.android.exoplayer2.source.o.b f60841f;

        public a(l3.b bVar) {
            this.f60836a = bVar;
        }

        private void b(ImmutableMap.b bVar, com.google.android.exoplayer2.source.o.b bVar2, l3 l3Var) {
            if (bVar2 == null) {
                return;
            }
            if (l3Var.f(bVar2.f73504a) != -1) {
                bVar.h(bVar2, l3Var);
                return;
            }
            l3 l3Var2 = (l3) this.f60838c.get(bVar2);
            if (l3Var2 != null) {
                bVar.h(bVar2, l3Var2);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        private static com.google.android.exoplayer2.source.o.b c(p2 p2Var, ImmutableList immutableList, com.google.android.exoplayer2.source.o.b bVar, l3.b bVar2) {
            l3 currentTimeline = p2Var.getCurrentTimeline();
            int currentPeriodIndex = p2Var.getCurrentPeriodIndex();
            Object objQ = currentTimeline.u() ? null : currentTimeline.q(currentPeriodIndex);
            int iG = (p2Var.isPlayingAd() || currentTimeline.u()) ? -1 : currentTimeline.j(currentPeriodIndex, bVar2).g(com.google.android.exoplayer2.util.p0.B0(p2Var.getCurrentPosition()) - bVar2.q());
            for (int i10 = 0; i10 < immutableList.size(); i10++) {
                com.google.android.exoplayer2.source.o.b bVar3 = (com.google.android.exoplayer2.source.o.b) immutableList.get(i10);
                if (i(bVar3, objQ, p2Var.isPlayingAd(), p2Var.getCurrentAdGroupIndex(), p2Var.getCurrentAdIndexInAdGroup(), iG)) {
                    return bVar3;
                }
            }
            if (immutableList.isEmpty() && bVar != null) {
                if (i(bVar, objQ, p2Var.isPlayingAd(), p2Var.getCurrentAdGroupIndex(), p2Var.getCurrentAdIndexInAdGroup(), iG)) {
                    return bVar;
                }
            }
            return null;
        }

        private static boolean i(com.google.android.exoplayer2.source.o.b bVar, Object obj, boolean z10, int i10, int i11, int i12) {
            if (bVar.f73504a.equals(obj)) {
                return (z10 && bVar.f73505b == i10 && bVar.f73506c == i11) || (!z10 && bVar.f73505b == -1 && bVar.f73508e == i12);
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        private void m(l3 l3Var) {
            ImmutableMap.b bVarBuilder = ImmutableMap.builder();
            if (this.f60837b.isEmpty()) {
                b(bVarBuilder, this.f60840e, l3Var);
                if (!com.google.common.base.j.a(this.f60841f, this.f60840e)) {
                    b(bVarBuilder, this.f60841f, l3Var);
                }
                if (!com.google.common.base.j.a(this.f60839d, this.f60840e) && !com.google.common.base.j.a(this.f60839d, this.f60841f)) {
                    b(bVarBuilder, this.f60839d, l3Var);
                }
            } else {
                for (int i10 = 0; i10 < this.f60837b.size(); i10++) {
                    b(bVarBuilder, (com.google.android.exoplayer2.source.o.b) this.f60837b.get(i10), l3Var);
                }
                if (!this.f60837b.contains(this.f60839d)) {
                    b(bVarBuilder, this.f60839d, l3Var);
                }
            }
            this.f60838c = bVarBuilder.d();
        }

        public com.google.android.exoplayer2.source.o.b d() {
            return this.f60839d;
        }

        public com.google.android.exoplayer2.source.o.b e() {
            if (this.f60837b.isEmpty()) {
                return null;
            }
            return (com.google.android.exoplayer2.source.o.b) g3.g(this.f60837b);
        }

        public l3 f(com.google.android.exoplayer2.source.o.b bVar) {
            return (l3) this.f60838c.get(bVar);
        }

        public com.google.android.exoplayer2.source.o.b g() {
            return this.f60840e;
        }

        public com.google.android.exoplayer2.source.o.b h() {
            return this.f60841f;
        }

        public void j(p2 p2Var) {
            this.f60839d = c(p2Var, this.f60837b, this.f60840e, this.f60836a);
        }

        public void k(List list, com.google.android.exoplayer2.source.o.b bVar, p2 p2Var) {
            this.f60837b = ImmutableList.copyOf((Collection) list);
            if (!list.isEmpty()) {
                this.f60840e = (com.google.android.exoplayer2.source.o.b) list.get(0);
                this.f60841f = (com.google.android.exoplayer2.source.o.b) com.google.android.exoplayer2.util.a.e(bVar);
            }
            if (this.f60839d == null) {
                this.f60839d = c(p2Var, this.f60837b, this.f60840e, this.f60836a);
            }
            m(p2Var.getCurrentTimeline());
        }

        public void l(p2 p2Var) {
            this.f60839d = c(p2Var, this.f60837b, this.f60840e, this.f60836a);
            m(p2Var.getCurrentTimeline());
        }
    }

    public p1(com.google.android.exoplayer2.util.e eVar) {
        this.f60827a = (com.google.android.exoplayer2.util.e) com.google.android.exoplayer2.util.a.e(eVar);
        this.f60832f = new com.google.android.exoplayer2.util.r(com.google.android.exoplayer2.util.p0.Q(), eVar, new com.google.android.exoplayer2.util.r.b() {
            @Override
            public final void a(Object obj, com.google.android.exoplayer2.util.m mVar) {
                p1.a1((c) obj, mVar);
            }
        });
        l3.b bVar = new l3.b();
        this.f60828b = bVar;
        this.f60829c = new l3.d();
        this.f60830d = new a(bVar);
        this.f60831e = new SparseArray();
    }

    public static void P1(c.a aVar, int i10, p2.e eVar, p2.e eVar2, c cVar) {
        cVar.S(aVar, i10);
        cVar.y(aVar, eVar, eVar2, i10);
    }

    private c.a U0(com.google.android.exoplayer2.source.o.b bVar) {
        com.google.android.exoplayer2.util.a.e(this.f60833g);
        l3 l3VarF = bVar == null ? null : this.f60830d.f(bVar);
        if (bVar != null && l3VarF != null) {
            return T0(l3VarF, l3VarF.l(bVar.f73504a, this.f60828b).f24525c, bVar);
        }
        int iU = this.f60833g.u();
        l3 currentTimeline = this.f60833g.getCurrentTimeline();
        if (iU >= currentTimeline.t()) {
            currentTimeline = l3.f24520a;
        }
        return T0(currentTimeline, iU, null);
    }

    private c.a V0() {
        return U0(this.f60830d.e());
    }

    private c.a W0(int i10, com.google.android.exoplayer2.source.o.b bVar) {
        com.google.android.exoplayer2.util.a.e(this.f60833g);
        if (bVar != null) {
            return this.f60830d.f(bVar) != null ? U0(bVar) : T0(l3.f24520a, i10, bVar);
        }
        l3 currentTimeline = this.f60833g.getCurrentTimeline();
        if (i10 >= currentTimeline.t()) {
            currentTimeline = l3.f24520a;
        }
        return T0(currentTimeline, i10, null);
    }

    private c.a X0() {
        return U0(this.f60830d.g());
    }

    private c.a Y0() {
        return U0(this.f60830d.h());
    }

    private c.a Z0(PlaybackException playbackException) {
        v9.j jVar;
        return (!(playbackException instanceof ExoPlaybackException) || (jVar = ((ExoPlaybackException) playbackException).mediaPeriodId) == null) ? S0() : U0(new com.google.android.exoplayer2.source.o.b(jVar));
    }

    public static void b2(c.a aVar, String str, long j10, long j11, c cVar) {
        cVar.Z(aVar, str, j10);
        cVar.w0(aVar, str, j11, j10);
        cVar.F(aVar, 2, str, j10);
    }

    public static void d1(c.a aVar, String str, long j10, long j11, c cVar) {
        cVar.H(aVar, str, j10);
        cVar.I(aVar, str, j11, j10);
        cVar.F(aVar, 1, str, j10);
    }

    public static void d2(c.a aVar, com.google.android.exoplayer2.decoder.e eVar, c cVar) {
        cVar.N(aVar, eVar);
        cVar.L(aVar, 2, eVar);
    }

    public static void e2(c.a aVar, com.google.android.exoplayer2.decoder.e eVar, c cVar) {
        cVar.U(aVar, eVar);
        cVar.r(aVar, 2, eVar);
    }

    public static void f1(c.a aVar, com.google.android.exoplayer2.decoder.e eVar, c cVar) {
        cVar.P(aVar, eVar);
        cVar.L(aVar, 1, eVar);
    }

    public static void g1(c.a aVar, com.google.android.exoplayer2.decoder.e eVar, c cVar) {
        cVar.z(aVar, eVar);
        cVar.r(aVar, 1, eVar);
    }

    public static void g2(c.a aVar, com.google.android.exoplayer2.p1 p1Var, com.google.android.exoplayer2.decoder.g gVar, c cVar) {
        cVar.e0(aVar, p1Var);
        cVar.r0(aVar, p1Var, gVar);
        cVar.j(aVar, 2, p1Var);
    }

    public static void h1(c.a aVar, com.google.android.exoplayer2.p1 p1Var, com.google.android.exoplayer2.decoder.g gVar, c cVar) {
        cVar.u(aVar, p1Var);
        cVar.f(aVar, p1Var, gVar);
        cVar.j(aVar, 1, p1Var);
    }

    public static void h2(c.a aVar, com.google.android.exoplayer2.video.y yVar, c cVar) {
        cVar.f0(aVar, yVar);
        cVar.E(aVar, yVar.f27140a, yVar.f27141b, yVar.f27142c, yVar.f27143d);
    }

    public void k2(p2 p2Var, c cVar, com.google.android.exoplayer2.util.m mVar) {
        cVar.k0(p2Var, new c.b(mVar, this.f60831e));
    }

    public void l2() {
        final c.a aVarS0 = S0();
        m2(aVarS0, 1028, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).D(aVarS0);
            }
        });
        this.f60832f.j();
    }

    public static void v1(c.a aVar, int i10, c cVar) {
        cVar.Y(aVar);
        cVar.v0(aVar, i10);
    }

    public static void z1(c.a aVar, boolean z10, c cVar) {
        cVar.d(aVar, z10);
        cVar.n0(aVar, z10);
    }

    @Override
    public final void A(int i10, com.google.android.exoplayer2.source.o.b bVar) {
        final c.a aVarW0 = W0(i10, bVar);
        m2(aVarW0, 1023, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).b(aVarW0);
            }
        });
    }

    @Override
    public final void B(int i10, com.google.android.exoplayer2.source.o.b bVar, final int i11) {
        final c.a aVarW0 = W0(i10, bVar);
        m2(aVarW0, 1022, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                p1.v1(aVarW0, i11, (c) obj);
            }
        });
    }

    @Override
    public final void C(int i10, com.google.android.exoplayer2.source.o.b bVar) {
        final c.a aVarW0 = W0(i10, bVar);
        m2(aVarW0, 1027, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).i(aVarW0);
            }
        });
    }

    @Override
    public final void D(int i10, com.google.android.exoplayer2.source.o.b bVar, final v9.h hVar, final v9.i iVar) {
        final c.a aVarW0 = W0(i10, bVar);
        m2(aVarW0, 1001, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).A(aVarW0, hVar, iVar);
            }
        });
    }

    @Override
    public final void E(int i10, com.google.android.exoplayer2.source.o.b bVar, final v9.i iVar) {
        final c.a aVarW0 = W0(i10, bVar);
        m2(aVarW0, 1005, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).O(aVarW0, iVar);
            }
        });
    }

    @Override
    public final void F(int i10, com.google.android.exoplayer2.source.o.b bVar) {
        final c.a aVarW0 = W0(i10, bVar);
        m2(aVarW0, InputDeviceCompat.SOURCE_GAMEPAD, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).h0(aVarW0);
            }
        });
    }

    protected final c.a S0() {
        return U0(this.f60830d.d());
    }

    protected final c.a T0(l3 l3Var, int i10, com.google.android.exoplayer2.source.o.b bVar) {
        com.google.android.exoplayer2.source.o.b bVar2 = l3Var.u() ? null : bVar;
        long jElapsedRealtime = this.f60827a.elapsedRealtime();
        boolean z10 = l3Var.equals(this.f60833g.getCurrentTimeline()) && i10 == this.f60833g.u();
        long jE = 0;
        if (bVar2 == null || !bVar2.b()) {
            if (z10) {
                jE = this.f60833g.getContentPosition();
            } else if (!l3Var.u()) {
                jE = l3Var.r(i10, this.f60829c).e();
            }
        } else if (z10 && this.f60833g.getCurrentAdGroupIndex() == bVar2.f73505b && this.f60833g.getCurrentAdIndexInAdGroup() == bVar2.f73506c) {
            jE = this.f60833g.getCurrentPosition();
        }
        return new c.a(jElapsedRealtime, l3Var, i10, bVar2, jE, this.f60833g.getCurrentTimeline(), this.f60833g.u(), this.f60830d.d(), this.f60833g.getCurrentPosition(), this.f60833g.d());
    }

    @Override
    public final void a(final Exception exc) {
        final c.a aVarY0 = Y0();
        m2(aVarY0, PointerIconCompat.TYPE_HORIZONTAL_DOUBLE_ARROW, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).m0(aVarY0, exc);
            }
        });
    }

    @Override
    public final void b(final String str) {
        final c.a aVarY0 = Y0();
        m2(aVarY0, PointerIconCompat.TYPE_ZOOM_OUT, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).z0(aVarY0, str);
            }
        });
    }

    @Override
    public final void c(final String str) {
        final c.a aVarY0 = Y0();
        m2(aVarY0, 1012, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).x0(aVarY0, str);
            }
        });
    }

    @Override
    public final void d(final long j10) {
        final c.a aVarY0 = Y0();
        m2(aVarY0, 1010, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).q0(aVarY0, j10);
            }
        });
    }

    @Override
    public final void e(final Exception exc) {
        final c.a aVarY0 = Y0();
        m2(aVarY0, 1030, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).g0(aVarY0, exc);
            }
        });
    }

    @Override
    public final void f(final Object obj, final long j10) {
        final c.a aVarY0 = Y0();
        m2(aVarY0, 26, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj2) {
                ((c) obj2).a(aVarY0, obj, j10);
            }
        });
    }

    @Override
    public final void g(final Exception exc) {
        final c.a aVarY0 = Y0();
        m2(aVarY0, 1029, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).j0(aVarY0, exc);
            }
        });
    }

    @Override
    public final void h(final int i10, final long j10, final long j11) {
        final c.a aVarY0 = Y0();
        m2(aVarY0, 1011, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).T(aVarY0, i10, j10, j11);
            }
        });
    }

    @Override
    public final void i(final long j10, final int i10) {
        final c.a aVarX0 = X0();
        m2(aVarX0, PointerIconCompat.TYPE_GRABBING, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).B(aVarX0, j10, i10);
            }
        });
    }

    @Override
    public final void j(final com.google.android.exoplayer2.decoder.e eVar) {
        final c.a aVarY0 = Y0();
        m2(aVarY0, PointerIconCompat.TYPE_CROSSHAIR, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                p1.g1(aVarY0, eVar, (c) obj);
            }
        });
    }

    @Override
    public final void k(final com.google.android.exoplayer2.p1 p1Var, final com.google.android.exoplayer2.decoder.g gVar) {
        final c.a aVarY0 = Y0();
        m2(aVarY0, PointerIconCompat.TYPE_TOP_LEFT_DIAGONAL_DOUBLE_ARROW, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                p1.g2(aVarY0, p1Var, gVar, (c) obj);
            }
        });
    }

    @Override
    public final void l(int i10, com.google.android.exoplayer2.source.o.b bVar, final v9.h hVar, final v9.i iVar) {
        final c.a aVarW0 = W0(i10, bVar);
        m2(aVarW0, 1002, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).m(aVarW0, hVar, iVar);
            }
        });
    }

    @Override
    public final void m() {
        if (this.f60835i) {
            return;
        }
        final c.a aVarS0 = S0();
        this.f60835i = true;
        m2(aVarS0, -1, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).b0(aVarS0);
            }
        });
    }

    protected final void m2(c.a aVar, int i10, com.google.android.exoplayer2.util.r.a aVar2) {
        this.f60831e.put(i10, aVar);
        this.f60832f.l(i10, aVar2);
    }

    @Override
    public final void n(final com.google.android.exoplayer2.decoder.e eVar) {
        final c.a aVarX0 = X0();
        m2(aVarX0, PointerIconCompat.TYPE_GRAB, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                p1.d2(aVarX0, eVar, (c) obj);
            }
        });
    }

    @Override
    public final void o(final com.google.android.exoplayer2.decoder.e eVar) {
        final c.a aVarX0 = X0();
        m2(aVarX0, PointerIconCompat.TYPE_ALL_SCROLL, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                p1.f1(aVarX0, eVar, (c) obj);
            }
        });
    }

    @Override
    public final void onAudioDecoderInitialized(final String str, final long j10, final long j11) {
        final c.a aVarY0 = Y0();
        m2(aVarY0, PointerIconCompat.TYPE_TEXT, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                p1.d1(aVarY0, str, j11, j10, (c) obj);
            }
        });
    }

    @Override
    public void onAvailableCommandsChanged(final p2.b bVar) {
        final c.a aVarS0 = S0();
        m2(aVarS0, 13, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).o0(aVarS0, bVar);
            }
        });
    }

    @Override
    public final void onBandwidthSample(final int i10, final long j10, final long j11) {
        final c.a aVarV0 = V0();
        m2(aVarV0, PointerIconCompat.TYPE_CELL, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).p0(aVarV0, i10, j10, j11);
            }
        });
    }

    @Override
    public void onCues(final List list) {
        final c.a aVarS0 = S0();
        m2(aVarS0, 27, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).p(aVarS0, list);
            }
        });
    }

    @Override
    public void onDeviceInfoChanged(final com.google.android.exoplayer2.r rVar) {
        final c.a aVarS0 = S0();
        m2(aVarS0, 29, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).g(aVarS0, rVar);
            }
        });
    }

    @Override
    public void onDeviceVolumeChanged(final int i10, final boolean z10) {
        final c.a aVarS0 = S0();
        m2(aVarS0, 30, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).n(aVarS0, i10, z10);
            }
        });
    }

    @Override
    public final void onDroppedFrames(final int i10, final long j10) {
        final c.a aVarX0 = X0();
        m2(aVarX0, PointerIconCompat.TYPE_ZOOM_IN, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).t(aVarX0, i10, j10);
            }
        });
    }

    @Override
    public final void onIsLoadingChanged(final boolean z10) {
        final c.a aVarS0 = S0();
        m2(aVarS0, 3, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                p1.z1(aVarS0, z10, (c) obj);
            }
        });
    }

    @Override
    public void onIsPlayingChanged(final boolean z10) {
        final c.a aVarS0 = S0();
        m2(aVarS0, 7, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).q(aVarS0, z10);
            }
        });
    }

    @Override
    public final void onMediaItemTransition(final w1 w1Var, final int i10) {
        final c.a aVarS0 = S0();
        m2(aVarS0, 1, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).l(aVarS0, w1Var, i10);
            }
        });
    }

    @Override
    public void onMediaMetadataChanged(final b2 b2Var) {
        final c.a aVarS0 = S0();
        m2(aVarS0, 14, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).e(aVarS0, b2Var);
            }
        });
    }

    @Override
    public final void onMetadata(final Metadata metadata) {
        final c.a aVarS0 = S0();
        m2(aVarS0, 28, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).t0(aVarS0, metadata);
            }
        });
    }

    @Override
    public final void onPlayWhenReadyChanged(final boolean z10, final int i10) {
        final c.a aVarS0 = S0();
        m2(aVarS0, 5, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).s(aVarS0, z10, i10);
            }
        });
    }

    @Override
    public final void onPlaybackParametersChanged(final o2 o2Var) {
        final c.a aVarS0 = S0();
        m2(aVarS0, 12, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).R(aVarS0, o2Var);
            }
        });
    }

    @Override
    public final void onPlaybackStateChanged(final int i10) {
        final c.a aVarS0 = S0();
        m2(aVarS0, 4, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).i0(aVarS0, i10);
            }
        });
    }

    @Override
    public final void onPlaybackSuppressionReasonChanged(final int i10) {
        final c.a aVarS0 = S0();
        m2(aVarS0, 6, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).u0(aVarS0, i10);
            }
        });
    }

    @Override
    public final void onPlayerError(final PlaybackException playbackException) {
        final c.a aVarZ0 = Z0(playbackException);
        m2(aVarZ0, 10, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).G(aVarZ0, playbackException);
            }
        });
    }

    @Override
    public void onPlayerErrorChanged(final PlaybackException playbackException) {
        final c.a aVarZ0 = Z0(playbackException);
        m2(aVarZ0, 10, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).o(aVarZ0, playbackException);
            }
        });
    }

    @Override
    public final void onPlayerStateChanged(final boolean z10, final int i10) {
        final c.a aVarS0 = S0();
        m2(aVarS0, -1, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).M(aVarS0, z10, i10);
            }
        });
    }

    @Override
    public void onPositionDiscontinuity(int i10) {
    }

    @Override
    public final void onRepeatModeChanged(final int i10) {
        final c.a aVarS0 = S0();
        m2(aVarS0, 8, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).W(aVarS0, i10);
            }
        });
    }

    @Override
    public final void onSeekProcessed() {
        final c.a aVarS0 = S0();
        m2(aVarS0, -1, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).l0(aVarS0);
            }
        });
    }

    @Override
    public final void onShuffleModeEnabledChanged(final boolean z10) {
        final c.a aVarS0 = S0();
        m2(aVarS0, 9, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).c0(aVarS0, z10);
            }
        });
    }

    @Override
    public final void onSkipSilenceEnabledChanged(final boolean z10) {
        final c.a aVarY0 = Y0();
        m2(aVarY0, 23, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).w(aVarY0, z10);
            }
        });
    }

    @Override
    public final void onSurfaceSizeChanged(final int i10, final int i11) {
        final c.a aVarY0 = Y0();
        m2(aVarY0, 24, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).y0(aVarY0, i10, i11);
            }
        });
    }

    @Override
    public final void onTimelineChanged(l3 l3Var, final int i10) {
        this.f60830d.l((p2) com.google.android.exoplayer2.util.a.e(this.f60833g));
        final c.a aVarS0 = S0();
        m2(aVarS0, 0, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).a0(aVarS0, i10);
            }
        });
    }

    @Override
    public void onTrackSelectionParametersChanged(final na.z zVar) {
        final c.a aVarS0 = S0();
        m2(aVarS0, 19, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).C(aVarS0, zVar);
            }
        });
    }

    @Override
    public void onTracksChanged(final q3 q3Var) {
        final c.a aVarS0 = S0();
        m2(aVarS0, 2, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).X(aVarS0, q3Var);
            }
        });
    }

    @Override
    public final void onVideoDecoderInitialized(final String str, final long j10, final long j11) {
        final c.a aVarY0 = Y0();
        m2(aVarY0, PointerIconCompat.TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                p1.b2(aVarY0, str, j11, j10, (c) obj);
            }
        });
    }

    @Override
    public final void onVideoSizeChanged(final com.google.android.exoplayer2.video.y yVar) {
        final c.a aVarY0 = Y0();
        m2(aVarY0, 25, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                p1.h2(aVarY0, yVar, (c) obj);
            }
        });
    }

    @Override
    public final void onVolumeChanged(final float f10) {
        final c.a aVarY0 = Y0();
        m2(aVarY0, 22, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).K(aVarY0, f10);
            }
        });
    }

    @Override
    public final void p(int i10, com.google.android.exoplayer2.source.o.b bVar) {
        final c.a aVarW0 = W0(i10, bVar);
        m2(aVarW0, 1026, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).Q(aVarW0);
            }
        });
    }

    @Override
    public void q(c cVar) {
        com.google.android.exoplayer2.util.a.e(cVar);
        this.f60832f.c(cVar);
    }

    @Override
    public void r(final p2 p2Var, Looper looper) {
        com.google.android.exoplayer2.util.a.g(this.f60833g == null || this.f60830d.f60837b.isEmpty());
        this.f60833g = (p2) com.google.android.exoplayer2.util.a.e(p2Var);
        this.f60834h = this.f60827a.createHandler(looper, null);
        this.f60832f = this.f60832f.e(looper, new com.google.android.exoplayer2.util.r.b() {
            @Override
            public final void a(Object obj, com.google.android.exoplayer2.util.m mVar) {
                this.f60797a.k2(p2Var, (c) obj, mVar);
            }
        });
    }

    @Override
    public void release() {
        ((com.google.android.exoplayer2.util.o) com.google.android.exoplayer2.util.a.i(this.f60834h)).post(new Runnable() {
            @Override
            public final void run() {
                this.f60768a.l2();
            }
        });
    }

    @Override
    public void s(int i10, com.google.android.exoplayer2.source.o.b bVar) {
        com.google.android.exoplayer2.drm.l.a(this, i10, bVar);
    }

    @Override
    public final void t(final com.google.android.exoplayer2.p1 p1Var, final com.google.android.exoplayer2.decoder.g gVar) {
        final c.a aVarY0 = Y0();
        m2(aVarY0, PointerIconCompat.TYPE_VERTICAL_TEXT, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                p1.h1(aVarY0, p1Var, gVar, (c) obj);
            }
        });
    }

    @Override
    public final void u(int i10, com.google.android.exoplayer2.source.o.b bVar, final v9.h hVar, final v9.i iVar) {
        final c.a aVarW0 = W0(i10, bVar);
        m2(aVarW0, 1000, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).d0(aVarW0, hVar, iVar);
            }
        });
    }

    @Override
    public final void v(final com.google.android.exoplayer2.decoder.e eVar) {
        final c.a aVarY0 = Y0();
        m2(aVarY0, PointerIconCompat.TYPE_VERTICAL_DOUBLE_ARROW, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                p1.e2(aVarY0, eVar, (c) obj);
            }
        });
    }

    @Override
    public final void w(int i10, com.google.android.exoplayer2.source.o.b bVar, final Exception exc) {
        final c.a aVarW0 = W0(i10, bVar);
        m2(aVarW0, 1024, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).s0(aVarW0, exc);
            }
        });
    }

    @Override
    public final void x(List list, com.google.android.exoplayer2.source.o.b bVar) {
        this.f60830d.k(list, bVar, (p2) com.google.android.exoplayer2.util.a.e(this.f60833g));
    }

    @Override
    public final void y(int i10, com.google.android.exoplayer2.source.o.b bVar, final v9.i iVar) {
        final c.a aVarW0 = W0(i10, bVar);
        m2(aVarW0, 1004, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).c(aVarW0, iVar);
            }
        });
    }

    @Override
    public final void z(int i10, com.google.android.exoplayer2.source.o.b bVar, final v9.h hVar, final v9.i iVar, final IOException iOException, final boolean z10) {
        final c.a aVarW0 = W0(i10, bVar);
        m2(aVarW0, 1003, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).h(aVarW0, hVar, iVar, iOException, z10);
            }
        });
    }

    @Override
    public final void onPositionDiscontinuity(final p2.e eVar, final p2.e eVar2, final int i10) {
        if (i10 == 1) {
            this.f60835i = false;
        }
        this.f60830d.j((p2) com.google.android.exoplayer2.util.a.e(this.f60833g));
        final c.a aVarS0 = S0();
        m2(aVarS0, 11, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                p1.P1(aVarS0, i10, eVar, eVar2, (c) obj);
            }
        });
    }

    @Override
    public void onCues(final da.f fVar) {
        final c.a aVarS0 = S0();
        m2(aVarS0, 27, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).J(aVarS0, fVar);
            }
        });
    }

    @Override
    public void onRenderedFirstFrame() {
    }

    @Override
    public void onLoadingChanged(boolean z10) {
    }

    public static void a1(c cVar, com.google.android.exoplayer2.util.m mVar) {
    }

    @Override
    public void onEvents(p2 p2Var, p2.c cVar) {
    }
}
