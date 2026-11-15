package com.yandex.mobile.ads.impl;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.AudioTrack;
import android.media.MediaFormat;
import android.media.metrics.LogSessionId;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.TextureView;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.media3.common.C;
import com.transsion.audiotagger.audio.flac.FlacTagCreator;
import com.yandex.mobile.ads.impl.hi1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.TimeoutException;

final class r60 extends rk implements n60 {
    private int A;
    private int B;
    private boolean C;
    private int D;
    private iy1 E;
    private hi1.a F;
    private mw0 G;

    @Nullable
    private AudioTrack H;

    @Nullable
    private Object I;

    @Nullable
    private Surface J;

    @Nullable
    private TextureView K;
    private int L;
    private int M;
    private int N;
    private int O;
    private ph P;
    private float Q;
    private boolean R;
    private boolean S;
    private boolean T;
    private i10 U;
    private mw0 V;
    private zh1 W;
    private int X;
    private long Y;
    final g62 b;
    final hi1.a c;
    private final ir d;
    private final hi1 e;
    private final yo1[] f;
    private final f62 g;
    private final hf0 h;
    private final t60 i;
    private final as0<hi1.b> j;
    private final CopyOnWriteArraySet<n60.a> k;
    private final i52.b l;
    private final ArrayList m;
    private final boolean n;
    private final vw0.a o;
    private final ed p;
    private final Looper q;
    private final wi r;
    private final y32 s;
    private final b t;
    private final qh u;
    private final th v;
    private final a32 w;
    private final ij2 x;
    private final hk2 y;
    private final long z;

    @RequiresApi(31)
    public static final class a {
        @DoNotInline
        public static mi1 a(Context context, r60 r60Var, boolean z) {
            nw0 nw0VarA = nw0.a(context);
            if (nw0VarA == null) {
                et0.d("ExoPlayerImpl", "MediaMetricsService unavailable.");
                return new mi1(LogSessionId.LOG_SESSION_ID_NONE);
            }
            if (z) {
                r60Var.getClass();
                r60Var.p.a(nw0VarA);
            }
            return new mi1(nw0VarA.b());
        }
    }

    public final class b implements vf2, vh, u42, o01, SurfaceHolder.Callback, TextureView.SurfaceTextureListener, q12.b, th.b, qh.b, a32.a, n60.a {
        @Override
        public final void onCues(final List<hv> list) {
            as0 as0Var = r60.this.j;
            as0Var.a(27, new as0.a() {
                @Override
                public final void invoke(Object obj) {
                    ((hi1.b) obj).onCues(list);
                }
            });
            as0Var.a();
        }

        @Override
        public final void onSkipSilenceEnabledChanged(final boolean z) {
            r60 r60Var = r60.this;
            if (r60Var.R == z) {
                return;
            }
            r60Var.R = z;
            as0 as0Var = r60Var.j;
            as0Var.a(23, new as0.a() {
                @Override
                public final void invoke(Object obj) {
                    ((hi1.b) obj).onSkipSilenceEnabledChanged(z);
                }
            });
            as0Var.a();
        }

        @Override
        public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
            r60.this.a(surfaceTexture);
            r60.this.a(i, i2);
        }

