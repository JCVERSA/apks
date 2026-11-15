package x1;

import android.os.Looper;
import android.util.SparseArray;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.PointerIconCompat;
import androidx.media3.common.PlaybackException;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.audio.AudioSink;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import java.io.IOException;
import java.util.Collection;
import java.util.List;
import java.util.Objects;

public class s1 implements x1.a {

    private final androidx.media3.common.util.i f74986a;

    private final androidx.media3.common.e0.b f74987b;

    private final androidx.media3.common.e0.c f74988c;

    private final a f74989d;

    private final SparseArray f74990e;

    private androidx.media3.common.util.t f74991f;

    private androidx.media3.common.a0 f74992g;

    private androidx.media3.common.util.p f74993h;

    private boolean f74994i;

    private static final class a {

        private final androidx.media3.common.e0.b f74995a;

        private ImmutableList f74996b = ImmutableList.of();

        private ImmutableMap f74997c = ImmutableMap.of();

        private androidx.media3.exoplayer.source.r.b f74998d;

        private androidx.media3.exoplayer.source.r.b f74999e;

        private androidx.media3.exoplayer.source.r.b f75000f;

        public a(androidx.media3.common.e0.b bVar) {
            this.f74995a = bVar;
        }

        private void b(ImmutableMap.b bVar, androidx.media3.exoplayer.source.r.b bVar2, androidx.media3.common.e0 e0Var) {
            if (bVar2 == null) {
                return;
            }
            if (e0Var.b(bVar2.f12571a) != -1) {
                bVar.h(bVar2, e0Var);
                return;
            }
            androidx.media3.common.e0 e0Var2 = (androidx.media3.common.e0) this.f74997c.get(bVar2);
            if (e0Var2 != null) {
                bVar.h(bVar2, e0Var2);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        private static androidx.media3.exoplayer.source.r.b c(androidx.media3.common.a0 a0Var, ImmutableList immutableList, androidx.media3.exoplayer.source.r.b bVar, androidx.media3.common.e0.b bVar2) {
            androidx.media3.common.e0 currentTimeline = a0Var.getCurrentTimeline();
            int currentPeriodIndex = a0Var.getCurrentPeriodIndex();
            Object objM = currentTimeline.q() ? null : currentTimeline.m(currentPeriodIndex);
            int iD = (a0Var.isPlayingAd() || currentTimeline.q()) ? -1 : currentTimeline.f(currentPeriodIndex, bVar2).d(androidx.media3.common.util.a1.R0(a0Var.getCurrentPosition()) - bVar2.o());
            for (int i10 = 0; i10 < immutableList.size(); i10++) {
                androidx.media3.exoplayer.source.r.b bVar3 = (androidx.media3.exoplayer.source.r.b) immutableList.get(i10);
                if (i(bVar3, objM, a0Var.isPlayingAd(), a0Var.getCurrentAdGroupIndex(), a0Var.getCurrentAdIndexInAdGroup(), iD)) {
                    return bVar3;
                }
            }
            if (immutableList.isEmpty() && bVar != null) {
                if (i(bVar, objM, a0Var.isPlayingAd(), a0Var.getCurrentAdGroupIndex(), a0Var.getCurrentAdIndexInAdGroup(), iD)) {
                    return bVar;
                }
            }
            return null;
        }

        private static boolean i(androidx.media3.exoplayer.source.r.b bVar, Object obj, boolean z10, int i10, int i11, int i12) {
            if (bVar.f12571a.equals(obj)) {
                return (z10 && bVar.f12572b == i10 && bVar.f12573c == i11) || (!z10 && bVar.f12572b == -1 && bVar.f12575e == i12);
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        private void m(androidx.media3.common.e0 e0Var) {
            ImmutableMap.b bVarBuilder = ImmutableMap.builder();
            if (this.f74996b.isEmpty()) {
                b(bVarBuilder, this.f74999e, e0Var);
                if (!Objects.equals(this.f75000f, this.f74999e)) {
                    b(bVarBuilder, this.f75000f, e0Var);
                }
                if (!Objects.equals(this.f74998d, this.f74999e) && !Objects.equals(this.f74998d, this.f75000f)) {
                    b(bVarBuilder, this.f74998d, e0Var);
                }
            } else {
                for (int i10 = 0; i10 < this.f74996b.size(); i10++) {
                    b(bVarBuilder, (androidx.media3.exoplayer.source.r.b) this.f74996b.get(i10), e0Var);
                }
                if (!this.f74996b.contains(this.f74998d)) {
                    b(bVarBuilder, this.f74998d, e0Var);
                }
            }
            this.f74997c = bVarBuilder.d();
        }

        public androidx.media3.exoplayer.source.r.b d() {
            return this.f74998d;
        }

        public androidx.media3.exoplayer.source.r.b e() {
            if (this.f74996b.isEmpty()) {
                return null;
            }
            return (androidx.media3.exoplayer.source.r.b) com.google.common.collect.g3.g(this.f74996b);
        }

        public androidx.media3.common.e0 f(androidx.media3.exoplayer.source.r.b bVar) {
            return (androidx.media3.common.e0) this.f74997c.get(bVar);
        }

        public androidx.media3.exoplayer.source.r.b g() {
            return this.f74999e;
        }

        public androidx.media3.exoplayer.source.r.b h() {
            return this.f75000f;
        }

        public void j(androidx.media3.common.a0 a0Var) {
            this.f74998d = c(a0Var, this.f74996b, this.f74999e, this.f74995a);
        }

        public void k(List list, androidx.media3.exoplayer.source.r.b bVar, androidx.media3.common.a0 a0Var) {
            this.f74996b = ImmutableList.copyOf((Collection) list);
            if (!list.isEmpty()) {
                this.f74999e = (androidx.media3.exoplayer.source.r.b) list.get(0);
                this.f75000f = (androidx.media3.exoplayer.source.r.b) androidx.media3.common.util.a.e(bVar);
            }
            if (this.f74998d == null) {
                this.f74998d = c(a0Var, this.f74996b, this.f74999e, this.f74995a);
            }
            m(a0Var.getCurrentTimeline());
        }

        public void l(androidx.media3.common.a0 a0Var) {
            this.f74998d = c(a0Var, this.f74996b, this.f74999e, this.f74995a);
            m(a0Var.getCurrentTimeline());
        }
    }

    public s1(androidx.media3.common.util.i iVar) {
        this.f74986a = (androidx.media3.common.util.i) androidx.media3.common.util.a.e(iVar);
        this.f74991f = new androidx.media3.common.util.t(androidx.media3.common.util.a1.X(), iVar, new androidx.media3.common.util.t.b() {
            @Override
            public final void a(Object obj, androidx.media3.common.p pVar) {
                s1.f1((c) obj, pVar);
            }
        });
        androidx.media3.common.e0.b bVar = new androidx.media3.common.e0.b();
        this.f74987b = bVar;
        this.f74988c = new androidx.media3.common.e0.c();
        this.f74989d = new a(bVar);
        this.f74990e = new SparseArray();
    }

    public static void D1(c.a aVar, int i10, c cVar) {
        cVar.r(aVar);
        cVar.P(aVar, i10);
    }

    public static void H1(c.a aVar, boolean z10, c cVar) {
        cVar.M(aVar, z10);
        cVar.F(aVar, z10);
    }

    public static void M1(c.a aVar, f2.i iVar, f2.j jVar, int i10, c cVar) {
        cVar.m0(aVar, iVar, jVar);
        cVar.e(aVar, iVar, jVar, i10);
    }

    public static void X1(c.a aVar, int i10, androidx.media3.common.a0.e eVar, androidx.media3.common.a0.e eVar2, c cVar) {
        cVar.b(aVar, i10);
        cVar.l0(aVar, eVar, eVar2, i10);
    }

    private c.a Z0(androidx.media3.exoplayer.source.r.b bVar) {
        androidx.media3.common.util.a.e(this.f74992g);
        androidx.media3.common.e0 e0VarF = bVar == null ? null : this.f74989d.f(bVar);
        if (bVar != null && e0VarF != null) {
            return Y0(e0VarF, e0VarF.h(bVar.f12571a, this.f74987b).f9624c, bVar);
        }
        int iU = this.f74992g.u();
        androidx.media3.common.e0 currentTimeline = this.f74992g.getCurrentTimeline();
        if (iU >= currentTimeline.p()) {
            currentTimeline = androidx.media3.common.e0.f9613a;
        }
        return Y0(currentTimeline, iU, null);
    }

    private c.a a1() {
        return Z0(this.f74989d.e());
    }

    private c.a b1(int i10, androidx.media3.exoplayer.source.r.b bVar) {
        androidx.media3.common.util.a.e(this.f74992g);
        if (bVar != null) {
            return this.f74989d.f(bVar) != null ? Z0(bVar) : Y0(androidx.media3.common.e0.f9613a, i10, bVar);
        }
        androidx.media3.common.e0 currentTimeline = this.f74992g.getCurrentTimeline();
        if (i10 >= currentTimeline.p()) {
            currentTimeline = androidx.media3.common.e0.f9613a;
        }
        return Y0(currentTimeline, i10, null);
    }

    private c.a c1() {
        return Z0(this.f74989d.g());
    }

    private c.a d1() {
        return Z0(this.f74989d.h());
    }

    private c.a e1(PlaybackException playbackException) {
        androidx.media3.exoplayer.source.r.b bVar;
        return (!(playbackException instanceof ExoPlaybackException) || (bVar = ((ExoPlaybackException) playbackException).mediaPeriodId) == null) ? X0() : Z0(bVar);
    }

    public static void i1(c.a aVar, String str, long j10, long j11, c cVar) {
        cVar.a0(aVar, str, j10);
        cVar.x(aVar, str, j11, j10);
    }

    public static void j2(c.a aVar, String str, long j10, long j11, c cVar) {
        cVar.W(aVar, str, j10);
        cVar.j0(aVar, str, j11, j10);
    }

    public static void p2(c.a aVar, androidx.media3.common.m0 m0Var, c cVar) {
        cVar.o0(aVar, m0Var);
        cVar.I(aVar, m0Var.f9803a, m0Var.f9804b, 0, m0Var.f9806d);
    }

    public void s2(androidx.media3.common.a0 a0Var, c cVar, androidx.media3.common.p pVar) {
        cVar.g(a0Var, new c.b(pVar, this.f74990e));
    }

    public void t2() {
        final c.a aVarX0 = X0();
        u2(aVarX0, 1028, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).t0(aVarX0);
            }
        });
        this.f74991f.j();
    }

