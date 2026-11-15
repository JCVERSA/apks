package com.yandex.mobile.ads.impl;

import android.os.Looper;
import android.util.SparseArray;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import com.yandex.mobile.ads.impl.b72;
import com.yandex.mobile.ads.impl.bc0;
import com.yandex.mobile.ads.impl.bi1;
import com.yandex.mobile.ads.impl.es0;
import com.yandex.mobile.ads.impl.ez;
import com.yandex.mobile.ads.impl.hi1;
import com.yandex.mobile.ads.impl.i10;
import com.yandex.mobile.ads.impl.jc0;
import com.yandex.mobile.ads.impl.jv;
import com.yandex.mobile.ads.impl.jw0;
import com.yandex.mobile.ads.impl.k01;
import com.yandex.mobile.ads.impl.ld;
import com.yandex.mobile.ads.impl.lw0;
import com.yandex.mobile.ads.impl.mw0;
import com.yandex.mobile.ads.impl.py;
import com.yandex.mobile.ads.impl.ty;
import com.yandex.mobile.ads.impl.yh1;
import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

public final class ez implements ed {
    private final jp a;
    private final i52.b b;
    private final i52.d c;
    private final a d;
    private final SparseArray<ld.a> e;
    private as0<ld> f;
    private hi1 g;
    private hf0 h;

    public static final class a {
        private final i52.b a;
        private kk0<vw0.b> b = kk0.h();
        private lk0<vw0.b, i52> c = lk0.g();

        @Nullable
        private vw0.b d;
        private vw0.b e;
        private vw0.b f;

        public a(i52.b bVar) {
            this.a = bVar;
        }

        private void a(lk0.a<vw0.b, i52> aVar, @Nullable vw0.b bVar, i52 i52Var) {
            if (bVar == null) {
                return;
            }
            if (i52Var.a(bVar.a) != -1) {
                aVar.a(bVar, i52Var);
                return;
            }
            i52 i52Var2 = this.c.get(bVar);
            if (i52Var2 != null) {
                aVar.a(bVar, i52Var2);
            }
        }

        @Nullable
        public static vw0.b a(hi1 hi1Var, kk0<vw0.b> kk0Var, @Nullable vw0.b bVar, i52.b bVar2) {
            i52 currentTimeline = hi1Var.getCurrentTimeline();
            int currentPeriodIndex = hi1Var.getCurrentPeriodIndex();
            Object objA = currentTimeline.c() ? null : currentTimeline.a(currentPeriodIndex);
            int iA = (hi1Var.isPlayingAd() || currentTimeline.c()) ? -1 : currentTimeline.a(currentPeriodIndex, bVar2).a(f92.a(hi1Var.getCurrentPosition()) - bVar2.c());
            for (int i = 0; i < kk0Var.size(); i++) {
                vw0.b bVar3 = kk0Var.get(i);
                if (a(bVar3, objA, hi1Var.isPlayingAd(), hi1Var.getCurrentAdGroupIndex(), hi1Var.getCurrentAdIndexInAdGroup(), iA)) {
                    return bVar3;
                }
            }
            if (kk0Var.isEmpty() && bVar != null) {
                if (a(bVar, objA, hi1Var.isPlayingAd(), hi1Var.getCurrentAdGroupIndex(), hi1Var.getCurrentAdIndexInAdGroup(), iA)) {
                    return bVar;
                }
            }
            return null;
        }

        private static boolean a(vw0.b bVar, @Nullable Object obj, boolean z, int i, int i2, int i3) {
            if (bVar.a.equals(obj)) {
                return (z && bVar.b == i && bVar.c == i2) || (!z && bVar.b == -1 && bVar.e == i3);
            }
            return false;
        }

