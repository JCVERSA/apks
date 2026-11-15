package defpackage;

import android.os.Looper;
import android.util.SparseArray;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.a0;
import com.google.android.exoplayer2.b0;
import com.google.android.exoplayer2.h;
import com.google.android.exoplayer2.k;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.n;
import com.google.android.exoplayer2.o;
import com.google.android.exoplayer2.s;
import com.google.android.exoplayer2.source.i;
import com.google.android.exoplayer2.t;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import java.io.IOException;
import java.util.Collection;
import java.util.List;

public class wz1 implements kb {
    public final ey0 b;
    public final a0.b c;
    public final a0.d d;
    public final a e;
    public final SparseArray f;
    public om5 g;
    public t h;
    public xn4 i;
    public boolean j;

    public static final class a {
        public final a0.b a;
        public ImmutableList b = ImmutableList.of();
        public ImmutableMap c = ImmutableMap.of();
        public i.b d;
        public i.b e;
        public i.b f;

        public a(a0.b bVar) {
            this.a = bVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static i.b c(t tVar, ImmutableList immutableList, i.b bVar, a0.b bVar2) {
            a0 currentTimeline = tVar.getCurrentTimeline();
            int currentPeriodIndex = tVar.getCurrentPeriodIndex();
            Object objQ = currentTimeline.u() ? null : currentTimeline.q(currentPeriodIndex);
            int iG = (tVar.isPlayingAd() || currentTimeline.u()) ? -1 : currentTimeline.j(currentPeriodIndex, bVar2).g(blb.t0(tVar.getCurrentPosition()) - bVar2.q());
            for (int i = 0; i < immutableList.size(); i++) {
                i.b bVar3 = (i.b) immutableList.get(i);
                if (i(bVar3, objQ, tVar.isPlayingAd(), tVar.getCurrentAdGroupIndex(), tVar.getCurrentAdIndexInAdGroup(), iG)) {
                    return bVar3;
                }
            }
            if (immutableList.isEmpty() && bVar != null) {
                if (i(bVar, objQ, tVar.isPlayingAd(), tVar.getCurrentAdGroupIndex(), tVar.getCurrentAdIndexInAdGroup(), iG)) {
                    return bVar;
                }
            }
            return null;
        }

        public static boolean i(i.b bVar, Object obj, boolean z, int i, int i2, int i3) {
            if (bVar.a.equals(obj)) {
                return (z && bVar.b == i && bVar.c == i2) || (!z && bVar.b == -1 && bVar.e == i3);
            }
            return false;
        }

        public final void b(ImmutableMap.b bVar, i.b bVar2, a0 a0Var) {
            if (bVar2 == null) {
                return;
            }
            if (a0Var.f(bVar2.a) != -1) {
                bVar.h(bVar2, a0Var);
                return;
            }
            a0 a0Var2 = (a0) this.c.get(bVar2);
            if (a0Var2 != null) {
                bVar.h(bVar2, a0Var2);
            }
        }

        public i.b d() {
            return this.d;
        }

        public i.b e() {
            if (this.b.isEmpty()) {
                return null;
            }
            return (i.b) v55.g(this.b);
        }

        public a0 f(i.b bVar) {
            return (a0) this.c.get(bVar);
        }

        public i.b g() {
            return this.e;
        }

        public i.b h() {
            return this.f;
        }

        public void j(t tVar) {
            this.d = c(tVar, this.b, this.e, this.a);
        }

        public void k(List list, i.b bVar, t tVar) {
            this.b = ImmutableList.copyOf((Collection) list);
            if (!list.isEmpty()) {
                this.e = (i.b) list.get(0);
                this.f = (i.b) zi.e(bVar);
            }
            if (this.d == null) {
                this.d = c(tVar, this.b, this.e, this.a);
            }
            m(tVar.getCurrentTimeline());
        }

        public void l(t tVar) {
            this.d = c(tVar, this.b, this.e, this.a);
            m(tVar.getCurrentTimeline());
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void m(a0 a0Var) {
            ImmutableMap.b bVarBuilder = ImmutableMap.builder();
            if (this.b.isEmpty()) {
                b(bVarBuilder, this.e, a0Var);
                if (!kc7.a(this.f, this.e)) {
                    b(bVarBuilder, this.f, a0Var);
                }
                if (!kc7.a(this.d, this.e) && !kc7.a(this.d, this.f)) {
                    b(bVarBuilder, this.d, a0Var);
                }
            } else {
                for (int i = 0; i < this.b.size(); i++) {
                    b(bVarBuilder, (i.b) this.b.get(i), a0Var);
                }
                if (!this.b.contains(this.d)) {
                    b(bVarBuilder, this.d, a0Var);
                }
            }
            this.c = bVarBuilder.d();
        }
    }

    public wz1(ey0 ey0Var) {
        this.b = (ey0) zi.e(ey0Var);
        this.g = new om5(blb.K(), ey0Var, new om5.b() {
            @Override
            public final void a(Object obj, zx3 zx3Var) {
                wz1.L0((nb) obj, zx3Var);
            }
        });
        a0.b bVar = new a0.b();
        this.c = bVar;
        this.d = new a0.d();
        this.e = new a(bVar);
        this.f = new SparseArray();
    }

    public static void A1(nb.a aVar, int i, t.e eVar, t.e eVar2, nb nbVar) {
        nbVar.l(aVar, i);
        nbVar.a0(aVar, eVar, eVar2, i);
    }

    public static void I1(nb.a aVar, String str, long j, long j2, nb nbVar) {
        nbVar.Z(aVar, str, j);
        nbVar.i0(aVar, str, j2, j);
        nbVar.S(aVar, 2, str, j);
    }

    public static void K1(nb.a aVar, ju1 ju1Var, nb nbVar) {
        nbVar.W(aVar, ju1Var);
        nbVar.L(aVar, 2, ju1Var);
    }

    public static void L0(nb nbVar, zx3 zx3Var) {
    }

    public static void L1(nb.a aVar, ju1 ju1Var, nb nbVar) {
        nbVar.x(aVar, ju1Var);
        nbVar.k(aVar, 2, ju1Var);
    }

    public static void N1(nb.a aVar, k kVar, lu1 lu1Var, nb nbVar) {
        nbVar.r(aVar, kVar);
        nbVar.B(aVar, kVar, lu1Var);
        nbVar.C(aVar, 2, kVar);
    }

    public static void O0(nb.a aVar, String str, long j, long j2, nb nbVar) {
        nbVar.w(aVar, str, j);
        nbVar.f0(aVar, str, j2, j);
        nbVar.S(aVar, 1, str, j);
    }

    public static void O1(nb.a aVar, f7c f7cVar, nb nbVar) {
        nbVar.g(aVar, f7cVar);
        nbVar.R(aVar, f7cVar.b, f7cVar.c, f7cVar.d, f7cVar.e);
    }

    public static void Q0(nb.a aVar, ju1 ju1Var, nb nbVar) {
        nbVar.F(aVar, ju1Var);
        nbVar.L(aVar, 1, ju1Var);
    }

    public static void R0(nb.a aVar, ju1 ju1Var, nb nbVar) {
        nbVar.t(aVar, ju1Var);
        nbVar.k(aVar, 1, ju1Var);
    }

    public static void S0(nb.a aVar, k kVar, lu1 lu1Var, nb nbVar) {
        nbVar.e0(aVar, kVar);
        nbVar.T(aVar, kVar, lu1Var);
        nbVar.C(aVar, 1, kVar);
    }

    public static void g1(nb.a aVar, int i, nb nbVar) {
        nbVar.p(aVar);
        nbVar.y(aVar, i);
    }

    public static void k1(nb.a aVar, boolean z, nb nbVar) {
        nbVar.G(aVar, z);
        nbVar.s0(aVar, z);
    }

    public final nb.a D0() {
        return F0(this.e.d());
    }

    public final nb.a E0(a0 a0Var, int i, i.b bVar) {
        long contentPosition;
        i.b bVar2 = a0Var.u() ? null : bVar;
        long jElapsedRealtime = this.b.elapsedRealtime();
        boolean z = a0Var.equals(this.h.getCurrentTimeline()) && i == this.h.getCurrentMediaItemIndex();
        long jE = 0;
        if (bVar2 == null || !bVar2.b()) {
            if (z) {
                contentPosition = this.h.getContentPosition();
            } else if (!a0Var.u()) {
                jE = a0Var.r(i, this.d).e();
            }
            return new nb.a(jElapsedRealtime, a0Var, i, bVar2, contentPosition, this.h.getCurrentTimeline(), this.h.getCurrentMediaItemIndex(), this.e.d(), this.h.getCurrentPosition(), this.h.getTotalBufferedDuration());
        }
        if (z && this.h.getCurrentAdGroupIndex() == bVar2.b && this.h.getCurrentAdIndexInAdGroup() == bVar2.c) {
            jE = this.h.getCurrentPosition();
        }
        contentPosition = jE;
        return new nb.a(jElapsedRealtime, a0Var, i, bVar2, contentPosition, this.h.getCurrentTimeline(), this.h.getCurrentMediaItemIndex(), this.e.d(), this.h.getCurrentPosition(), this.h.getTotalBufferedDuration());
    }

    public final nb.a F0(i.b bVar) {
        zi.e(this.h);
        a0 a0VarF = bVar == null ? null : this.e.f(bVar);
        if (bVar != null && a0VarF != null) {
            return E0(a0VarF, a0VarF.l(bVar.a, this.c).d, bVar);
        }
        int currentMediaItemIndex = this.h.getCurrentMediaItemIndex();
        a0 currentTimeline = this.h.getCurrentTimeline();
        if (currentMediaItemIndex >= currentTimeline.t()) {
            currentTimeline = a0.b;
        }
        return E0(currentTimeline, currentMediaItemIndex, null);
    }

    public final nb.a G0() {
        return F0(this.e.e());
    }

    public final nb.a H0(int i, i.b bVar) {
        zi.e(this.h);
        if (bVar != null) {
            return this.e.f(bVar) != null ? F0(bVar) : E0(a0.b, i, bVar);
        }
        a0 currentTimeline = this.h.getCurrentTimeline();
        if (i >= currentTimeline.t()) {
            currentTimeline = a0.b;
        }
        return E0(currentTimeline, i, null);
    }

    public final nb.a I0() {
        return F0(this.e.g());
    }

    public final nb.a J0() {
        return F0(this.e.h());
    }

    public final nb.a K0(PlaybackException playbackException) {
        xk6 xk6Var;
        return (!(playbackException instanceof ExoPlaybackException) || (xk6Var = ((ExoPlaybackException) playbackException).mediaPeriodId) == null) ? D0() : F0(new i.b(xk6Var));
    }

    public final void R1(t tVar, nb nbVar, zx3 zx3Var) {
        nbVar.I(tVar, new nb.b(zx3Var, this.f));
    }

    public final void S1() {
        final nb.a aVarD0 = D0();
        T1(aVarD0, AnalyticsListener.EVENT_PLAYER_RELEASED, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                ((nb) obj).d(aVarD0);
            }
        });
        this.g.j();
    }