    @Override
    public final void A(int i10, androidx.media3.exoplayer.source.r.b bVar, final Exception exc) {
        final c.a aVarB1 = b1(i10, bVar);
        u2(aVarB1, 1024, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).Q(aVarB1, exc);
            }
        });
    }

    @Override
    public final void B(int i10, androidx.media3.exoplayer.source.r.b bVar, final f2.i iVar, final f2.j jVar) {
        final c.a aVarB1 = b1(i10, bVar);
        u2(aVarB1, 1001, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).f(aVarB1, iVar, jVar);
            }
        });
    }

    @Override
    public final void C(int i10, androidx.media3.exoplayer.source.r.b bVar) {
        final c.a aVarB1 = b1(i10, bVar);
        u2(aVarB1, InputDeviceCompat.SOURCE_GAMEPAD, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).d(aVarB1);
            }
        });
    }

    @Override
    public void D(final int i10, final int i11, final boolean z10) {
        final c.a aVarD1 = d1();
        u2(aVarD1, 1033, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).v0(aVarD1, i10, i11, z10);
            }
        });
    }

    @Override
    public void E(c cVar) {
        androidx.media3.common.util.a.e(cVar);
        this.f74991f.c(cVar);
    }

    @Override
    public final void F(int i10, androidx.media3.exoplayer.source.r.b bVar) {
        final c.a aVarB1 = b1(i10, bVar);
        u2(aVarB1, 1027, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).K(aVarB1);
            }
        });
    }

    @Override
    public void G(final androidx.media3.common.a0 a0Var, Looper looper) {
        androidx.media3.common.util.a.g(this.f74992g == null || this.f74989d.f74996b.isEmpty());
        this.f74992g = (androidx.media3.common.a0) androidx.media3.common.util.a.e(a0Var);
        this.f74993h = this.f74986a.createHandler(looper, null);
        this.f74991f = this.f74991f.e(looper, new androidx.media3.common.util.t.b() {
            @Override
            public final void a(Object obj, androidx.media3.common.p pVar) {
                this.f74915a.s2(a0Var, (c) obj, pVar);
            }
        });
    }

    @Override
    public final void H(int i10, androidx.media3.exoplayer.source.r.b bVar, final f2.i iVar, final f2.j jVar) {
        final c.a aVarB1 = b1(i10, bVar);
        u2(aVarB1, 1002, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).q0(aVarB1, iVar, jVar);
            }
        });
    }

    protected final c.a X0() {
        return Z0(this.f74989d.d());
    }

    protected final c.a Y0(androidx.media3.common.e0 e0Var, int i10, androidx.media3.exoplayer.source.r.b bVar) {
        androidx.media3.exoplayer.source.r.b bVar2 = e0Var.q() ? null : bVar;
        long jElapsedRealtime = this.f74986a.elapsedRealtime();
        boolean z10 = e0Var.equals(this.f74992g.getCurrentTimeline()) && i10 == this.f74992g.u();
        long jB = 0;
        if (bVar2 == null || !bVar2.b()) {
            if (z10) {
                jB = this.f74992g.getContentPosition();
            } else if (!e0Var.q()) {
                jB = e0Var.n(i10, this.f74988c).b();
            }
        } else if (z10 && this.f74992g.getCurrentAdGroupIndex() == bVar2.f12572b && this.f74992g.getCurrentAdIndexInAdGroup() == bVar2.f12573c) {
            jB = this.f74992g.getCurrentPosition();
        }
        return new c.a(jElapsedRealtime, e0Var, i10, bVar2, jB, this.f74992g.getCurrentTimeline(), this.f74992g.u(), this.f74989d.d(), this.f74992g.getCurrentPosition(), this.f74992g.d());
    }

    @Override
    public final void a(final Exception exc) {
        final c.a aVarD1 = d1();
        u2(aVarD1, PointerIconCompat.TYPE_HORIZONTAL_DOUBLE_ARROW, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).l(aVarD1, exc);
            }
        });
    }

    @Override
    public final void b(final String str) {
        final c.a aVarD1 = d1();
        u2(aVarD1, PointerIconCompat.TYPE_ZOOM_OUT, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).L(aVarD1, str);
            }
        });
    }

    @Override
    public final void c(final String str) {
        final c.a aVarD1 = d1();
        u2(aVarD1, 1012, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).B(aVarD1, str);
            }
        });
    }

    @Override
    public final void d(final long j10) {
        final c.a aVarD1 = d1();
        u2(aVarD1, 1010, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).Y(aVarD1, j10);
            }
        });
    }

    @Override
    public final void e(final Exception exc) {
        final c.a aVarD1 = d1();
        u2(aVarD1, 1030, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).U(aVarD1, exc);
            }
        });
    }

    @Override
    public final void f(final Object obj, final long j10) {
        final c.a aVarD1 = d1();
        u2(aVarD1, 26, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj2) {
                ((c) obj2).J(aVarD1, obj, j10);
            }
        });
    }

    @Override
    public final void g(final Exception exc) {
        final c.a aVarD1 = d1();
        u2(aVarD1, 1029, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).H(aVarD1, exc);
            }
        });
    }

    @Override
    public final void h(final int i10, final long j10, final long j11) {
        final c.a aVarD1 = d1();
        u2(aVarD1, 1011, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).q(aVarD1, i10, j10, j11);
            }
        });
    }

    @Override
    public final void i(final long j10, final int i10) {
        final c.a aVarC1 = c1();
        u2(aVarC1, PointerIconCompat.TYPE_GRABBING, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).O(aVarC1, j10, i10);
            }
        });
    }

    @Override
    public void j(final AudioSink.a aVar) {
        final c.a aVarD1 = d1();
        u2(aVarD1, 1031, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).N(aVarD1, aVar);
            }
        });
    }

    @Override
    public void k(final AudioSink.a aVar) {
        final c.a aVarD1 = d1();
        u2(aVarD1, 1032, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).z(aVarD1, aVar);
            }
        });
    }

    @Override
    public final void l(int i10, androidx.media3.exoplayer.source.r.b bVar, final f2.i iVar, final f2.j jVar, final IOException iOException, final boolean z10) {
        final c.a aVarB1 = b1(i10, bVar);
        u2(aVarB1, 1003, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).p0(aVarB1, iVar, jVar, iOException, z10);
            }
        });
    }

    @Override
    public final void m() {
        if (this.f74994i) {
            return;
        }
        final c.a aVarX0 = X0();
        this.f74994i = true;
        u2(aVarX0, -1, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).m(aVarX0);
            }
        });
    }

    @Override
    public final void n(final androidx.media3.exoplayer.j jVar) {
        final c.a aVarD1 = d1();
        u2(aVarD1, PointerIconCompat.TYPE_CROSSHAIR, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).S(aVarD1, jVar);
            }
        });
    }

    @Override
    public final void o(final androidx.media3.exoplayer.j jVar) {
        final c.a aVarD1 = d1();
        u2(aVarD1, PointerIconCompat.TYPE_VERTICAL_DOUBLE_ARROW, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).n(aVarD1, jVar);
            }
        });
    }

    @Override
    public final void onAudioDecoderInitialized(final String str, final long j10, final long j11) {
        final c.a aVarD1 = d1();
        u2(aVarD1, PointerIconCompat.TYPE_TEXT, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                s1.i1(aVarD1, str, j11, j10, (c) obj);
            }
        });
    }

    @Override
    public final void onAudioSessionIdChanged(final int i10) {
        final c.a aVarD1 = d1();
        u2(aVarD1, 21, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).b0(aVarD1, i10);
            }
        });
    }

    @Override
    public void onAvailableCommandsChanged(final androidx.media3.common.a0.b bVar) {
        final c.a aVarX0 = X0();
        u2(aVarX0, 13, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).i0(aVarX0, bVar);
            }
        });
    }

    @Override
    public final void onBandwidthSample(final int i10, final long j10, final long j11) {
        final c.a aVarA1 = a1();
        u2(aVarA1, PointerIconCompat.TYPE_CELL, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).x0(aVarA1, i10, j10, j11);
            }
        });
    }

    @Override
    public void onCues(final List list) {
        final c.a aVarX0 = X0();
        u2(aVarX0, 27, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).w0(aVarX0, list);
            }
        });
    }

    @Override
    public void onDeviceInfoChanged(final androidx.media3.common.m mVar) {
        final c.a aVarX0 = X0();
        u2(aVarX0, 29, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).g0(aVarX0, mVar);
            }
        });
    }

    @Override
    public void onDeviceVolumeChanged(final int i10, final boolean z10) {
        final c.a aVarX0 = X0();
        u2(aVarX0, 30, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).a(aVarX0, i10, z10);
            }
        });
    }

    @Override
    public final void onDroppedFrames(final int i10, final long j10) {
        final c.a aVarC1 = c1();
        u2(aVarC1, PointerIconCompat.TYPE_ZOOM_IN, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).p(aVarC1, i10, j10);
            }
        });
    }

    @Override
    public final void onIsLoadingChanged(final boolean z10) {
        final c.a aVarX0 = X0();
        u2(aVarX0, 3, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                s1.H1(aVarX0, z10, (c) obj);
            }
        });
    }

    @Override
    public void onIsPlayingChanged(final boolean z10) {
        final c.a aVarX0 = X0();
        u2(aVarX0, 7, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).C(aVarX0, z10);
            }
        });
    }

    @Override
    public final void onMediaItemTransition(final androidx.media3.common.t tVar, final int i10) {
        final c.a aVarX0 = X0();
        u2(aVarX0, 1, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).h0(aVarX0, tVar, i10);
            }
        });
    }

    @Override
    public void onMediaMetadataChanged(final androidx.media3.common.v vVar) {
        final c.a aVarX0 = X0();
        u2(aVarX0, 14, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).f0(aVarX0, vVar);
            }
        });
    }

    @Override
    public final void onMetadata(final androidx.media3.common.x xVar) {
        final c.a aVarX0 = X0();
        u2(aVarX0, 28, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).w(aVarX0, xVar);
            }
        });
    }

    @Override
    public final void onPlayWhenReadyChanged(final boolean z10, final int i10) {
        final c.a aVarX0 = X0();
        u2(aVarX0, 5, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).e0(aVarX0, z10, i10);
            }
        });
    }

    @Override
    public final void onPlaybackParametersChanged(final androidx.media3.common.z zVar) {
        final c.a aVarX0 = X0();
        u2(aVarX0, 12, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).V(aVarX0, zVar);
            }
        });
    }

    @Override
    public final void onPlaybackStateChanged(final int i10) {
        final c.a aVarX0 = X0();
        u2(aVarX0, 4, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).c0(aVarX0, i10);
            }
        });
    }

    @Override
    public final void onPlaybackSuppressionReasonChanged(final int i10) {
        final c.a aVarX0 = X0();
        u2(aVarX0, 6, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).R(aVarX0, i10);
            }
        });
    }

    @Override
    public final void onPlayerError(final PlaybackException playbackException) {
        final c.a aVarE1 = e1(playbackException);
        u2(aVarE1, 10, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).s0(aVarE1, playbackException);
            }
        });
    }

    @Override
    public void onPlayerErrorChanged(final PlaybackException playbackException) {
        final c.a aVarE1 = e1(playbackException);
        u2(aVarE1, 10, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).G(aVarE1, playbackException);
            }
        });
    }

    @Override
    public final void onPlayerStateChanged(final boolean z10, final int i10) {
        final c.a aVarX0 = X0();
        u2(aVarX0, -1, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).T(aVarX0, z10, i10);
            }
        });
    }

    @Override
    public void onPositionDiscontinuity(int i10) {
    }

    @Override
    public final void onRepeatModeChanged(final int i10) {
        final c.a aVarX0 = X0();
        u2(aVarX0, 8, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).k(aVarX0, i10);
            }
        });
    }

    @Override
    public final void onShuffleModeEnabledChanged(final boolean z10) {
        final c.a aVarX0 = X0();
        u2(aVarX0, 9, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).X(aVarX0, z10);
            }
        });
    }

    @Override
    public final void onSkipSilenceEnabledChanged(final boolean z10) {
        final c.a aVarD1 = d1();
        u2(aVarD1, 23, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).u0(aVarD1, z10);
            }
        });
    }

    @Override
    public final void onSurfaceSizeChanged(final int i10, final int i11) {
        final c.a aVarD1 = d1();
        u2(aVarD1, 24, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).d0(aVarD1, i10, i11);
            }
        });
    }

    @Override
    public final void onTimelineChanged(androidx.media3.common.e0 e0Var, final int i10) {
        this.f74989d.l((androidx.media3.common.a0) androidx.media3.common.util.a.e(this.f74992g));
        final c.a aVarX0 = X0();
        u2(aVarX0, 0, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).n0(aVarX0, i10);
            }
        });
    }

    @Override
    public void onTrackSelectionParametersChanged(final androidx.media3.common.h0 h0Var) {
        final c.a aVarX0 = X0();
        u2(aVarX0, 19, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).k0(aVarX0, h0Var);
            }
        });
    }

    @Override
    public void onTracksChanged(final androidx.media3.common.i0 i0Var) {
        final c.a aVarX0 = X0();
        u2(aVarX0, 2, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).Z(aVarX0, i0Var);
            }
        });
    }

    @Override
    public final void onVideoDecoderInitialized(final String str, final long j10, final long j11) {
        final c.a aVarD1 = d1();
        u2(aVarD1, PointerIconCompat.TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                s1.j2(aVarD1, str, j11, j10, (c) obj);
            }
        });
    }

    @Override
    public final void onVideoSizeChanged(final androidx.media3.common.m0 m0Var) {
        final c.a aVarD1 = d1();
        u2(aVarD1, 25, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                s1.p2(aVarD1, m0Var, (c) obj);
            }
        });
    }

    @Override
    public final void onVolumeChanged(final float f10) {
        final c.a aVarD1 = d1();
        u2(aVarD1, 22, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).j(aVarD1, f10);
            }
        });
    }

    @Override
    public final void p(int i10, androidx.media3.exoplayer.source.r.b bVar) {
        final c.a aVarB1 = b1(i10, bVar);
        u2(aVarB1, 1023, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).E(aVarB1);
            }
        });
    }

    @Override
    public final void q(List list, androidx.media3.exoplayer.source.r.b bVar) {
        this.f74989d.k(list, bVar, (androidx.media3.common.a0) androidx.media3.common.util.a.e(this.f74992g));
    }

    @Override
    public final void r(int i10, androidx.media3.exoplayer.source.r.b bVar, final f2.j jVar) {
        final c.a aVarB1 = b1(i10, bVar);
        u2(aVarB1, 1004, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).t(aVarB1, jVar);
            }
        });
    }

    @Override
    public void release() {
        ((androidx.media3.common.util.p) androidx.media3.common.util.a.i(this.f74993h)).post(new Runnable() {
            @Override
            public final void run() {
                this.f74868a.t2();
            }
        });
    }

    @Override
    public final void s(final androidx.media3.common.r rVar, final androidx.media3.exoplayer.k kVar) {
        final c.a aVarD1 = d1();
        u2(aVarD1, PointerIconCompat.TYPE_VERTICAL_TEXT, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).r0(aVarD1, rVar, kVar);
            }
        });
    }

    @Override
    public final void t(final androidx.media3.exoplayer.j jVar) {
        final c.a aVarC1 = c1();
        u2(aVarC1, PointerIconCompat.TYPE_ALL_SCROLL, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).c(aVarC1, jVar);
            }
        });
    }

    @Override
    public final void u(final androidx.media3.common.r rVar, final androidx.media3.exoplayer.k kVar) {
        final c.a aVarD1 = d1();
        u2(aVarD1, PointerIconCompat.TYPE_TOP_LEFT_DIAGONAL_DOUBLE_ARROW, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).A(aVarD1, rVar, kVar);
            }
        });
    }

    protected final void u2(c.a aVar, int i10, androidx.media3.common.util.t.a aVar2) {
        this.f74990e.put(i10, aVar);
        this.f74991f.l(i10, aVar2);
    }

    @Override
    public final void v(final androidx.media3.exoplayer.j jVar) {
        final c.a aVarC1 = c1();
        u2(aVarC1, PointerIconCompat.TYPE_GRAB, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).D(aVarC1, jVar);
            }
        });
    }

    @Override
    public final void w(int i10, androidx.media3.exoplayer.source.r.b bVar, final f2.j jVar) {
        final c.a aVarB1 = b1(i10, bVar);
        u2(aVarB1, 1005, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).u(aVarB1, jVar);
            }
        });
    }

    @Override
    public final void x(int i10, androidx.media3.exoplayer.source.r.b bVar, final f2.i iVar, final f2.j jVar, final int i11) {
        final c.a aVarB1 = b1(i10, bVar);
        u2(aVarB1, 1000, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                s1.M1(aVarB1, iVar, jVar, i11, (c) obj);
            }
        });
    }

    @Override
    public final void y(int i10, androidx.media3.exoplayer.source.r.b bVar, final int i11) {
        final c.a aVarB1 = b1(i10, bVar);
        u2(aVarB1, 1022, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                s1.D1(aVarB1, i11, (c) obj);
            }
        });
    }

    @Override
    public final void z(int i10, androidx.media3.exoplayer.source.r.b bVar) {
        final c.a aVarB1 = b1(i10, bVar);
        u2(aVarB1, 1026, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).h(aVarB1);
            }
        });
    }

    @Override
    public final void onPositionDiscontinuity(final androidx.media3.common.a0.e eVar, final androidx.media3.common.a0.e eVar2, final int i10) {
        if (i10 == 1) {
            this.f74994i = false;
        }
        this.f74989d.j((androidx.media3.common.a0) androidx.media3.common.util.a.e(this.f74992g));
        final c.a aVarX0 = X0();
        u2(aVarX0, 11, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                s1.X1(aVarX0, i10, eVar, eVar2, (c) obj);
            }
        });
    }

    @Override
    public void onCues(final u1.b bVar) {
        final c.a aVarX0 = X0();
        u2(aVarX0, 27, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((c) obj).o(aVarX0, bVar);
            }
        });
    }

    @Override
    public void onRenderedFirstFrame() {
    }

    @Override
    public void onLoadingChanged(boolean z10) {
    }

    public static void f1(c cVar, androidx.media3.common.p pVar) {
    }

    @Override
    public void onEvents(androidx.media3.common.a0 a0Var, androidx.media3.common.a0.c cVar) {
    }
}