        @Override
        public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            r60.this.a((Surface) null);
            r60.this.a(0, 0);
            return true;
        }

        @Override
        public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
            r60.this.a(i, i2);
        }

        @Override
        public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }

        @Override
        public final void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
            r60.this.a(i2, i3);
        }

        @Override
        public final void surfaceCreated(SurfaceHolder surfaceHolder) {
            r60.this.getClass();
        }

        @Override
        public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            r60.this.getClass();
            r60.this.a(0, 0);
        }

        private b() {
        }

        public final void a(int i) {
            r60 r60Var = r60.this;
            r60Var.j();
            boolean z = r60Var.W.l;
            r60 r60Var2 = r60.this;
            int i2 = 1;
            if (z && i != 1) {
                i2 = 2;
            }
            r60Var2.a(i, i2, z);
        }

        @Override
        public final void b(Exception exc) {
            r60.this.p.b(exc);
        }

        public final void c() {
            r60.this.a(-1, 3, false);
        }

        public final void d() {
            final i10 i10VarA = r60.a(r60.this.w);
            if (i10VarA.equals(r60.this.U)) {
                return;
            }
            r60 r60Var = r60.this;
            r60Var.U = i10VarA;
            as0 as0Var = r60Var.j;
            as0Var.a(29, new as0.a() {
                @Override
                public final void invoke(Object obj) {
                    ((hi1.b) obj).a(i10VarA);
                }
            });
            as0Var.a();
        }

        public final void e() {
            r60 r60Var = r60.this;
            r60Var.a(1, 2, Float.valueOf(r60Var.Q * r60Var.v.b()));
        }

        @Override
        public final void b(String str, long j, long j2) {
            r60.this.p.b(str, j, j2);
        }

        @Override
        public final void c(Exception exc) {
            r60.this.p.c(exc);
        }

        @Override
        public final void b(String str) {
            r60.this.p.b(str);
        }

        @Override
        public final void c(py pyVar) {
            r60.this.p.c(pyVar);
            r60.this.getClass();
            r60.this.getClass();
        }

        @Override
        public final void b(py pyVar) {
            r60.this.getClass();
            r60.this.p.b(pyVar);
        }

        @Override
        public final void b(int i, long j) {
            r60.this.p.b(i, j);
        }

        @Override
        public final void b(jc0 jc0Var, @Nullable ty tyVar) {
            r60.this.getClass();
            r60.this.p.b(jc0Var, tyVar);
        }

        @Override
        public final void d(py pyVar) {
            r60.this.getClass();
            r60.this.p.d(pyVar);
        }

        public void a(hi1.b bVar) {
            bVar.a(r60.this.G);
        }

        @Override
        public final void b() {
            r60.this.a((Surface) null);
        }

        @Override
        public final void a(py pyVar) {
            r60.this.p.a(pyVar);
            r60.this.getClass();
            r60.this.getClass();
        }

        @Override
        public final void a(jc0 jc0Var, @Nullable ty tyVar) {
            r60.this.getClass();
            r60.this.p.a(jc0Var, tyVar);
        }

        @Override
        public final void a(long j) {
            r60.this.p.a(j);
        }

        @Override
        public final void a(Exception exc) {
            r60.this.p.a(exc);
        }

        @Override
        public final void a(int i, long j, long j2) {
            r60.this.p.a(i, j, j2);
        }

        @Override
        public final void a(final jv jvVar) {
            r60.this.getClass();
            as0 as0Var = r60.this.j;
            as0Var.a(27, new as0.a() {
                @Override
                public final void invoke(Object obj) {
                    ((hi1.b) obj).a(jvVar);
                }
            });
            as0Var.a();
        }

        @Override
        public final void a() {
            r60.this.i();
        }

        @Override
        public final void a(final k01 k01Var) {
            mw0 mw0VarA;
            r60 r60Var = r60.this;
            mw0.a aVarA = r60Var.V.a();
            for (int i = 0; i < k01Var.c(); i++) {
                k01Var.a(i).a(aVarA);
            }
            r60Var.V = aVarA.a();
            r60 r60Var2 = r60.this;
            r60Var2.j();
            i52 i52Var = r60Var2.W.a;
            if (i52Var.c()) {
                mw0VarA = r60Var2.V;
            } else {
                mw0VarA = r60Var2.V.a().a(i52Var.a(r60Var2.getCurrentMediaItemIndex(), r60Var2.a, 0L).d.e).a();
            }
            if (!mw0VarA.equals(r60.this.G)) {
                r60 r60Var3 = r60.this;
                r60Var3.G = mw0VarA;
                r60Var3.j.a(14, new as0.a() {
                    @Override
                    public final void invoke(Object obj) {
                        this.a.a((hi1.b) obj);
                    }
                });
            }
            r60.this.j.a(28, new as0.a() {
                @Override
                public final void invoke(Object obj) {
                    ((hi1.b) obj).a(k01Var);
                }
            });
            r60.this.j.a();
        }

        @Override
        public final void a(Object obj, long j) {
            r60.this.p.a(obj, j);
            r60 r60Var = r60.this;
            if (r60Var.I == obj) {
                as0 as0Var = r60Var.j;
                as0Var.a(26, new as0.a() {
                    @Override
                    public final void invoke(Object obj2) {
                        ((hi1.b) obj2).onRenderedFirstFrame();
                    }
                });
                as0Var.a();
            }
        }

        public final void a(final boolean z, final int i) {
            as0 as0Var = r60.this.j;
            as0Var.a(30, new as0.a() {
                @Override
                public final void invoke(Object obj) {
                    hi1.b bVar = (hi1.b) obj;
                    bVar.a(z, i);
                }
            });
            as0Var.a();
        }

        @Override
        public final void a(String str, long j, long j2) {
            r60.this.p.a(str, j, j2);
        }

        @Override
        public final void a(String str) {
            r60.this.p.a(str);
        }

        @Override
        public final void a(int i, long j) {
            r60.this.p.a(i, j);
        }

        @Override
        public final void a(final cg2 cg2Var) {
            r60.this.getClass();
            as0 as0Var = r60.this.j;
            as0Var.a(25, new as0.a() {
                @Override
                public final void invoke(Object obj) {
                    ((hi1.b) obj).a(cg2Var);
                }
            });
            as0Var.a();
        }

        @Override
        public final void a(Surface surface) {
            r60.this.a(surface);
        }
    }

    public static final class c implements se2, wn, ni1.b {

        @Nullable
        private se2 b;

        @Nullable
        private wn c;

        @Nullable
        private se2 d;

        @Nullable
        private wn e;

        @Override
        public final void a(int i, @Nullable Object obj) {
            if (i == 7) {
                this.b = (se2) obj;
                return;
            }
            if (i == 8) {
                this.c = (wn) obj;
                return;
            }
            if (i != 10000) {
                return;
            }
            q12 q12Var = (q12) obj;
            if (q12Var == null) {
                this.d = null;
                this.e = null;
            } else {
                this.d = q12Var.b();
                this.e = q12Var.a();
            }
        }

        @Override
        public final void f() {
            wn wnVar = this.e;
            if (wnVar != null) {
                wnVar.f();
            }
            wn wnVar2 = this.c;
            if (wnVar2 != null) {
                wnVar2.f();
            }
        }

        private c() {
        }

        @Override
        public final void a(long j, float[] fArr) {
            wn wnVar = this.e;
            if (wnVar != null) {
                wnVar.a(j, fArr);
            }
            wn wnVar2 = this.c;
            if (wnVar2 != null) {
                wnVar2.a(j, fArr);
            }
        }

        @Override
        public final void a(long j, long j2, jc0 jc0Var, @Nullable MediaFormat mediaFormat) {
            se2 se2Var = this.d;
            if (se2Var != null) {
                se2Var.a(j, j2, jc0Var, mediaFormat);
            }
            se2 se2Var2 = this.b;
            if (se2Var2 != null) {
                se2Var2.a(j, j2, jc0Var, mediaFormat);
            }
        }
    }

    public static final class d implements xw0 {
        private final Object a;
        private i52 b;

        public d(i52 i52Var, Object obj) {
            this.a = obj;
            this.b = i52Var;
        }

        @Override
        public final i52 b() {
            return this.b;
        }

        @Override
        public final Object a() {
            return this.a;
        }
    }

    static {
        u60.a("goog.exo.exoplayer");
    }

    @SuppressLint({"HandlerLeak"})
    public r60(n60.b bVar) {
        ir irVar = new ir();
        this.d = irVar;
        try {
            et0.c("ExoPlayerImpl", "Init " + Integer.toHexString(System.identityHashCode(this)) + " [ExoPlayerLib/2.18.1] [" + f92.e + "]");
            Context applicationContext = bVar.a.getApplicationContext();
            ed edVarApply = bVar.h.apply(bVar.b);
            this.p = edVarApply;
            ph phVar = bVar.j;
            this.P = phVar;
            this.L = bVar.k;
            this.R = false;
            this.z = bVar.p;
            b bVar2 = new b();
            this.t = bVar2;
            Object cVar = new c();
            Handler handler = new Handler(bVar.i);
            yo1[] yo1VarArrA = bVar.c.get().a(handler, bVar2, bVar2, bVar2, bVar2);
            this.f = yo1VarArrA;
            hg.b(yo1VarArrA.length > 0);
            f62 f62Var = bVar.e.get();
            this.g = f62Var;
            this.o = bVar.d.get();
            wi wiVar = bVar.g.get();
            this.r = wiVar;
            this.n = bVar.l;
            fx1 fx1Var = bVar.m;
            Looper looper = bVar.i;
            this.q = looper;
            y32 y32Var = bVar.b;
            this.s = y32Var;
            this.e = this;
            this.j = new as0<>(looper, y32Var, new as0.b() {
                @Override
                public final void a(Object obj, bc0 bc0Var) {
                    this.a.a((hi1.b) obj, bc0Var);
                }
            });
            this.k = new CopyOnWriteArraySet<>();
            this.m = new ArrayList();
            this.E = new iy1.a();
            g62 g62Var = new g62(new ap1[yo1VarArrA.length], new h70[yo1VarArrA.length], b72.c, null);
            this.b = g62Var;
            this.l = new i52.b();
            hi1.a aVarA = new hi1.a.C0316a().a(1, 2, 3, 13, 14, 15, 16, 17, 18, 19, 31, 20, 30, 21, 22, 23, 24, 25, 26, 27, 28).a(f62Var.c(), 29).a();
            this.c = aVarA;
            this.F = new hi1.a.C0316a().a(aVarA).a(4).a(10).a();
            this.h = y32Var.a(looper, null);
            t60.e eVar = new t60.e() {
                @Override
                public final void a(t60.d dVar) {
                    this.a.b(dVar);
                }
            };
            this.W = zh1.a(g62Var);
            edVarApply.a(this, looper);
            int i = f92.a;
            this.i = new t60(yo1VarArrA, f62Var, g62Var, bVar.f.get(), wiVar, 0, edVarApply, fx1Var, bVar.n, bVar.o, looper, y32Var, eVar, i < 31 ? new mi1() : a.a(applicationContext, this, bVar.q));
            this.Q = 1.0f;
            mw0 mw0Var = mw0.H;
            this.G = mw0Var;
            this.V = mw0Var;
            this.X = -1;
            if (i < 21) {
                this.O = f();
            } else {
                this.O = f92.a(applicationContext);
            }
            int i2 = jv.b;
            this.S = true;
            b(edVarApply);
            wiVar.a(new Handler(looper), edVarApply);
            a(bVar2);
            qh qhVar = new qh(bVar.a, handler, bVar2);
            this.u = qhVar;
            qhVar.a();
            th thVar = new th(bVar.a, handler, bVar2);
            this.v = thVar;
            thVar.d();
            a32 a32Var = new a32(bVar.a, handler, bVar2);
            this.w = a32Var;
            a32Var.a(f92.c(phVar.d));
            ij2 ij2Var = new ij2(bVar.a);
            this.x = ij2Var;
            ij2Var.a();
            hk2 hk2Var = new hk2(bVar.a);
            this.y = hk2Var;
            hk2Var.a();
            this.U = a(a32Var);
            int i3 = cg2.f;
            f62Var.a(this.P);
            a(1, 10, Integer.valueOf(this.O));
            a(2, 10, Integer.valueOf(this.O));
            a(1, 3, this.P);
            a(2, 4, Integer.valueOf(this.L));
            a(2, 5, (Object) 0);
            a(1, 9, Boolean.valueOf(this.R));
            a(2, 7, cVar);
            a(6, 8, cVar);
            irVar.e();
        } catch (Throwable th) {
            this.d.e();
            throw th;
        }
    }

    private int c() {
        if (this.W.a.c()) {
            return this.X;
        }
        zh1 zh1Var = this.W;
        return zh1Var.a.a(zh1Var.b.a, this.l).d;
    }

    public static void g(zh1 zh1Var, hi1.b bVar) {
        bVar.onPlaybackSuppressionReasonChanged(zh1Var.m);
    }

    public static void h(zh1 zh1Var, hi1.b bVar) {
        bVar.onIsPlayingChanged(zh1Var.e == 3 && zh1Var.l && zh1Var.m == 0);
    }

    public static void i(zh1 zh1Var, hi1.b bVar) {
        bVar.a(zh1Var.n);
    }

    public final void a(n60.a aVar) {
        this.k.add(aVar);
    }

    @Override
    public final void b(hi1.b bVar) {
        bVar.getClass();
        this.j.a(bVar);
    }

    public final void d() {
        j();
    }

    @Override
    public final long getContentPosition() {
        j();
        j();
        if (!this.W.b.a()) {
            j();
            return f92.b(a(this.W));
        }
        zh1 zh1Var = this.W;
        zh1Var.a.a(zh1Var.b.a, this.l);
        zh1 zh1Var2 = this.W;
        return zh1Var2.c == C.TIME_UNSET ? f92.b(zh1Var2.a.a(getCurrentMediaItemIndex(), this.a, 0L).n) : f92.b(this.l.f) + f92.b(this.W.c);
    }

    @Override
    public final int getCurrentAdGroupIndex() {
        j();
        j();
        if (this.W.b.a()) {
            return this.W.b.b;
        }
        return -1;
    }

    @Override
    public final int getCurrentAdIndexInAdGroup() {
        j();
        j();
        if (this.W.b.a()) {
            return this.W.b.c;
        }
        return -1;
    }

    @Override
    public final int getCurrentMediaItemIndex() {
        j();
        int iC = c();
        if (iC == -1) {
            return 0;
        }
        return iC;
    }

    @Override
    public final int getCurrentPeriodIndex() {
        j();
        if (this.W.a.c()) {
            return 0;
        }
        zh1 zh1Var = this.W;
        return zh1Var.a.a(zh1Var.b.a);
    }

    @Override
    public final long getCurrentPosition() {
        j();
        return f92.b(a(this.W));
    }

    @Override
    public final i52 getCurrentTimeline() {
        j();
        return this.W.a;
    }

    @Override
    public final b72 getCurrentTracks() {
        j();
        return this.W.i.d;
    }

    @Override
    public final long getDuration() {
        j();
        j();
        if (!this.W.b.a()) {
            j();
            i52 i52Var = this.W.a;
            return i52Var.c() ? C.TIME_UNSET : f92.b(i52Var.a(getCurrentMediaItemIndex(), this.a, 0L).o);
        }
        zh1 zh1Var = this.W;
        vw0.b bVar = zh1Var.b;
        zh1Var.a.a(bVar.a, this.l);
        return f92.b(this.l.a(bVar.b, bVar.c));
    }

    @Override
    public final boolean getPlayWhenReady() {
        j();
        return this.W.l;
    }

    @Override
    public final int getPlaybackState() {
        j();
        return this.W.e;
    }

    @Override
    public final int getPlaybackSuppressionReason() {
        j();
        return this.W.m;
    }

    @Override
    public final long getTotalBufferedDuration() {
        j();
        return f92.b(this.W.q);
    }

    @Override
    public final float getVolume() {
        j();
        return this.Q;
    }

    @Override
    public final boolean isPlayingAd() {
        j();
        return this.W.b.a();
    }

    @Override
    public final void prepare() {
        j();
        j();
        boolean z = this.W.l;
        int iA = this.v.a(z, 2);
        a(iA, (!z || iA == 1) ? 1 : 2, z);
        zh1 zh1Var = this.W;
        if (zh1Var.e != 1) {
            return;
        }
        zh1 zh1VarA = zh1Var.a((m60) null);
        zh1 zh1VarA2 = zh1VarA.a(zh1VarA.a.c() ? 4 : 2);
        this.A++;
        this.i.i();
        a(zh1VarA2, 1, 1, false, 5, C.TIME_UNSET);
    }

    @Override
    public final void release() {
        AudioTrack audioTrack;
        et0.c("ExoPlayerImpl", "Release " + Integer.toHexString(System.identityHashCode(this)) + " [ExoPlayerLib/2.18.1] [" + f92.e + "] [" + u60.a() + "]");
        j();
        if (f92.a < 21 && (audioTrack = this.H) != null) {
            audioTrack.release();
            this.H = null;
        }
        this.u.a();
        this.w.c();
        this.x.a(false);
        this.y.a(false);
        this.v.c();
        if (!this.i.k()) {
            as0<hi1.b> as0Var = this.j;
            as0Var.a(10, new as0.a() {
                @Override
                public final void invoke(Object obj) {
                    r60.c((hi1.b) obj);
                }
            });
            as0Var.a();
        }
        this.j.b();
        this.h.a();
        this.r.a(this.p);
        zh1 zh1VarA = this.W.a(1);
        this.W = zh1VarA;
        zh1 zh1VarA2 = zh1VarA.a(zh1VarA.b);
        this.W = zh1VarA2;
        zh1VarA2.p = zh1VarA2.r;
        this.W.q = 0L;
        this.p.release();
        this.g.d();
        g();
        Surface surface = this.J;
        if (surface != null) {
            surface.release();
            this.J = null;
        }
        int i = jv.b;
    }

    @Override
    public final void setPlayWhenReady(boolean z) {
        j();
        th thVar = this.v;
        j();
        int iA = thVar.a(z, this.W.e);
        int i = 1;
        if (z && iA != 1) {
            i = 2;
        }
        a(iA, i, z);
    }

    @Override
    public final void setVideoTextureView(@Nullable TextureView textureView) {
        j();
        if (textureView == null) {
            j();
            g();
            a((Surface) null);
            a(0, 0);
            return;
        }
        g();
        this.K = textureView;
        if (textureView.getSurfaceTextureListener() != null) {
            et0.d("ExoPlayerImpl", "Replacing existing SurfaceTextureListener.");
        }
        textureView.setSurfaceTextureListener(this.t);
        SurfaceTexture surfaceTexture = textureView.isAvailable() ? textureView.getSurfaceTexture() : null;
        if (surfaceTexture == null) {
            a((Surface) null);
            a(0, 0);
        } else {
            Surface surface = new Surface(surfaceTexture);
            a(surface);
            this.J = surface;
            a(textureView.getWidth(), textureView.getHeight());
        }
    }

    @Override
    public final void setVolume(float f) {
        j();
        int i = f92.a;
        final float fMax = Math.max(0.0f, Math.min(f, 1.0f));
        if (this.Q == fMax) {
            return;
        }
        this.Q = fMax;
        a(1, 2, Float.valueOf(this.v.b() * fMax));
        as0<hi1.b> as0Var = this.j;
        as0Var.a(22, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ((hi1.b) obj).onVolumeChanged(fMax);
            }
        });
        as0Var.a();
    }

    @Override
    public final void stop() {
        j();
        j();
        th thVar = this.v;
        j();
        thVar.a(this.W.l, 1);
        a((m60) null);
        int i = jv.b;
    }

    private long a(zh1 zh1Var) {
        if (zh1Var.a.c()) {
            return f92.a(this.Y);
        }
        if (zh1Var.b.a()) {
            return zh1Var.r;
        }
        i52 i52Var = zh1Var.a;
        vw0.b bVar = zh1Var.b;
        long j = zh1Var.r;
        i52Var.a(bVar.a, this.l);
        return j + this.l.f;
    }

    public void d(hi1.b bVar) {
        bVar.a(this.F);
    }

    private int f() {
        AudioTrack audioTrack = this.H;
        if (audioTrack != null && audioTrack.getAudioSessionId() != 0) {
            this.H.release();
            this.H = null;
        }
        if (this.H == null) {
            this.H = new AudioTrack(3, FlacTagCreator.DEFAULT_PADDING, 4, 2, 2, 0, 0);
        }
        return this.H.getAudioSessionId();
    }

    private void g() {
        TextureView textureView = this.K;
        if (textureView != null) {
            if (textureView.getSurfaceTextureListener() != this.t) {
                et0.d("ExoPlayerImpl", "SurfaceTextureListener already unset or replaced.");
            } else {
                this.K.setSurfaceTextureListener(null);
            }
            this.K = null;
        }
    }

    public void i() {
        j();
        int i = this.W.e;
        if (i != 1) {
            if (i == 2 || i == 3) {
                j();
                boolean z = this.W.o;
                ij2 ij2Var = this.x;
                j();
                ij2Var.a(this.W.l && !z);
                hk2 hk2Var = this.y;
                j();
                hk2Var.a(this.W.l);
                return;
            }
            if (i != 4) {
                throw new IllegalStateException();
            }
        }
        this.x.a(false);
        this.y.a(false);
    }

    public void j() {
        this.d.b();
        if (Thread.currentThread() != this.q.getThread()) {
            String name = Thread.currentThread().getName();
            String name2 = this.q.getThread().getName();
            int i = f92.a;
            Locale locale = Locale.US;
            String str = "Player is accessed on the wrong thread.\nCurrent thread: '" + name + "'\nExpected thread: '" + name2 + "'\nSee https://exoplayer.dev/issues/player-accessed-on-wrong-thread";
            if (this.S) {
                throw new IllegalStateException(str);
            }
            et0.b("ExoPlayerImpl", str, this.T ? null : new IllegalStateException());
            this.T = true;
        }
    }

    public final void e() {
        j();
    }

    private static long b(zh1 zh1Var) {
        i52.d dVar = new i52.d();
        i52.b bVar = new i52.b();
        zh1Var.a.a(zh1Var.b.a, bVar);
        long j = zh1Var.c;
        if (j == C.TIME_UNSET) {
            return zh1Var.a.a(bVar.d, dVar, 0L).n;
        }
        return bVar.f + j;
    }

    public static void d(zh1 zh1Var, hi1.b bVar) {
        boolean z = zh1Var.g;
        bVar.getClass();
        bVar.onIsLoadingChanged(zh1Var.g);
    }

    public static void e(zh1 zh1Var, hi1.b bVar) {
        bVar.onPlayerStateChanged(zh1Var.l, zh1Var.e);
    }

    private void h() {
        hi1.a aVar = this.F;
        hi1 hi1Var = this.e;
        hi1.a aVar2 = this.c;
        int i = f92.a;
        boolean zIsPlayingAd = hi1Var.isPlayingAd();
        boolean zIsCurrentMediaItemSeekable = hi1Var.isCurrentMediaItemSeekable();
        boolean zHasPreviousMediaItem = hi1Var.hasPreviousMediaItem();
        boolean zHasNextMediaItem = hi1Var.hasNextMediaItem();
        boolean zIsCurrentMediaItemLive = hi1Var.isCurrentMediaItemLive();
        boolean zIsCurrentMediaItemDynamic = hi1Var.isCurrentMediaItemDynamic();
        boolean zC = hi1Var.getCurrentTimeline().c();
        boolean z = !zIsPlayingAd;
        hi1.a aVarA = new hi1.a.C0316a().a(aVar2).a(z, 4).a(zIsCurrentMediaItemSeekable && !zIsPlayingAd, 5).a(zHasPreviousMediaItem && !zIsPlayingAd, 6).a(!zC && (zHasPreviousMediaItem || !zIsCurrentMediaItemLive || zIsCurrentMediaItemSeekable) && !zIsPlayingAd, 7).a(zHasNextMediaItem && !zIsPlayingAd, 8).a(!zC && (zHasNextMediaItem || (zIsCurrentMediaItemLive && zIsCurrentMediaItemDynamic)) && !zIsPlayingAd, 9).a(z, 10).a(zIsCurrentMediaItemSeekable && !zIsPlayingAd, 11).a(zIsCurrentMediaItemSeekable && !zIsPlayingAd, 12).a();
        this.F = aVarA;
        if (aVarA.equals(aVar)) {
            return;
        }
        this.j.a(13, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                this.a.d((hi1.b) obj);
            }
        });
    }

    public static void c(hi1.b bVar) {
        bVar.b(m60.a(new g70(1), 1003));
    }

    public static void c(zh1 zh1Var, hi1.b bVar) {
        bVar.a(zh1Var.i.d);
    }

    public static void f(zh1 zh1Var, hi1.b bVar) {
        bVar.onPlaybackStateChanged(zh1Var.e);
    }

    @Override
    @Nullable
    public final m60 a() {
        j();
        return this.W.f;
    }

    public void b(final t60.d dVar) {
        this.h.a(new Runnable() {
            @Override
            public final void run() {
                this.b.a(dVar);
            }
        });
    }

    public static void b(zh1 zh1Var, hi1.b bVar) {
        bVar.b(zh1Var.f);
    }

    public void a(hi1.b bVar, bc0 bc0Var) {
        bVar.getClass();
    }

    public static void b(zh1 zh1Var, int i, hi1.b bVar) {
        bVar.onPlayWhenReadyChanged(zh1Var.l, i);
    }

    public void a(t60.d dVar) {
        boolean z;
        int i = this.A - dVar.c;
        this.A = i;
        boolean z2 = true;
        if (dVar.d) {
            this.B = dVar.e;
            this.C = true;
        }
        if (dVar.f) {
            this.D = dVar.g;
        }
        if (i == 0) {
            i52 i52Var = dVar.b.a;
            if (!this.W.a.c() && i52Var.c()) {
                this.X = -1;
                this.Y = 0L;
            }
            if (!i52Var.c()) {
                List<i52> listD = ((ij1) i52Var).d();
                if (listD.size() == this.m.size()) {
                    for (int i2 = 0; i2 < listD.size(); i2++) {
                        ((d) this.m.get(i2)).b = listD.get(i2);
                    }
                } else {
                    throw new IllegalStateException();
                }
            }
            boolean z3 = this.C;
            long j = C.TIME_UNSET;
            if (z3) {
                if (dVar.b.b.equals(this.W.b) && dVar.b.d == this.W.r) {
                    z2 = false;
                }
                if (z2) {
                    if (!i52Var.c() && !dVar.b.b.a()) {
                        zh1 zh1Var = dVar.b;
                        vw0.b bVar = zh1Var.b;
                        long j2 = zh1Var.d;
                        i52Var.a(bVar.a, this.l);
                        j = j2 + this.l.f;
                    } else {
                        j = dVar.b.d;
                    }
                }
                z = z2;
            } else {
                z = false;
            }
            long j3 = j;
            this.C = false;
            a(dVar.b, 1, this.D, z, this.B, j3);
        }
    }

    public static void a(zh1 zh1Var, int i, hi1.b bVar) {
        i52 i52Var = zh1Var.a;
        bVar.a(i);
    }

    public static void a(int i, hi1.c cVar, hi1.c cVar2, hi1.b bVar) {
        bVar.getClass();
        bVar.a(cVar, cVar2, i);
    }

    public static void a(zh1 zh1Var, hi1.b bVar) {
        bVar.a(zh1Var.f);
    }

    private zh1 a(zh1 zh1Var, i52 i52Var, @Nullable Pair<Object, Long> pair) {
        long jA;
        if (!i52Var.c() && pair == null) {
            throw new IllegalArgumentException();
        }
        i52 i52Var2 = zh1Var.a;
        zh1 zh1VarA = zh1Var.a(i52Var);
        if (i52Var.c()) {
            vw0.b bVarA = zh1.a();
            long jA2 = f92.a(this.Y);
            zh1 zh1VarA2 = zh1VarA.a(bVarA, jA2, jA2, jA2, 0L, z52.e, this.b, kk0.h()).a(bVarA);
            zh1VarA2.p = zh1VarA2.r;
            return zh1VarA2;
        }
        Object obj = zh1VarA.b.a;
        int i = f92.a;
        boolean zEquals = obj.equals(pair.first);
        vw0.b bVar = !zEquals ? new vw0.b(pair.first) : zh1VarA.b;
        long jLongValue = ((Long) pair.second).longValue();
        long jA3 = f92.a(getContentPosition());
        if (!i52Var2.c()) {
            jA3 -= i52Var2.a(obj, this.l).f;
        }
        if (!zEquals || jLongValue < jA3) {
            if (!bVar.a()) {
                zh1 zh1VarA3 = zh1VarA.a(bVar, jLongValue, jLongValue, jLongValue, 0L, !zEquals ? z52.e : zh1VarA.h, !zEquals ? this.b : zh1VarA.i, !zEquals ? kk0.h() : zh1VarA.j).a(bVar);
                zh1VarA3.p = jLongValue;
                return zh1VarA3;
            }
            throw new IllegalStateException();
        }
        if (jLongValue == jA3) {
            int iA = i52Var.a(zh1VarA.k.a);
            if (iA != -1 && i52Var.a(iA, this.l, false).d == i52Var.a(bVar.a, this.l).d) {
                return zh1VarA;
            }
            i52Var.a(bVar.a, this.l);
            if (bVar.a()) {
                jA = this.l.a(bVar.b, bVar.c);
            } else {
                jA = this.l.e;
            }
            zh1 zh1VarA4 = zh1VarA.a(bVar, zh1VarA.r, zh1VarA.r, zh1VarA.d, jA - zh1VarA.r, zh1VarA.h, zh1VarA.i, zh1VarA.j).a(bVar);
            zh1VarA4.p = jA;
            return zh1VarA4;
        }
        if (!bVar.a()) {
            long jMax = Math.max(0L, zh1VarA.q - (jLongValue - jA3));
            long j = zh1VarA.p;
            if (zh1VarA.k.equals(zh1VarA.b)) {
                j = jLongValue + jMax;
            }
            zh1 zh1VarA5 = zh1VarA.a(bVar, jLongValue, jLongValue, jLongValue, jMax, zh1VarA.h, zh1VarA.i, zh1VarA.j);
            zh1VarA5.p = j;
            return zh1VarA5;
        }
        throw new IllegalStateException();
    }

    @Nullable
    private Pair<Object, Long> a(i52 i52Var, int i, long j) {
        if (i52Var.c()) {
            this.X = i;
            if (j == C.TIME_UNSET) {
                j = 0;
            }
            this.Y = j;
            return null;
        }
        if (i == -1 || i >= i52Var.b()) {
            i = i52Var.a(false);
            j = f92.b(i52Var.a(i, this.a, 0L).n);
        }
        return i52Var.a(this.a, this.l, i, f92.a(j));
    }

    public void a(final int i, final int i2) {
        if (i == this.M && i2 == this.N) {
            return;
        }
        this.M = i;
        this.N = i2;
        as0<hi1.b> as0Var = this.j;
        as0Var.a(24, new as0.a() {
            @Override
            public final void invoke(Object obj) {
                ((hi1.b) obj).onSurfaceSizeChanged(i, i2);
            }
        });
        as0Var.a();
    }

    @Override
    public final void a(hi1.b bVar) {
        bVar.getClass();
        this.j.b(bVar);
    }

    public void a(int i, int i2, @Nullable Object obj) {
        for (yo1 yo1Var : this.f) {
            if (yo1Var.m() == i) {
                int iC = c();
                t60 t60Var = this.i;
                new ni1(t60Var, yo1Var, this.W.a, iC == -1 ? 0 : iC, this.s, t60Var.d()).a(i2).a(obj).e();
            }
        }
    }

    @Override
    public final void a(gm1 gm1Var) {
        j();
        List listSingletonList = Collections.singletonList(gm1Var);
        j();
        j();
        c();
        j();
        a(this.W);
        int i = f92.a;
        this.A++;
        if (!this.m.isEmpty()) {
            int size = this.m.size();
            for (int i2 = size - 1; i2 >= 0; i2--) {
                this.m.remove(i2);
            }
            this.E = this.E.c(size);
        }
        ArrayList arrayList = new ArrayList();
        for (int i3 = 0; i3 < listSingletonList.size(); i3++) {
            yw0.c cVar = new yw0.c((vw0) listSingletonList.get(i3), this.n);
            arrayList.add(cVar);
            this.m.add(i3, new d(cVar.a.f(), cVar.b));
        }
        this.E = this.E.b(arrayList.size());
        ij1 ij1Var = new ij1(this.m, this.E);
        if (!ij1Var.c() && -1 >= ij1Var.b()) {
            throw new dj0();
        }
        int iA = ij1Var.a(false);
        zh1 zh1VarA = a(this.W, ij1Var, a(ij1Var, iA, C.TIME_UNSET));
        int i4 = zh1VarA.e;
        if (iA != -1 && i4 != 1) {
            i4 = (ij1Var.c() || iA >= ij1Var.b()) ? 4 : 2;
        }
        zh1 zh1VarA2 = zh1VarA.a(i4);
        this.i.a(iA, f92.a(C.TIME_UNSET), this.E, arrayList);
        a(zh1VarA2, 0, 1, (this.W.b.a.equals(zh1VarA2.b.a) || this.W.a.c()) ? false : true, 4, a(zh1VarA2));
    }

    public void a(SurfaceTexture surfaceTexture) {
        Surface surface = new Surface(surfaceTexture);
        a(surface);
        this.J = surface;
    }

    public void a(@Nullable Surface surface) {
        ArrayList arrayList = new ArrayList();
        boolean z = false;
        for (yo1 yo1Var : this.f) {
            if (yo1Var.m() == 2) {
                int iC = c();
                t60 t60Var = this.i;
                arrayList.add(new ni1(t60Var, yo1Var, this.W.a, iC == -1 ? 0 : iC, this.s, t60Var.d()).a(1).a(surface).e());
            }
        }
        Object obj = this.I;
        if (obj != null && obj != surface) {
            try {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((ni1) it.next()).a(this.z);
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            } catch (TimeoutException unused2) {
                z = true;
            }
            Object obj2 = this.I;
            Surface surface2 = this.J;
            if (obj2 == surface2) {
                surface2.release();
                this.J = null;
            }
        }
        this.I = surface;
        if (z) {
            a(m60.a(new g70(3), 1003));
        }
    }

    private void a(@Nullable m60 m60Var) {
        zh1 zh1Var = this.W;
        zh1 zh1VarA = zh1Var.a(zh1Var.b);
        zh1VarA.p = zh1VarA.r;
        zh1VarA.q = 0L;
        zh1 zh1VarA2 = zh1VarA.a(1);
        if (m60Var != null) {
            zh1VarA2 = zh1VarA2.a(m60Var);
        }
        zh1 zh1Var2 = zh1VarA2;
        this.A++;
        this.i.p();
        a(zh1Var2, 0, 1, zh1Var2.a.c() && !this.W.a.c(), 4, a(zh1Var2));
    }

    public void a(int i, int i2, boolean z) {
        int i3 = 0;
        boolean z2 = z && i != -1;
        if (z2 && i != 1) {
            i3 = 1;
        }
        zh1 zh1Var = this.W;
        if (zh1Var.l == z2 && zh1Var.m == i3) {
            return;
        }
        this.A++;
        zh1 zh1Var2 = new zh1(zh1Var.a, zh1Var.b, zh1Var.c, zh1Var.d, zh1Var.e, zh1Var.f, zh1Var.g, zh1Var.h, zh1Var.i, zh1Var.j, zh1Var.k, z2, i3, zh1Var.n, zh1Var.p, zh1Var.q, zh1Var.r, zh1Var.o);
        this.i.a(z2, i3);
        a(zh1Var2, 0, i2, false, 5, C.TIME_UNSET);
    }

    private void a(final zh1 zh1Var, final int i, final int i2, boolean z, final int i3, long j) {
        Pair pair;
        int i4;
        final jw0 jw0Var;
        boolean z2;
        Object obj;
        int i5;
        jw0 jw0Var2;
        Object obj2;
        int i6;
        long j2;
        long j3;
        long jB;
        long jB2;
        Object obj3;
        jw0 jw0Var3;
        Object obj4;
        int iA;
        zh1 zh1Var2 = this.W;
        this.W = zh1Var;
        boolean zEquals = zh1Var2.a.equals(zh1Var.a);
        i52 i52Var = zh1Var2.a;
        i52 i52Var2 = zh1Var.a;
        if (i52Var2.c() && i52Var.c()) {
            pair = new Pair(Boolean.FALSE, -1);
        } else if (i52Var2.c() != i52Var.c()) {
            pair = new Pair(Boolean.TRUE, 3);
        } else if (!i52Var.a(i52Var.a(zh1Var2.b.a, this.l).d, this.a, 0L).b.equals(i52Var2.a(i52Var2.a(zh1Var.b.a, this.l).d, this.a, 0L).b)) {
            if (z && i3 == 0) {
                i4 = 1;
            } else if (z && i3 == 1) {
                i4 = 2;
            } else {
                if (zEquals) {
                    throw new IllegalStateException();
                }
                i4 = 3;
            }
            pair = new Pair(Boolean.TRUE, Integer.valueOf(i4));
        } else if (z && i3 == 0 && zh1Var2.b.d < zh1Var.b.d) {
            pair = new Pair(Boolean.TRUE, 0);
        } else {
            pair = new Pair(Boolean.FALSE, -1);
        }
        boolean zBooleanValue = ((Boolean) pair.first).booleanValue();
        final int iIntValue = ((Integer) pair.second).intValue();
        mw0 mw0VarA = this.G;
        if (zBooleanValue) {
            jw0Var = zh1Var.a.c() ? null : zh1Var.a.a(zh1Var.a.a(zh1Var.b.a, this.l).d, this.a, 0L).d;
            this.V = mw0.H;
        } else {
            jw0Var = null;
        }
        if (zBooleanValue || !zh1Var2.j.equals(zh1Var.j)) {
            mw0.a aVarA = this.V.a();
            List<k01> list = zh1Var.j;
            for (int i7 = 0; i7 < list.size(); i7++) {
                k01 k01Var = list.get(i7);
                for (int i8 = 0; i8 < k01Var.c(); i8++) {
                    k01Var.a(i8).a(aVarA);
                }
            }
            this.V = aVarA.a();
            j();
            i52 i52Var3 = this.W.a;
            if (i52Var3.c()) {
                mw0VarA = this.V;
            } else {
                mw0VarA = this.V.a().a(i52Var3.a(getCurrentMediaItemIndex(), this.a, 0L).d.e).a();
            }
        }
        boolean zEquals2 = mw0VarA.equals(this.G);
        this.G = mw0VarA;
        boolean z3 = zh1Var2.l != zh1Var.l;
        boolean z4 = zh1Var2.e != zh1Var.e;
        if (z4 || z3) {
            i();
        }
        boolean z5 = zh1Var2.g != zh1Var.g;
        if (!zh1Var2.a.equals(zh1Var.a)) {
            this.j.a(0, new as0.a() {
                @Override
                public final void invoke(Object obj5) {
                    r60.a(zh1Var, i, (hi1.b) obj5);
                }
            });
        }
        if (z) {
            i52.b bVar = new i52.b();
            if (zh1Var2.a.c()) {
                obj = null;
                i5 = -1;
                jw0Var2 = null;
                obj2 = null;
                i6 = -1;
            } else {
                Object obj5 = zh1Var2.b.a;
                zh1Var2.a.a(obj5, bVar);
                int i9 = bVar.d;
                int iA2 = zh1Var2.a.a(obj5);
                obj2 = obj5;
                obj = zh1Var2.a.a(i9, this.a, 0L).b;
                jw0Var2 = this.a.d;
                i5 = i9;
                i6 = iA2;
            }
            if (i3 == 0) {
                if (zh1Var2.b.a()) {
                    vw0.b bVar2 = zh1Var2.b;
                    jB = bVar.a(bVar2.b, bVar2.c);
                    jB2 = b(zh1Var2);
                } else {
                    if (zh1Var2.b.e != -1) {
                        jB = b(this.W);
                    } else {
                        j2 = bVar.f;
                        j3 = bVar.e;
                        jB = j2 + j3;
                    }
                    jB2 = jB;
                }
            } else if (zh1Var2.b.a()) {
                jB = zh1Var2.r;
                jB2 = b(zh1Var2);
            } else {
                j2 = bVar.f;
                j3 = zh1Var2.r;
                jB = j2 + j3;
                jB2 = jB;
            }
            long jB3 = f92.b(jB);
            long jB4 = f92.b(jB2);
            vw0.b bVar3 = zh1Var2.b;
            final hi1.c cVar = new hi1.c(obj, i5, jw0Var2, obj2, i6, jB3, jB4, bVar3.b, bVar3.c);
            int currentMediaItemIndex = getCurrentMediaItemIndex();
            if (this.W.a.c()) {
                obj3 = null;
                jw0Var3 = null;
                obj4 = null;
                iA = -1;
            } else {
                zh1 zh1Var3 = this.W;
                Object obj6 = zh1Var3.b.a;
                zh1Var3.a.a(obj6, this.l);
                iA = this.W.a.a(obj6);
                obj3 = this.W.a.a(currentMediaItemIndex, this.a, 0L).b;
                jw0Var3 = this.a.d;
                obj4 = obj6;
            }
            long jB5 = f92.b(j);
            long jB6 = this.W.b.a() ? f92.b(b(this.W)) : jB5;
            vw0.b bVar4 = this.W.b;
            final hi1.c cVar2 = new hi1.c(obj3, currentMediaItemIndex, jw0Var3, obj4, iA, jB5, jB6, bVar4.b, bVar4.c);
            this.j.a(11, new as0.a() {
                @Override
                public final void invoke(Object obj7) {
                    r60.a(i3, cVar, cVar2, (hi1.b) obj7);
                }
            });
        } else {
            zEquals2 = zEquals2;
            z4 = z4;
        }
        if (zBooleanValue) {
            as0<hi1.b> as0Var = this.j;
            as0.a<hi1.b> aVar = new as0.a() {
                @Override
                public final void invoke(Object obj7) {
                    ((hi1.b) obj7).a(jw0Var, iIntValue);
                }
            };
            z2 = true;
            as0Var.a(1, aVar);
        } else {
            z2 = true;
        }
        if (zh1Var2.f != zh1Var.f) {
            this.j.a(10, new as0.a() {
                @Override
                public final void invoke(Object obj7) {
                    r60.a(zh1Var, (hi1.b) obj7);
                }
            });
            if (zh1Var.f != null) {
                this.j.a(10, new as0.a() {
                    @Override
                    public final void invoke(Object obj7) {
                        r60.b(zh1Var, (hi1.b) obj7);
                    }
                });
            }
        }
        g62 g62Var = zh1Var2.i;
        g62 g62Var2 = zh1Var.i;
        if (g62Var != g62Var2) {
            this.g.a(g62Var2.e);
            this.j.a(2, new as0.a() {
                @Override
                public final void invoke(Object obj7) {
                    r60.c(zh1Var, (hi1.b) obj7);
                }
            });
        }
        if (!zEquals2) {
            final mw0 mw0Var = this.G;
            this.j.a(14, new as0.a() {
                @Override
                public final void invoke(Object obj7) {
                    ((hi1.b) obj7).a(mw0Var);
                }
            });
        }
        if (z5) {
            this.j.a(3, new as0.a() {
                @Override
                public final void invoke(Object obj7) {
                    r60.d(zh1Var, (hi1.b) obj7);
                }
            });
        }
        if (z4 || z3) {
            this.j.a(-1, new as0.a() {
                @Override
                public final void invoke(Object obj7) {
                    r60.e(zh1Var, (hi1.b) obj7);
                }
            });
        }
        if (z4) {
            this.j.a(4, new as0.a() {
                @Override
                public final void invoke(Object obj7) {
                    r60.f(zh1Var, (hi1.b) obj7);
                }
            });
        }
        if (z3) {
            this.j.a(5, new as0.a() {
                @Override
                public final void invoke(Object obj7) {
                    r60.b(zh1Var, i2, (hi1.b) obj7);
                }
            });
        }
        if (zh1Var2.m != zh1Var.m) {
            this.j.a(6, new as0.a() {
                @Override
                public final void invoke(Object obj7) {
                    r60.g(zh1Var, (hi1.b) obj7);
                }
            });
        }
        if (((zh1Var2.e == 3 && zh1Var2.l && zh1Var2.m == 0) ? z2 : false) != ((zh1Var.e == 3 && zh1Var.l && zh1Var.m == 0) ? z2 : false)) {
            this.j.a(7, new as0.a() {
                @Override
                public final void invoke(Object obj7) {
                    r60.h(zh1Var, (hi1.b) obj7);
                }
            });
        }
        if (!zh1Var2.n.equals(zh1Var.n)) {
            this.j.a(12, new as0.a() {
                @Override
                public final void invoke(Object obj7) {
                    r60.i(zh1Var, (hi1.b) obj7);
                }
            });
        }
        h();
        this.j.a();
        if (zh1Var2.o != zh1Var.o) {
            Iterator<n60.a> it = this.k.iterator();
            while (it.hasNext()) {
                it.next().a();
            }
        }
    }

    public static i10 a(a32 a32Var) {
        return new i10(0, a32Var.b(), a32Var.a());
    }
}