        public void a(i52 i52Var) {
            lk0.a<vw0.b, i52> aVarA = lk0.a();
            if (this.b.isEmpty()) {
                a(aVarA, this.e, i52Var);
                if (!zd1.a(this.f, this.e)) {
                    a(aVarA, this.f, i52Var);
                }
                if (!zd1.a(this.d, this.e) && !zd1.a(this.d, this.f)) {
                    a(aVarA, this.d, i52Var);
                }
            } else {
                for (int i = 0; i < this.b.size(); i++) {
                    a(aVarA, this.b.get(i), i52Var);
                }
                if (!this.b.contains(this.d)) {
                    a(aVarA, this.d, i52Var);
                }
            }
            this.c = aVarA.a();
        }
    }

    public ez(jp jpVar) {
        this.a = (jp) hg.a(jpVar);
        this.f = new as0<>(f92.c(), jpVar, new as0.b() {
            @Override
            public final void a(Object obj, bc0 bc0Var) {
                ez.a((ld) obj, bc0Var);
            }
        });
        i52.b bVar = new i52.b();
        this.b = bVar;
        this.c = new i52.d();
        this.d = new a(bVar);
        this.e = new SparseArray<>();
    }

    public static void a(ld ldVar, bc0 bc0Var) {
    }

    private ld.a e(int i, @Nullable vw0.b bVar) {
        this.g.getClass();
        if (bVar != null) {
            return ((i52) this.d.c.get(bVar)) != null ? a(bVar) : a(i52.b, i, bVar);
        }
        i52 currentTimeline = this.g.getCurrentTimeline();
        if (i >= currentTimeline.b()) {
            currentTimeline = i52.b;
        }
        return a(currentTimeline, i, (vw0.b) null);
    }