    public final void T1(nb.a aVar, int i, om5.a aVar2) {
        this.f.put(i, aVar);
        this.g.l(i, aVar2);
    }

    @Override
    public final void a(final k kVar, final lu1 lu1Var) {
        final nb.a aVarJ0 = J0();
        T1(aVarJ0, 1009, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                wz1.S0(aVarJ0, kVar, lu1Var, (nb) obj);
            }
        });
    }

    @Override
    public final void b(final ju1 ju1Var) {
        final nb.a aVarJ0 = J0();
        T1(aVarJ0, 1015, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                wz1.L1(aVarJ0, ju1Var, (nb) obj);
            }
        });
    }

    @Override
    public final void c(final ju1 ju1Var) {
        final nb.a aVarI0 = I0();
        T1(aVarI0, 1013, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                wz1.Q0(aVarI0, ju1Var, (nb) obj);
            }
        });
    }

    @Override
    public final void d(final ju1 ju1Var) {
        final nb.a aVarJ0 = J0();
        T1(aVarJ0, 1007, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                wz1.R0(aVarJ0, ju1Var, (nb) obj);
            }
        });
    }

    @Override
    public final void e(final ju1 ju1Var) {
        final nb.a aVarI0 = I0();
        T1(aVarI0, 1020, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                wz1.K1(aVarI0, ju1Var, (nb) obj);
            }
        });
    }

    @Override
    public final void f(final k kVar, final lu1 lu1Var) {
        final nb.a aVarJ0 = J0();
        T1(aVarJ0, 1017, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                wz1.N1(aVarJ0, kVar, lu1Var, (nb) obj);
            }
        });
    }

    @Override
    public final void g(int i, i.b bVar, final ih6 ih6Var) {
        final nb.a aVarH0 = H0(i, bVar);
        T1(aVarH0, 1004, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                ((nb) obj).p0(aVarH0, ih6Var);
            }
        });
    }

    @Override
    public void h(final t tVar, Looper looper) {
        zi.g(this.h == null || this.e.b.isEmpty());
        this.h = (t) zi.e(tVar);
        this.i = this.b.createHandler(looper, null);
        this.g = this.g.e(looper, new om5.b() {
            @Override
            public final void a(Object obj, zx3 zx3Var) {
                this.a.R1(tVar, (nb) obj, zx3Var);
            }
        });
    }

    @Override
    public final void i(int i, i.b bVar, final in5 in5Var, final ih6 ih6Var) {
        final nb.a aVarH0 = H0(i, bVar);
        T1(aVarH0, 1001, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                ((nb) obj).l0(aVarH0, in5Var, ih6Var);
            }
        });
    }

    @Override
    public final void j(int i, i.b bVar) {
        final nb.a aVarH0 = H0(i, bVar);
        T1(aVarH0, AnalyticsListener.EVENT_DRM_KEYS_LOADED, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                ((nb) obj).J(aVarH0);
            }
        });
    }

    @Override
    public final void k(int i, i.b bVar, final int i2) {
        final nb.a aVarH0 = H0(i, bVar);
        T1(aVarH0, AnalyticsListener.EVENT_DRM_SESSION_ACQUIRED, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                wz1.g1(aVarH0, i2, (nb) obj);
            }
        });
    }

    @Override
    public final void l(int i, i.b bVar) {
        final nb.a aVarH0 = H0(i, bVar);
        T1(aVarH0, 1025, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                ((nb) obj).v0(aVarH0);
            }
        });
    }

    @Override
    public final void m(int i, i.b bVar) {
        final nb.a aVarH0 = H0(i, bVar);
        T1(aVarH0, AnalyticsListener.EVENT_DRM_KEYS_REMOVED, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                ((nb) obj).n(aVarH0);
            }
        });
    }

    @Override
    public final void notifySeekStarted() {
        if (this.j) {
            return;
        }
        final nb.a aVarD0 = D0();
        this.j = true;
        T1(aVarD0, -1, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                ((nb) obj).q(aVarD0);
            }
        });
    }

    @Override
    public final void o(int i, i.b bVar, final Exception exc) {
        final nb.a aVarH0 = H0(i, bVar);
        T1(aVarH0, 1024, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                ((nb) obj).u0(aVarH0, exc);
            }
        });
    }

    @Override
    public final void onAudioCodecError(final Exception exc) {
        final nb.a aVarJ0 = J0();
        T1(aVarJ0, AnalyticsListener.EVENT_AUDIO_CODEC_ERROR, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                ((nb) obj).b(aVarJ0, exc);
            }
        });
    }

    @Override
    public final void onAudioDecoderInitialized(final String str, final long j, final long j2) {
        final nb.a aVarJ0 = J0();
        T1(aVarJ0, 1008, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                wz1.O0(aVarJ0, str, j2, j, (nb) obj);
            }
        });
    }

    @Override
    public final void onAudioDecoderReleased(final String str) {
        final nb.a aVarJ0 = J0();
        T1(aVarJ0, 1012, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                ((nb) obj).c0(aVarJ0, str);
            }
        });
    }

    @Override
    public final void onAudioPositionAdvancing(final long j) {
        final nb.a aVarJ0 = J0();
        T1(aVarJ0, 1010, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                ((nb) obj).Q(aVarJ0, j);
            }
        });
    }

    @Override
    public final void onAudioSinkError(final Exception exc) {
        final nb.a aVarJ0 = J0();
        T1(aVarJ0, 1014, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                ((nb) obj).K(aVarJ0, exc);
            }
        });
    }

    @Override
    public final void onAudioUnderrun(final int i, final long j, final long j2) {
        final nb.a aVarJ0 = J0();
        T1(aVarJ0, 1011, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                ((nb) obj).n0(aVarJ0, i, j, j2);
            }
        });
    }

    @Override
    public void onAvailableCommandsChanged(final t.b bVar) {
        final nb.a aVarD0 = D0();
        T1(aVarD0, 13, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                ((nb) obj).D(aVarD0, bVar);
            }
        });
    }

    @Override
    public final void onBandwidthSample(final int i, final long j, final long j2) {
        final nb.a aVarG0 = G0();
        T1(aVarG0, 1006, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                ((nb) obj).o0(aVarG0, i, j, j2);
            }
        });
    }

    @Override
    public void onCues(final List list) {
        final nb.a aVarD0 = D0();
        T1(aVarD0, 27, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                ((nb) obj).M(aVarD0, list);
            }
        });
    }

    @Override
    public void onDeviceInfoChanged(final h hVar) {
        final nb.a aVarD0 = D0();
        T1(aVarD0, 29, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                ((nb) obj).z(aVarD0, hVar);
            }
        });
    }

    @Override
    public void onDeviceVolumeChanged(final int i, final boolean z) {
        final nb.a aVarD0 = D0();
        T1(aVarD0, 30, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                ((nb) obj).q0(aVarD0, i, z);
            }
        });
    }

    @Override
    public final void onDroppedFrames(final int i, final long j) {
        final nb.a aVarI0 = I0();
        T1(aVarI0, 1018, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                ((nb) obj).r0(aVarI0, i, j);
            }
        });
    }

    @Override
    public void onEvents(t tVar, t.c cVar) {
    }

    @Override
    public final void onIsLoadingChanged(final boolean z) {
        final nb.a aVarD0 = D0();
        T1(aVarD0, 3, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                wz1.k1(aVarD0, z, (nb) obj);
            }
        });
    }

    @Override
    public void onIsPlayingChanged(final boolean z) {
        final nb.a aVarD0 = D0();
        T1(aVarD0, 7, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                ((nb) obj).a(aVarD0, z);
            }
        });
    }

    @Override
    public void onLoadingChanged(boolean z) {
    }

    @Override
    public final void onMediaItemTransition(final n nVar, final int i) {
        final nb.a aVarD0 = D0();
        T1(aVarD0, 1, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                ((nb) obj).E(aVarD0, nVar, i);
            }
        });
    }

    @Override
    public void onMediaMetadataChanged(final o oVar) {
        final nb.a aVarD0 = D0();
        T1(aVarD0, 14, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                ((nb) obj).m(aVarD0, oVar);
            }
        });
    }

    @Override
    public final void onMetadata(final Metadata metadata) {
        final nb.a aVarD0 = D0();
        T1(aVarD0, 28, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                ((nb) obj).k0(aVarD0, metadata);
            }
        });
    }

    @Override
    public final void onPlayWhenReadyChanged(final boolean z, final int i) {
        final nb.a aVarD0 = D0();
        T1(aVarD0, 5, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                ((nb) obj).t0(aVarD0, z, i);
            }
        });
    }

    @Override
    public final void onPlaybackParametersChanged(final s sVar) {
        final nb.a aVarD0 = D0();
        T1(aVarD0, 12, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                ((nb) obj).h0(aVarD0, sVar);
            }
        });
    }

    @Override
    public final void onPlaybackStateChanged(final int i) {
        final nb.a aVarD0 = D0();
        T1(aVarD0, 4, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                ((nb) obj).o(aVarD0, i);
            }
        });
    }

    @Override
    public final void onPlaybackSuppressionReasonChanged(final int i) {
        final nb.a aVarD0 = D0();
        T1(aVarD0, 6, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                ((nb) obj).H(aVarD0, i);
            }
        });
    }

    @Override
    public final void onPlayerError(final PlaybackException playbackException) {
        final nb.a aVarK0 = K0(playbackException);
        T1(aVarK0, 10, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                ((nb) obj).V(aVarK0, playbackException);
            }
        });
    }

    @Override
    public void onPlayerErrorChanged(final PlaybackException playbackException) {
        final nb.a aVarK0 = K0(playbackException);
        T1(aVarK0, 10, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                ((nb) obj).h(aVarK0, playbackException);
            }
        });
    }

    @Override
    public final void onPlayerStateChanged(final boolean z, final int i) {
        final nb.a aVarD0 = D0();
        T1(aVarD0, -1, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                ((nb) obj).u(aVarD0, z, i);
            }
        });
    }

    @Override
    public void onPositionDiscontinuity(int i) {
    }

    @Override
    public final void onRenderedFirstFrame(final Object obj, final long j) {
        final nb.a aVarJ0 = J0();
        T1(aVarJ0, 26, new om5.a() {
            @Override
            public final void invoke(Object obj2) {
                ((nb) obj2).U(aVarJ0, obj, j);
            }
        });
    }

    @Override
    public final void onSeekProcessed() {
        final nb.a aVarD0 = D0();
        T1(aVarD0, -1, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                ((nb) obj).v(aVarD0);
            }
        });
    }

    @Override
    public final void onSkipSilenceEnabledChanged(final boolean z) {
        final nb.a aVarJ0 = J0();
        T1(aVarJ0, 23, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                ((nb) obj).N(aVarJ0, z);
            }
        });
    }

    @Override
    public final void onSurfaceSizeChanged(final int i, final int i2) {
        final nb.a aVarJ0 = J0();
        T1(aVarJ0, 24, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                ((nb) obj).e(aVarJ0, i, i2);
            }
        });
    }

    @Override
    public final void onTimelineChanged(a0 a0Var, final int i) {
        this.e.l((t) zi.e(this.h));
        final nb.a aVarD0 = D0();
        T1(aVarD0, 0, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                ((nb) obj).s(aVarD0, i);
            }
        });
    }

    @Override
    public void onTracksChanged(final b0 b0Var) {
        final nb.a aVarD0 = D0();
        T1(aVarD0, 2, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                ((nb) obj).j(aVarD0, b0Var);
            }
        });
    }

    @Override
    public final void onVideoCodecError(final Exception exc) {
        final nb.a aVarJ0 = J0();
        T1(aVarJ0, AnalyticsListener.EVENT_VIDEO_CODEC_ERROR, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                ((nb) obj).g0(aVarJ0, exc);
            }
        });
    }

    @Override
    public final void onVideoDecoderInitialized(final String str, final long j, final long j2) {
        final nb.a aVarJ0 = J0();
        T1(aVarJ0, 1016, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                wz1.I1(aVarJ0, str, j2, j, (nb) obj);
            }
        });
    }

    @Override
    public final void onVideoDecoderReleased(final String str) {
        final nb.a aVarJ0 = J0();
        T1(aVarJ0, 1019, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                ((nb) obj).j0(aVarJ0, str);
            }
        });
    }

    @Override
    public final void onVideoFrameProcessingOffset(final long j, final int i) {
        final nb.a aVarI0 = I0();
        T1(aVarI0, 1021, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                ((nb) obj).P(aVarI0, j, i);
            }
        });
    }

    @Override
    public final void onVideoSizeChanged(final f7c f7cVar) {
        final nb.a aVarJ0 = J0();
        T1(aVarJ0, 25, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                wz1.O1(aVarJ0, f7cVar, (nb) obj);
            }
        });
    }

    @Override
    public final void onVolumeChanged(final float f) {
        final nb.a aVarJ0 = J0();
        T1(aVarJ0, 22, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                ((nb) obj).m0(aVarJ0, f);
            }
        });
    }

    @Override
    public final void p(int i, i.b bVar, final in5 in5Var, final ih6 ih6Var) {
        final nb.a aVarH0 = H0(i, bVar);
        T1(aVarH0, 1002, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                ((nb) obj).Y(aVarH0, in5Var, ih6Var);
            }
        });
    }

    @Override
    public final void q(List list, i.b bVar) {
        this.e.k(list, bVar, (t) zi.e(this.h));
    }

    @Override
    public void r(nb nbVar) {
        zi.e(nbVar);
        this.g.c(nbVar);
    }

    @Override
    public void release() {
        ((xn4) zi.i(this.i)).post(new Runnable() {
            @Override
            public final void run() {
                this.b.S1();
            }
        });
    }

    @Override
    public final void s(int i, i.b bVar, final in5 in5Var, final ih6 ih6Var) {
        final nb.a aVarH0 = H0(i, bVar);
        T1(aVarH0, 1000, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                ((nb) obj).c(aVarH0, in5Var, ih6Var);
            }
        });
    }

    @Override
    public final void t(int i, i.b bVar, final in5 in5Var, final ih6 ih6Var, final IOException iOException, final boolean z) {
        final nb.a aVarH0 = H0(i, bVar);
        T1(aVarH0, 1003, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                ((nb) obj).O(aVarH0, in5Var, ih6Var, iOException, z);
            }
        });
    }

    @Override
    public final void u(int i, i.b bVar) {
        final nb.a aVarH0 = H0(i, bVar);
        T1(aVarH0, AnalyticsListener.EVENT_DRM_SESSION_RELEASED, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                ((nb) obj).A(aVarH0);
            }
        });
    }

    @Override
    public final void onPositionDiscontinuity(final t.e eVar, final t.e eVar2, final int i) {
        if (i == 1) {
            this.j = false;
        }
        this.e.j((t) zi.e(this.h));
        final nb.a aVarD0 = D0();
        T1(aVarD0, 11, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                wz1.A1(aVarD0, i, eVar, eVar2, (nb) obj);
            }
        });
    }

    @Override
    public void onCues(final qm1 qm1Var) {
        final nb.a aVarD0 = D0();
        T1(aVarD0, 27, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                ((nb) obj).X(aVarD0, qm1Var);
            }
        });
    }

    @Override
    public void onRenderedFirstFrame() {
    }
}