    @Override
    public final void onCues(final List<hv> list) {
        final ld.a aVarA = a();
        a(aVarA, 27, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ld.a aVar = aVarA;
                List list2 = list;
                ((ld) obj).getClass();
            }
        });
    }

    @Override
    public final void onIsLoadingChanged(final boolean z) {
        final ld.a aVarA = a();
        a(aVarA, 3, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ld.a aVar = aVarA;
                boolean z2 = z;
                ((ld) obj).getClass();
            }
        });
    }

    @Override
    public final void onIsPlayingChanged(final boolean z) {
        final ld.a aVarA = a();
        a(aVarA, 7, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ld.a aVar = aVarA;
                boolean z2 = z;
                ((ld) obj).getClass();
            }
        });
    }

    @Override
    public final void onPlayWhenReadyChanged(final boolean z, final int i) {
        final ld.a aVarA = a();
        a(aVarA, 5, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ld.a aVar = aVarA;
                boolean z2 = z;
                int i2 = i;
                ((ld) obj).getClass();
            }
        });
    }

    @Override
    public final void onPlaybackStateChanged(final int i) {
        final ld.a aVarA = a();
        a(aVarA, 4, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ld.a aVar = aVarA;
                int i2 = i;
                ((ld) obj).getClass();
            }
        });
    }

    @Override
    public final void onPlaybackSuppressionReasonChanged(final int i) {
        final ld.a aVarA = a();
        a(aVarA, 6, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ld.a aVar = aVarA;
                int i2 = i;
                ((ld) obj).getClass();
            }
        });
    }

    @Override
    public final void onPlayerStateChanged(final boolean z, final int i) {
        final ld.a aVarA = a();
        a(aVarA, -1, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ld.a aVar = aVarA;
                boolean z2 = z;
                int i2 = i;
                ((ld) obj).getClass();
            }
        });
    }

    @Override
    public final void onRenderedFirstFrame() {
    }

    @Override
    public final void onSkipSilenceEnabledChanged(final boolean z) {
        final ld.a aVarB = b();
        a(aVarB, 23, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ld.a aVar = aVarB;
                boolean z2 = z;
                ((ld) obj).getClass();
            }
        });
    }

    @Override
    public final void onSurfaceSizeChanged(final int i, final int i2) {
        final ld.a aVarB = b();
        a(aVarB, 24, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ld.a aVar = aVarB;
                int i3 = i;
                int i4 = i2;
                ((ld) obj).getClass();
            }
        });
    }

    @Override
    public final void onVolumeChanged(final float f) {
        final ld.a aVarB = b();
        a(aVarB, 22, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ld.a aVar = aVarB;
                float f2 = f;
                ((ld) obj).getClass();
            }
        });
    }

    @Override
    @CallSuper
    public final void release() {
        hf0 hf0Var = this.h;
        if (hf0Var == null) {
            throw new IllegalStateException();
        }
        hf0Var.a(new Runnable() {
            @Override
            public final void run() {
                this.b.c();
            }
        });
    }

    private ld.a b() {
        return a(this.d.f);
    }

    @Override
    @CallSuper
    public final void a(nw0 nw0Var) {
        this.f.a(nw0Var);
    }

    public final ld.a a() {
        return a(this.d.d);
    }

    @Override
    public final void d(int i, @Nullable vw0.b bVar) {
        final ld.a aVarE = e(i, bVar);
        a(aVarE, AnalyticsListener.EVENT_DRM_KEYS_REMOVED, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ld.a aVar = aVarE;
                ((ld) obj).getClass();
            }
        });
    }

    private ld.a a(@Nullable vw0.b bVar) {
        this.g.getClass();
        i52 i52Var = bVar == null ? null : (i52) this.d.c.get(bVar);
        if (bVar != null && i52Var != null) {
            return a(i52Var, i52Var.a(bVar.a, this.b).d, bVar);
        }
        int currentMediaItemIndex = this.g.getCurrentMediaItemIndex();
        i52 currentTimeline = this.g.getCurrentTimeline();
        if (currentMediaItemIndex >= currentTimeline.b()) {
            currentTimeline = i52.b;
        }
        return a(currentTimeline, currentMediaItemIndex, (vw0.b) null);
    }

    public static void b(ld.a aVar, int i, long j, long j2, ld ldVar) {
        ((nw0) ldVar).a(aVar, i, j);
    }

    public static void c(ld.a aVar, py pyVar, ld ldVar) {
        ((nw0) ldVar).a(pyVar);
    }

    @Override
    public final void d(final py pyVar) {
        final ld.a aVarB = b();
        a(aVarB, 1015, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ld.a aVar = aVarB;
                py pyVar2 = pyVar;
                ((ld) obj).getClass();
            }
        });
    }

    @Override
    public final void c(int i, @Nullable vw0.b bVar) {
        final ld.a aVarE = e(i, bVar);
        a(aVarE, AnalyticsListener.EVENT_DRM_KEYS_LOADED, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ld.a aVar = aVarE;
                ((ld) obj).getClass();
            }
        });
    }

    @Override
    public final void c(int i, @Nullable vw0.b bVar, final es0 es0Var, final lw0 lw0Var) {
        final ld.a aVarE = e(i, bVar);
        a(aVarE, 1000, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ld.a aVar = aVarE;
                es0 es0Var2 = es0Var;
                lw0 lw0Var2 = lw0Var;
                ((ld) obj).getClass();
            }
        });
    }

    @Override
    public final void c(final Exception exc) {
        final ld.a aVarB = b();
        a(aVarB, AnalyticsListener.EVENT_VIDEO_CODEC_ERROR, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ld.a aVar = aVarB;
                Exception exc2 = exc;
                ((ld) obj).getClass();
            }
        });
    }

    @Override
    public final void c(final py pyVar) {
        final ld.a aVarA = a(this.d.e);
        a(aVarA, 1020, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ez.c(aVarA, pyVar, (ld) obj);
            }
        });
    }

    @Override
    public final void b(final Exception exc) {
        final ld.a aVarB = b();
        a(aVarB, AnalyticsListener.EVENT_AUDIO_CODEC_ERROR, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ld.a aVar = aVarB;
                Exception exc2 = exc;
                ((ld) obj).getClass();
            }
        });
    }

    public void c() {
        final ld.a aVarA = a();
        a(aVarA, AnalyticsListener.EVENT_PLAYER_RELEASED, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ld.a aVar = aVarA;
                ((ld) obj).getClass();
            }
        });
        this.f.b();
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0064  */
    public final ld.a a(i52 i52Var, int i, @Nullable vw0.b bVar) {
        long jB;
        vw0.b bVar2 = i52Var.c() ? null : bVar;
        long jB2 = this.a.b();
        boolean z = i52Var.equals(this.g.getCurrentTimeline()) && i == this.g.getCurrentMediaItemIndex();
        if (bVar2 == null || !bVar2.a()) {
            if (z) {
                jB = this.g.getContentPosition();
            } else if (i52Var.c()) {
                jB = 0;
            } else {
                jB = f92.b(i52Var.a(i, this.c, 0L).n);
            }
        } else if (z && this.g.getCurrentAdGroupIndex() == bVar2.b && this.g.getCurrentAdIndexInAdGroup() == bVar2.c) {
            jB = this.g.getCurrentPosition();
        } else {
            jB = 0;
        }
        return new ld.a(jB2, i52Var, i, bVar2, jB, this.g.getCurrentTimeline(), this.g.getCurrentMediaItemIndex(), this.d.d, this.g.getCurrentPosition(), this.g.getTotalBufferedDuration());
    }

    @Override
    public final void b(final String str, final long j, final long j2) {
        final ld.a aVarB = b();
        a(aVarB, 1008, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ld.a aVar = aVarB;
                String str2 = str;
                long j3 = j2;
                long j4 = j;
                ((ld) obj).getClass();
            }
        });
    }

    @Override
    public final void b(final String str) {
        final ld.a aVarB = b();
        a(aVarB, 1012, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ld.a aVar = aVarB;
                String str2 = str;
                ((ld) obj).getClass();
            }
        });
    }

    @Override
    public final void b(final py pyVar) {
        final ld.a aVarB = b();
        a(aVarB, 1007, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ld.a aVar = aVarB;
                py pyVar2 = pyVar;
                ((ld) obj).getClass();
            }
        });
    }

    @Override
    public final void b(final int i, final long j, final long j2) {
        Object next;
        Object obj;
        vw0.b bVar;
        a aVar = this.d;
        if (aVar.b.isEmpty()) {
            bVar = null;
        } else {
            kk0 kk0Var = aVar.b;
            if (kk0Var != null) {
                if (!kk0Var.isEmpty()) {
                    obj = kk0Var.get(kk0Var.size() - 1);
                } else {
                    throw new NoSuchElementException();
                }
            } else {
                Iterator<E> it = kk0Var.iterator();
                do {
                    next = it.next();
                } while (it.hasNext());
                obj = next;
            }
            bVar = (vw0.b) obj;
        }
        final ld.a aVarA = a(bVar);
        a(aVarA, 1006, new as0.a() {
            @Override
            public final void invoke(Object obj2) {
                ez.b(aVarA, i, j, j2, (ld) obj2);
            }
        });
    }

    @Override
    public final void b(int i, @Nullable vw0.b bVar) {
        final ld.a aVarE = e(i, bVar);
        a(aVarE, AnalyticsListener.EVENT_DRM_SESSION_RELEASED, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ld.a aVar = aVarE;
                ((ld) obj).getClass();
            }
        });
    }

    @Override
    public final void b(final int i, final long j) {
        final ld.a aVarA = a(this.d.e);
        a(aVarA, 1018, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ld.a aVar = aVarA;
                int i2 = i;
                long j2 = j;
                ((ld) obj).getClass();
            }
        });
    }

    @Override
    public final void b(int i, @Nullable vw0.b bVar, final es0 es0Var, final lw0 lw0Var) {
        final ld.a aVarE = e(i, bVar);
        a(aVarE, 1001, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ld.a aVar = aVarE;
                es0 es0Var2 = es0Var;
                lw0 lw0Var2 = lw0Var;
                ((ld) obj).getClass();
            }
        });
    }

    @Override
    public final void b(final m60 m60Var) {
        final ld.a aVarA;
        rw0 rw0Var;
        if (m60Var != null && (rw0Var = m60Var.i) != null) {
            aVarA = a(new vw0.b(rw0Var));
        } else {
            aVarA = a();
        }
        a(aVarA, 10, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ez.a(aVarA, m60Var, (ld) obj);
            }
        });
    }

    @Override
    public final void b(final jc0 jc0Var, @Nullable final ty tyVar) {
        final ld.a aVarB = b();
        a(aVarB, 1017, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ld.a aVar = aVarB;
                jc0 jc0Var2 = jc0Var;
                ty tyVar2 = tyVar;
                ((ld) obj).getClass();
            }
        });
    }

    public static void a(ld.a aVar, lw0 lw0Var, ld ldVar) {
        ((nw0) ldVar).a(aVar, lw0Var);
    }

    public static void a(ld.a aVar, es0 es0Var, lw0 lw0Var, IOException iOException, boolean z, ld ldVar) {
        ((nw0) ldVar).a(lw0Var);
    }

    public static void a(ld.a aVar, yh1 yh1Var, ld ldVar) {
        ((nw0) ldVar).a(yh1Var);
    }

    public static void a(ld.a aVar, int i, hi1.c cVar, hi1.c cVar2, ld ldVar) {
        ldVar.getClass();
        ((nw0) ldVar).a(i);
    }

    public static void a(ld.a aVar, cg2 cg2Var, ld ldVar) {
        ((nw0) ldVar).a(cg2Var);
        int i = cg2Var.b;
    }

    public void a(hi1 hi1Var, ld ldVar, bc0 bc0Var) {
        ((nw0) ldVar).a(hi1Var, new ld.b(bc0Var, this.e));
    }

    @Override
    public final void a(final py pyVar) {
        final ld.a aVarA = a(this.d.e);
        a(aVarA, 1013, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ld.a aVar = aVarA;
                py pyVar2 = pyVar;
                ((ld) obj).getClass();
            }
        });
    }

    @Override
    public final void a(final jc0 jc0Var, @Nullable final ty tyVar) {
        final ld.a aVarB = b();
        a(aVarB, 1009, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ld.a aVar = aVarB;
                jc0 jc0Var2 = jc0Var;
                ty tyVar2 = tyVar;
                ((ld) obj).getClass();
            }
        });
    }

    @Override
    public final void a(final long j) {
        final ld.a aVarB = b();
        a(aVarB, 1010, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ld.a aVar = aVarB;
                long j2 = j;
                ((ld) obj).getClass();
            }
        });
    }

    @Override
    public final void a(final Exception exc) {
        final ld.a aVarB = b();
        a(aVarB, 1014, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ld.a aVar = aVarB;
                Exception exc2 = exc;
                ((ld) obj).getClass();
            }
        });
    }

    @Override
    public final void a(final int i, final long j, final long j2) {
        final ld.a aVarB = b();
        a(aVarB, 1011, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ld.a aVar = aVarB;
                int i2 = i;
                long j3 = j;
                long j4 = j2;
                ((ld) obj).getClass();
            }
        });
    }

    @Override
    public final void a(final hi1.a aVar) {
        final ld.a aVarA = a();
        a(aVarA, 13, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ld.a aVar2 = aVarA;
                hi1.a aVar3 = aVar;
                ((ld) obj).getClass();
            }
        });
    }

    @Override
    public final void a(final jv jvVar) {
        final ld.a aVarA = a();
        a(aVarA, 27, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ld.a aVar = aVarA;
                jv jvVar2 = jvVar;
                ((ld) obj).getClass();
            }
        });
    }

    @Override
    public final void a(final i10 i10Var) {
        final ld.a aVarA = a();
        a(aVarA, 29, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ld.a aVar = aVarA;
                i10 i10Var2 = i10Var;
                ((ld) obj).getClass();
            }
        });
    }

    @Override
    public final void a(final boolean z, final int i) {
        final ld.a aVarA = a();
        a(aVarA, 30, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ld.a aVar = aVarA;
                int i2 = i;
                boolean z2 = z;
                ((ld) obj).getClass();
            }
        });
    }

    @Override
    public final void a(int i, @Nullable vw0.b bVar, final lw0 lw0Var) {
        final ld.a aVarE = e(i, bVar);
        a(aVarE, 1004, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ez.a(aVarE, lw0Var, (ld) obj);
            }
        });
    }

    @Override
    public final void a(int i, @Nullable vw0.b bVar) {
        final ld.a aVarE = e(i, bVar);
        a(aVarE, 1025, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ld.a aVar = aVarE;
                ((ld) obj).getClass();
            }
        });
    }

    @Override
    public final void a(int i, @Nullable vw0.b bVar, final int i2) {
        final ld.a aVarE = e(i, bVar);
        a(aVarE, AnalyticsListener.EVENT_DRM_SESSION_ACQUIRED, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ld.a aVar = aVarE;
                int i3 = i2;
                ((ld) obj).getClass();
            }
        });
    }

    @Override
    public final void a(int i, @Nullable vw0.b bVar, final Exception exc) {
        final ld.a aVarE = e(i, bVar);
        a(aVarE, 1024, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ld.a aVar = aVarE;
                Exception exc2 = exc;
                ((ld) obj).getClass();
            }
        });
    }

    @Override
    public final void a(int i, @Nullable vw0.b bVar, final es0 es0Var, final lw0 lw0Var) {
        final ld.a aVarE = e(i, bVar);
        a(aVarE, 1002, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ld.a aVar = aVarE;
                es0 es0Var2 = es0Var;
                lw0 lw0Var2 = lw0Var;
                ((ld) obj).getClass();
            }
        });
    }

    @Override
    public final void a(int i, @Nullable vw0.b bVar, final es0 es0Var, final lw0 lw0Var, final IOException iOException, final boolean z) {
        final ld.a aVarE = e(i, bVar);
        a(aVarE, 1003, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ez.a(aVarE, es0Var, lw0Var, iOException, z, (ld) obj);
            }
        });
    }

    @Override
    public final void a(@Nullable final jw0 jw0Var, final int i) {
        final ld.a aVarA = a();
        a(aVarA, 1, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ld.a aVar = aVarA;
                jw0 jw0Var2 = jw0Var;
                int i2 = i;
                ((ld) obj).getClass();
            }
        });
    }

    @Override
    public final void a(final mw0 mw0Var) {
        final ld.a aVarA = a();
        a(aVarA, 14, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ld.a aVar = aVarA;
                mw0 mw0Var2 = mw0Var;
                ((ld) obj).getClass();
            }
        });
    }

    @Override
    public final void a(final k01 k01Var) {
        final ld.a aVarA = a();
        a(aVarA, 28, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ld.a aVar = aVarA;
                k01 k01Var2 = k01Var;
                ((ld) obj).getClass();
            }
        });
    }

    @Override
    public final void a(final bi1 bi1Var) {
        final ld.a aVarA = a();
        a(aVarA, 12, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ld.a aVar = aVarA;
                bi1 bi1Var2 = bi1Var;
                ((ld) obj).getClass();
            }
        });
    }

    @Override
    public final void a(@Nullable final m60 m60Var) {
        final ld.a aVarA;
        rw0 rw0Var;
        if (m60Var != null && (rw0Var = m60Var.i) != null) {
            aVarA = a(new vw0.b(rw0Var));
        } else {
            aVarA = a();
        }
        a(aVarA, 10, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ld.a aVar = aVarA;
                yh1 yh1Var = m60Var;
                ((ld) obj).getClass();
            }
        });
    }

    @Override
    public final void a(final hi1.c cVar, final hi1.c cVar2, final int i) {
        a aVar = this.d;
        hi1 hi1Var = this.g;
        hi1Var.getClass();
        aVar.d = a.a(hi1Var, aVar.b, aVar.e, aVar.a);
        final ld.a aVarA = a();
        a(aVarA, 11, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ez.a(aVarA, i, cVar, cVar2, (ld) obj);
            }
        });
    }

    @Override
    public final void a(final Object obj, final long j) {
        final ld.a aVarB = b();
        a(aVarB, 26, new as0.a() {
            @Override
            public final void invoke(Object obj2) {
                ld.a aVar = aVarB;
                Object obj3 = obj;
                long j2 = j;
                ((ld) obj2).getClass();
            }
        });
    }

    @Override
    public final void a(final int i) {
        a aVar = this.d;
        hi1 hi1Var = this.g;
        hi1Var.getClass();
        aVar.d = a.a(hi1Var, aVar.b, aVar.e, aVar.a);
        aVar.a(hi1Var.getCurrentTimeline());
        final ld.a aVarA = a();
        a(aVarA, 0, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ld.a aVar2 = aVarA;
                int i2 = i;
                ((ld) obj).getClass();
            }
        });
    }

    @Override
    public final void a(final b72 b72Var) {
        final ld.a aVarA = a();
        a(aVarA, 2, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ld.a aVar = aVarA;
                b72 b72Var2 = b72Var;
                ((ld) obj).getClass();
            }
        });
    }

    @Override
    public final void a(final String str, final long j, final long j2) {
        final ld.a aVarB = b();
        a(aVarB, 1016, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ld.a aVar = aVarB;
                String str2 = str;
                long j3 = j2;
                long j4 = j;
                ((ld) obj).getClass();
            }
        });
    }

    @Override
    public final void a(final String str) {
        final ld.a aVarB = b();
        a(aVarB, 1019, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ld.a aVar = aVarB;
                String str2 = str;
                ((ld) obj).getClass();
            }
        });
    }

    @Override
    public final void a(final int i, final long j) {
        final ld.a aVarA = a(this.d.e);
        a(aVarA, 1021, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ld.a aVar = aVarA;
                long j2 = j;
                int i2 = i;
                ((ld) obj).getClass();
            }
        });
    }

    @Override
    public final void a(final cg2 cg2Var) {
        final ld.a aVarB = b();
        a(aVarB, 25, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ez.a(aVarB, cg2Var, (ld) obj);
            }
        });
    }

    public final void a(ld.a aVar, int i, as0.a<ld> aVar2) {
        this.e.put(i, aVar);
        as0<ld> as0Var = this.f;
        as0Var.a(i, aVar2);
        as0Var.a();
    }

    @Override
    @CallSuper
    public final void a(final hi1 hi1Var, Looper looper) {
        if (this.g != null && !this.d.b.isEmpty()) {
            throw new IllegalStateException();
        }
        this.g = hi1Var;
        this.h = this.a.a(looper, null);
        this.f = this.f.a(looper, new as0.b() {
            @Override
            public final void a(Object obj, bc0 bc0Var) {
                this.a.a(hi1Var, (ld) obj, bc0Var);
            }
        });
    }

    @Override
    public final void a(List<vw0.b> list, @Nullable vw0.b bVar) {
        a aVar = this.d;
        hi1 hi1Var = this.g;
        hi1Var.getClass();
        aVar.getClass();
        aVar.b = kk0.a((Collection) list);
        if (!list.isEmpty()) {
            aVar.e = list.get(0);
            bVar.getClass();
            aVar.f = bVar;
        }
        if (aVar.d == null) {
            aVar.d = a.a(hi1Var, aVar.b, aVar.e, aVar.a);
        }
        aVar.a(hi1Var.getCurrentTimeline());
    }
}
