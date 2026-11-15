package com.google.android.exoplayer2;

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
import androidx.media3.common.C;
import com.google.android.exoplayer2.i;
import com.google.android.exoplayer2.j;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.t;
import com.google.android.exoplayer2.video.spherical.SphericalGLSurfaceView;
import com.google.common.collect.ImmutableList;
import com.transsion.audiotagger.audio.flac.FlacTagCreator;
import defpackage.amc;
import defpackage.b88;
import defpackage.blb;
import defpackage.c6c;
import defpackage.eva;
import defpackage.ey0;
import defpackage.f7c;
import defpackage.fo6;
import defpackage.gn5;
import defpackage.ju1;
import defpackage.ka9;
import defpackage.kb;
import defpackage.kha;
import defpackage.le1;
import defpackage.lrb;
import defpackage.ls8;
import defpackage.lu1;
import defpackage.mi9;
import defpackage.ms8;
import defpackage.nb;
import defpackage.o70;
import defpackage.ogc;
import defpackage.om5;
import defpackage.op5;
import defpackage.pi3;
import defpackage.qi3;
import defpackage.qj6;
import defpackage.qm1;
import defpackage.rva;
import defpackage.sva;
import defpackage.ta8;
import defpackage.ubc;
import defpackage.wl6;
import defpackage.xn4;
import defpackage.xq0;
import defpackage.zb8;
import defpackage.zi;
import defpackage.zx3;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.TimeoutException;

public final class i extends com.google.android.exoplayer2.c implements ExoPlayer {
    public final com.google.android.exoplayer2.b A;
    public final y B;
    public final ogc C;
    public final amc D;
    public final long E;
    public int F;
    public boolean G;
    public int H;
    public int I;
    public boolean J;
    public int K;
    public ka9 L;
    public mi9 M;
    public boolean N;
    public t.b O;
    public o P;
    public o Q;
    public k R;
    public k S;
    public AudioTrack T;
    public Object U;
    public Surface V;
    public SurfaceHolder W;
    public SphericalGLSurfaceView X;
    public boolean Y;
    public TextureView Z;
    public int a0;
    public final sva b;
    public int b0;
    public final t.b c;
    public int c0;
    public final le1 d;
    public int d0;
    public final Context e;
    public ju1 e0;
    public final t f;
    public ju1 f0;
    public final w[] g;
    public int g0;
    public final rva h;
    public com.google.android.exoplayer2.audio.a h0;
    public final xn4 i;
    public float i0;
    public final j.f j;
    public boolean j0;
    public final j k;
    public qm1 k0;
    public final om5 l;
    public boolean l0;
    public final CopyOnWriteArraySet m;
    public boolean m0;
    public final a0.b n;
    public boolean n0;
    public final List o;
    public boolean o0;
    public final boolean p;
    public h p0;
    public final com.google.android.exoplayer2.source.i.a q;
    public f7c q0;
    public final kb r;
    public o r0;
    public final Looper s;
    public b88 s0;
    public final o70 t;
    public int t0;
    public final long u;
    public int u0;
    public final long v;
    public long v0;
    public final ey0 w;
    public final c x;
    public final d y;
    public final AudioBecomingNoisyManager z;

    public static final class b {
        @DoNotInline
        public static ta8 a(Context context, i iVar, boolean z) {
            qj6 qj6VarX0 = qj6.x0(context);
            if (qj6VarX0 == null) {
                op5.i("ExoPlayerImpl", "MediaMetricsService unavailable.");
                return new ta8(LogSessionId.LOG_SESSION_ID_NONE);
            }
            if (z) {
                iVar.f0(qj6VarX0);
            }
            return new ta8(qj6VarX0.E0());
        }
    }

    public final class c implements c6c, com.google.android.exoplayer2.audio.b, kha, fo6, SurfaceHolder.Callback, TextureView.SurfaceTextureListener, SphericalGLSurfaceView.b, com.google.android.exoplayer2.b.InterfaceC0077b, AudioBecomingNoisyManager.a, y.b, ExoPlayer.a {
        public c() {
        }

        @Override
        public void a(k kVar, lu1 lu1Var) {
            i.this.S = kVar;
            i.this.r.a(kVar, lu1Var);
        }

        @Override
        public void b(ju1 ju1Var) {
            i.this.e0 = ju1Var;
            i.this.r.b(ju1Var);
        }

        @Override
        public void c(ju1 ju1Var) {
            i.this.r.c(ju1Var);
            i.this.S = null;
            i.this.f0 = null;
        }

        @Override
        public void d(ju1 ju1Var) {
            i.this.f0 = ju1Var;
            i.this.r.d(ju1Var);
        }

        @Override
        public void e(ju1 ju1Var) {
            i.this.r.e(ju1Var);
            i.this.R = null;
            i.this.e0 = null;
        }

        @Override
        public void executePlayerCommand(int i) {
            boolean playWhenReady = i.this.getPlayWhenReady();
            i.this.m1(playWhenReady, i, i.t0(playWhenReady, i));
        }

        @Override
        public void f(k kVar, lu1 lu1Var) {
            i.this.R = kVar;
            i.this.r.f(kVar, lu1Var);
        }

        @Override
        public void g(boolean z) {
            i.this.p1();
        }

        @Override
        public void onAudioBecomingNoisy() {
            i.this.m1(false, -1, 3);
        }

        @Override
        public void onAudioCodecError(Exception exc) {
            i.this.r.onAudioCodecError(exc);
        }

        @Override
        public void onAudioDecoderInitialized(String str, long j, long j2) {
            i.this.r.onAudioDecoderInitialized(str, j, j2);
        }

        @Override
        public void onAudioDecoderReleased(String str) {
            i.this.r.onAudioDecoderReleased(str);
        }

        @Override
        public void onAudioPositionAdvancing(long j) {
            i.this.r.onAudioPositionAdvancing(j);
        }

        @Override
        public void onAudioSinkError(Exception exc) {
            i.this.r.onAudioSinkError(exc);
        }

        @Override
        public void onAudioUnderrun(int i, long j, long j2) {
            i.this.r.onAudioUnderrun(i, j, j2);
        }

        @Override
        public void onCues(final List list) {
            i.this.l.l(27, new om5.a() {
                @Override
                public final void invoke(Object obj) {
                    ((t.d) obj).onCues(list);
                }
            });
        }

        @Override
        public void onDroppedFrames(int i, long j) {
            i.this.r.onDroppedFrames(i, j);
        }

        @Override
        public void onMetadata(final Metadata metadata) {
            i iVar = i.this;
            iVar.r0 = iVar.r0.b().I(metadata).F();
            o oVarI0 = i.this.i0();
            if (!oVarI0.equals(i.this.P)) {
                i.this.P = oVarI0;
                i.this.l.i(14, new om5.a() {
                    @Override
                    public final void invoke(Object obj) {
                        this.a.t((t.d) obj);
                    }
                });
            }
            i.this.l.i(28, new om5.a() {
                @Override
                public final void invoke(Object obj) {
                    ((t.d) obj).onMetadata(metadata);
                }
            });
            i.this.l.f();
        }

        @Override
        public void onRenderedFirstFrame(Object obj, long j) {
            i.this.r.onRenderedFirstFrame(obj, j);
            if (i.this.U == obj) {
                i.this.l.l(26, new om5.a() {
                    @Override
                    public final void invoke(Object obj2) {
                        ((t.d) obj2).onRenderedFirstFrame();
                    }
                });
            }
        }

        @Override
        public void onSkipSilenceEnabledChanged(final boolean z) {
            if (i.this.j0 == z) {
                return;
            }
            i.this.j0 = z;
            i.this.l.l(23, new om5.a() {
                @Override
                public final void invoke(Object obj) {
                    ((t.d) obj).onSkipSilenceEnabledChanged(z);
                }
            });
        }

        @Override
        public void onStreamTypeChanged(int i) {
            final h hVarJ0 = i.j0(i.this.B);
            if (hVarJ0.equals(i.this.p0)) {
                return;
            }
            i.this.p0 = hVarJ0;
            i.this.l.l(29, new om5.a() {
                @Override
                public final void invoke(Object obj) {
                    ((t.d) obj).onDeviceInfoChanged(hVarJ0);
                }
            });
        }

        @Override
        public void onStreamVolumeChanged(final int i, final boolean z) {
            i.this.l.l(30, new om5.a() {
                @Override
                public final void invoke(Object obj) {
                    ((t.d) obj).onDeviceVolumeChanged(i, z);
                }
            });
        }

        @Override
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
            i.this.h1(surfaceTexture);
            i.this.X0(i, i2);
        }

        @Override
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            i.this.i1(null);
            i.this.X0(0, 0);
            return true;
        }

        @Override
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
            i.this.X0(i, i2);
        }

        @Override
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }

        @Override
        public void onVideoCodecError(Exception exc) {
            i.this.r.onVideoCodecError(exc);
        }

        @Override
        public void onVideoDecoderInitialized(String str, long j, long j2) {
            i.this.r.onVideoDecoderInitialized(str, j, j2);
        }

        @Override
        public void onVideoDecoderReleased(String str) {
            i.this.r.onVideoDecoderReleased(str);
        }

        @Override
        public void onVideoFrameProcessingOffset(long j, int i) {
            i.this.r.onVideoFrameProcessingOffset(j, i);
        }

        @Override
        public void onVideoSizeChanged(final f7c f7cVar) {
            i.this.q0 = f7cVar;
            i.this.l.l(25, new om5.a() {
                @Override
                public final void invoke(Object obj) {
                    ((t.d) obj).onVideoSizeChanged(f7cVar);
                }
            });
        }

        @Override
        public void onVideoSurfaceCreated(Surface surface) {
            i.this.i1(surface);
        }

        @Override
        public void onVideoSurfaceDestroyed(Surface surface) {
            i.this.i1(null);
        }

        @Override
        public void setVolumeMultiplier(float f) {
            i.this.d1();
        }

        @Override
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
            i.this.X0(i2, i3);
        }

        @Override
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            if (i.this.Y) {
                i.this.i1(surfaceHolder.getSurface());
            }
        }

        @Override
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            if (i.this.Y) {
                i.this.i1(null);
            }
            i.this.X0(0, 0);
        }

        public final void t(t.d dVar) {
            dVar.onMediaMetadataChanged(i.this.P);
        }

        @Override
        public void onCues(final qm1 qm1Var) {
            i.this.k0 = qm1Var;
            i.this.l.l(27, new om5.a() {
                @Override
                public final void invoke(Object obj) {
                    ((t.d) obj).onCues(qm1Var);
                }
            });
        }
    }

    public static final class d implements lrb, xq0, u.b {
        public lrb b;
        public xq0 c;
        public lrb d;
        public xq0 e;

        public d() {
        }

        @Override
        public void a(long j, long j2, k kVar, MediaFormat mediaFormat) {
            lrb lrbVar = this.d;
            if (lrbVar != null) {
                lrbVar.a(j, j2, kVar, mediaFormat);
            }
            lrb lrbVar2 = this.b;
            if (lrbVar2 != null) {
                lrbVar2.a(j, j2, kVar, mediaFormat);
            }
        }

        @Override
        public void handleMessage(int i, Object obj) {
            if (i == 7) {
                this.b = (lrb) obj;
                return;
            }
            if (i == 8) {
                this.c = (xq0) obj;
                return;
            }
            if (i != 10000) {
                return;
            }
            SphericalGLSurfaceView sphericalGLSurfaceView = (SphericalGLSurfaceView) obj;
            if (sphericalGLSurfaceView == null) {
                this.d = null;
                this.e = null;
            } else {
                this.d = sphericalGLSurfaceView.getVideoFrameMetadataListener();
                this.e = sphericalGLSurfaceView.getCameraMotionListener();
            }
        }

        @Override
        public void onCameraMotion(long j, float[] fArr) {
            xq0 xq0Var = this.e;
            if (xq0Var != null) {
                xq0Var.onCameraMotion(j, fArr);
            }
            xq0 xq0Var2 = this.c;
            if (xq0Var2 != null) {
                xq0Var2.onCameraMotion(j, fArr);
            }
        }

        @Override
        public void onCameraMotionReset() {
            xq0 xq0Var = this.e;
            if (xq0Var != null) {
                xq0Var.onCameraMotionReset();
            }
            xq0 xq0Var2 = this.c;
            if (xq0Var2 != null) {
                xq0Var2.onCameraMotionReset();
            }
        }
    }

    public static final class e implements wl6 {
        public final Object a;
        public a0 b;

        public e(Object obj, a0 a0Var) {
            this.a = obj;
            this.b = a0Var;
        }

        @Override
        public a0 getTimeline() {
            return this.b;
        }

        @Override
        public Object getUid() {
            return this.a;
        }
    }

    static {
        pi3.a("goog.exo.exoplayer");
    }

    public i(ExoPlayer.b bVar, t tVar) {
        le1 le1Var = new le1();
        this.d = le1Var;
        try {
            op5.f("ExoPlayerImpl", "Init " + Integer.toHexString(System.identityHashCode(this)) + " [ExoPlayerLib/2.18.1] [" + blb.e + "]");
            Context applicationContext = bVar.a.getApplicationContext();
            this.e = applicationContext;
            kb kbVar = (kb) bVar.i.apply(bVar.b);
            this.r = kbVar;
            this.h0 = bVar.k;
            this.a0 = bVar.p;
            this.b0 = bVar.q;
            this.j0 = bVar.o;
            this.E = bVar.x;
            c cVar = new c();
            this.x = cVar;
            d dVar = new d();
            this.y = dVar;
            Handler handler = new Handler(bVar.j);
            w[] wVarArrA = ((ms8) bVar.d.get()).a(handler, cVar, cVar, cVar, cVar);
            this.g = wVarArrA;
            zi.g(wVarArrA.length > 0);
            rva rvaVar = (rva) bVar.f.get();
            this.h = rvaVar;
            this.q = (com.google.android.exoplayer2.source.i.a) bVar.e.get();
            o70 o70Var = (o70) bVar.h.get();
            this.t = o70Var;
            this.p = bVar.r;
            this.L = bVar.s;
            this.u = bVar.t;
            this.v = bVar.u;
            this.N = bVar.y;
            Looper looper = bVar.j;
            this.s = looper;
            ey0 ey0Var = bVar.b;
            this.w = ey0Var;
            t tVar2 = tVar == null ? this : tVar;
            this.f = tVar2;
            this.l = new om5(looper, ey0Var, new om5.b() {
                @Override
                public final void a(Object obj, zx3 zx3Var) {
                    this.a.B0((t.d) obj, zx3Var);
                }
            });
            this.m = new CopyOnWriteArraySet();
            this.o = new ArrayList();
            this.M = new mi9.a(0);
            sva svaVar = new sva(new ls8[wVarArrA.length], new qi3[wVarArrA.length], b0.c, null);
            this.b = svaVar;
            this.n = new a0.b();
            t.b bVarE = new t.b.a().c(1, 2, 3, 13, 14, 15, 16, 17, 18, 19, 31, 20, 30, 21, 22, 23, 24, 25, 26, 27, 28).d(29, rvaVar.d()).e();
            this.c = bVarE;
            this.O = new t.b.a().b(bVarE).a(4).a(10).e();
            this.i = ey0Var.createHandler(looper, null);
            j.f fVar = new j.f() {
                @Override
                public final void a(j.e eVar) {
                    this.a.D0(eVar);
                }
            };
            this.j = fVar;
            this.s0 = b88.j(svaVar);
            kbVar.h(tVar2, looper);
            int i = blb.a;
            j jVar = new j(wVarArrA, rvaVar, svaVar, (gn5) bVar.g.get(), o70Var, this.F, this.G, kbVar, this.L, bVar.v, bVar.w, this.N, looper, ey0Var, fVar, i < 31 ? new ta8() : b.a(applicationContext, this, bVar.z));
            this.k = jVar;
            this.i0 = 1.0f;
            this.F = 0;
            o oVar = o.H;
            this.P = oVar;
            this.Q = oVar;
            this.r0 = oVar;
            this.t0 = -1;
            if (i < 21) {
                this.g0 = y0(0);
            } else {
                this.g0 = blb.C(applicationContext);
            }
            this.k0 = qm1.c;
            this.l0 = true;
            d(kbVar);
            o70Var.e(new Handler(looper), kbVar);
            g0(cVar);
            long j = bVar.c;
            if (j > 0) {
                jVar.q(j);
            }
            AudioBecomingNoisyManager audioBecomingNoisyManager = new AudioBecomingNoisyManager(bVar.a, handler, cVar);
            this.z = audioBecomingNoisyManager;
            audioBecomingNoisyManager.b(bVar.n);
            com.google.android.exoplayer2.b bVar2 = new com.google.android.exoplayer2.b(bVar.a, handler, cVar);
            this.A = bVar2;
            bVar2.m(bVar.l ? this.h0 : null);
            y yVar = new y(bVar.a, handler, cVar);
            this.B = yVar;
            yVar.h(blb.Z(this.h0.d));
            ogc ogcVar = new ogc(bVar.a);
            this.C = ogcVar;
            ogcVar.a(bVar.m != 0);
            amc amcVar = new amc(bVar.a);
            this.D = amcVar;
            amcVar.a(bVar.m == 2);
            this.p0 = j0(yVar);
            this.q0 = f7c.f;
            rvaVar.h(this.h0);
            c1(1, 10, Integer.valueOf(this.g0));
            c1(2, 10, Integer.valueOf(this.g0));
            c1(1, 3, this.h0);
            c1(2, 4, Integer.valueOf(this.a0));
            c1(2, 5, Integer.valueOf(this.b0));
            c1(1, 9, Boolean.valueOf(this.j0));
            c1(2, 7, dVar);
            c1(6, 8, dVar);
            le1Var.f();
        } catch (Throwable th) {
            this.d.f();
            throw th;
        }
    }

    public static void E0(t.d dVar) {
        dVar.onPlayerError(ExoPlaybackException.createForUnexpected(new ExoTimeoutException(1), 1003));
    }

    public static void H0(b88 b88Var, int i, t.d dVar) {
        dVar.onTimelineChanged(b88Var.a, i);
    }

    public static void I0(int i, t.e eVar, t.e eVar2, t.d dVar) {
        dVar.onPositionDiscontinuity(i);
        dVar.onPositionDiscontinuity(eVar, eVar2, i);
    }

    public static void K0(b88 b88Var, t.d dVar) {
        dVar.onPlayerErrorChanged(b88Var.f);
    }

    public static void L0(b88 b88Var, t.d dVar) {
        dVar.onPlayerError(b88Var.f);
    }

    public static void M0(b88 b88Var, t.d dVar) {
        dVar.onTracksChanged(b88Var.i.d);
    }

    public static void O0(b88 b88Var, t.d dVar) {
        dVar.onLoadingChanged(b88Var.g);
        dVar.onIsLoadingChanged(b88Var.g);
    }

    public static void P0(b88 b88Var, t.d dVar) {
        dVar.onPlayerStateChanged(b88Var.l, b88Var.e);
    }

    public static void Q0(b88 b88Var, t.d dVar) {
        dVar.onPlaybackStateChanged(b88Var.e);
    }

    public static void R0(b88 b88Var, int i, t.d dVar) {
        dVar.onPlayWhenReadyChanged(b88Var.l, i);
    }

    public static void S0(b88 b88Var, t.d dVar) {
        dVar.onPlaybackSuppressionReasonChanged(b88Var.m);
    }

    public static void T0(b88 b88Var, t.d dVar) {
        dVar.onIsPlayingChanged(z0(b88Var));
    }

    public static void U0(b88 b88Var, t.d dVar) {
        dVar.onPlaybackParametersChanged(b88Var.n);
    }

    public static h j0(y yVar) {
        return new h(0, yVar.d(), yVar.c());
    }

    public static int t0(boolean z, int i) {
        return (!z || i == 1) ? 1 : 2;
    }

    public static long w0(b88 b88Var) {
        a0.d dVar = new a0.d();
        a0.b bVar = new a0.b();
        b88Var.a.l(b88Var.b.a, bVar);
        return b88Var.c == C.TIME_UNSET ? b88Var.a.r(bVar.d, dVar).f() : bVar.q() + b88Var.c;
    }

    public static boolean z0(b88 b88Var) {
        return b88Var.e == 3 && b88Var.l && b88Var.m == 0;
    }

    public final void B0(t.d dVar, zx3 zx3Var) {
        dVar.onEvents(this.f, new t.c(zx3Var));
    }

    public final void D0(final j.e eVar) {
        this.i.post(new Runnable() {
            @Override
            public final void run() {
                this.b.C0(eVar);
            }
        });
    }

    public final void G0(t.d dVar) {
        dVar.onAvailableCommandsChanged(this.O);
    }

    public final b88 V0(b88 b88Var, a0 a0Var, Pair pair) {
        zi.a(a0Var.u() || pair != null);
        a0 a0Var2 = b88Var.a;
        b88 b88VarI = b88Var.i(a0Var);
        if (a0Var.u()) {
            com.google.android.exoplayer2.source.i.b bVarK = b88.k();
            long jT0 = blb.t0(this.v0);
            b88 b88VarB = b88VarI.c(bVarK, jT0, jT0, jT0, 0L, eva.e, this.b, ImmutableList.of()).b(bVarK);
            b88VarB.p = b88VarB.r;
            return b88VarB;
        }
        Object obj = b88VarI.b.a;
        boolean zEquals = obj.equals(((Pair) blb.j(pair)).first);
        com.google.android.exoplayer2.source.i.b bVar = !zEquals ? new com.google.android.exoplayer2.source.i.b(pair.first) : b88VarI.b;
        long jLongValue = ((Long) pair.second).longValue();
        long jT1 = blb.t0(getContentPosition());
        if (!a0Var2.u()) {
            jT1 -= a0Var2.l(obj, this.n).q();
        }
        if (!zEquals || jLongValue < jT1) {
            zi.g(!bVar.b());
            b88 b88VarB2 = b88VarI.c(bVar, jLongValue, jLongValue, jLongValue, 0L, !zEquals ? eva.e : b88VarI.h, !zEquals ? this.b : b88VarI.i, !zEquals ? ImmutableList.of() : b88VarI.j).b(bVar);
            b88VarB2.p = jLongValue;
            return b88VarB2;
        }
        if (jLongValue != jT1) {
            zi.g(!bVar.b());
            long jMax = Math.max(0L, b88VarI.q - (jLongValue - jT1));
            long j = b88VarI.p;
            if (b88VarI.k.equals(b88VarI.b)) {
                j = jLongValue + jMax;
            }
            b88 b88VarC = b88VarI.c(bVar, jLongValue, jLongValue, jLongValue, jMax, b88VarI.h, b88VarI.i, b88VarI.j);
            b88VarC.p = j;
            return b88VarC;
        }
        int iF = a0Var.f(b88VarI.k.a);
        if (iF != -1 && a0Var.j(iF, this.n).d == a0Var.l(bVar.a, this.n).d) {
            return b88VarI;
        }
        a0Var.l(bVar.a, this.n);
        long jE = bVar.b() ? this.n.e(bVar.b, bVar.c) : this.n.e;
        b88 b88VarB3 = b88VarI.c(bVar, b88VarI.r, b88VarI.r, b88VarI.d, jE - b88VarI.r, b88VarI.h, b88VarI.i, b88VarI.j).b(bVar);
        b88VarB3.p = jE;
        return b88VarB3;
    }

    public final Pair W0(a0 a0Var, int i, long j) {
        if (a0Var.u()) {
            this.t0 = i;
            if (j == C.TIME_UNSET) {
                j = 0;
            }
            this.v0 = j;
            this.u0 = 0;
            return null;
        }
        if (i == -1 || i >= a0Var.t()) {
            i = a0Var.e(this.G);
            j = a0Var.r(i, this.a).e();
        }
        return a0Var.n(this.a, this.n, i, blb.t0(j));
    }

    public final void X0(final int i, final int i2) {
        if (i == this.c0 && i2 == this.d0) {
            return;
        }
        this.c0 = i;
        this.d0 = i2;
        this.l.l(24, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                ((t.d) obj).onSurfaceSizeChanged(i, i2);
            }
        });
    }

    public final long Y0(a0 a0Var, com.google.android.exoplayer2.source.i.b bVar, long j) {
        a0Var.l(bVar.a, this.n);
        return j + this.n.q();
    }

    public final b88 Z0(int i, int i2) {
        zi.a(i >= 0 && i2 >= i && i2 <= this.o.size());
        int currentMediaItemIndex = getCurrentMediaItemIndex();
        a0 currentTimeline = getCurrentTimeline();
        int size = this.o.size();
        this.H++;
        a1(i, i2);
        a0 a0VarK0 = k0();
        b88 b88VarV0 = V0(this.s0, a0VarK0, s0(currentTimeline, a0VarK0));
        int i3 = b88VarV0.e;
        if (i3 != 1 && i3 != 4 && i < i2 && i2 == size && currentMediaItemIndex >= b88VarV0.a.t()) {
            b88VarV0 = b88VarV0.g(4);
        }
        this.k.j0(i, i2, this.M);
        return b88VarV0;
    }

    @Override
    public void a(com.google.android.exoplayer2.source.i iVar) {
        q1();
        e1(Collections.singletonList(iVar));
    }

    public final void a1(int i, int i2) {
        for (int i3 = i2 - 1; i3 >= i; i3--) {
            this.o.remove(i3);
        }
        this.M = this.M.cloneAndRemove(i, i2);
    }

    @Override
    public void b(t.d dVar) {
        zi.e(dVar);
        this.l.k(dVar);
    }

    public final void b1() {
        if (this.X != null) {
            m0(this.y).n(10000).m(null).l();
            this.X.removeVideoSurfaceListener(this.x);
            this.X = null;
        }
        TextureView textureView = this.Z;
        if (textureView != null) {
            if (textureView.getSurfaceTextureListener() != this.x) {
                op5.i("ExoPlayerImpl", "SurfaceTextureListener already unset or replaced.");
            } else {
                this.Z.setSurfaceTextureListener(null);
            }
            this.Z = null;
        }
        SurfaceHolder surfaceHolder = this.W;
        if (surfaceHolder != null) {
            surfaceHolder.removeCallback(this.x);
            this.W = null;
        }
    }

    public final void c1(int i, int i2, Object obj) {
        for (w wVar : this.g) {
            if (wVar.getTrackType() == i) {
                m0(wVar).n(i2).m(obj).l();
            }
        }
    }

    @Override
    public void clearVideoSurface() {
        q1();
        b1();
        i1(null);
        X0(0, 0);
    }

    @Override
    public void d(t.d dVar) {
        zi.e(dVar);
        this.l.c(dVar);
    }

    public final void d1() {
        c1(1, 2, Float.valueOf(this.i0 * this.A.g()));
    }

    public void e1(List list) {
        q1();
        f1(list, true);
    }

    public void f0(nb nbVar) {
        zi.e(nbVar);
        this.r.r(nbVar);
    }

    public void f1(List list, boolean z) {
        q1();
        g1(list, -1, C.TIME_UNSET, z);
    }

    public void g0(ExoPlayer.a aVar) {
        this.m.add(aVar);
    }

    public final void g1(List list, int i, long j, boolean z) {
        int iE = i;
        int iR0 = r0();
        long currentPosition = getCurrentPosition();
        this.H++;
        if (!this.o.isEmpty()) {
            a1(0, this.o.size());
        }
        List listH0 = h0(0, list);
        a0 a0VarK0 = k0();
        if (!a0VarK0.u() && iE >= a0VarK0.t()) {
            throw new IllegalSeekPositionException(a0VarK0, iE, j);
        }
        long j2 = j;
        if (z) {
            iE = a0VarK0.e(this.G);
            j2 = -9223372036854775807L;
        } else if (iE == -1) {
            iE = iR0;
            j2 = currentPosition;
        }
        b88 b88VarV0 = V0(this.s0, a0VarK0, W0(a0VarK0, iE, j2));
        int i2 = b88VarV0.e;
        if (iE != -1 && i2 != 1) {
            i2 = (a0VarK0.u() || iE >= a0VarK0.t()) ? 4 : 2;
        }
        b88 b88VarG = b88VarV0.g(i2);
        this.k.I0(listH0, iE, blb.t0(j2), this.M);
        n1(b88VarG, 0, 1, false, (this.s0.b.a.equals(b88VarG.b.a) || this.s0.a.u()) ? false : true, 4, q0(b88VarG), -1);
    }

    @Override
    public long getContentPosition() {
        q1();
        if (!isPlayingAd()) {
            return getCurrentPosition();
        }
        b88 b88Var = this.s0;
        b88Var.a.l(b88Var.b.a, this.n);
        b88 b88Var2 = this.s0;
        return b88Var2.c == C.TIME_UNSET ? b88Var2.a.r(getCurrentMediaItemIndex(), this.a).e() : this.n.p() + blb.P0(this.s0.c);
    }

    @Override
    public int getCurrentAdGroupIndex() {
        q1();
        if (isPlayingAd()) {
            return this.s0.b.b;
        }
        return -1;
    }

    @Override
    public int getCurrentAdIndexInAdGroup() {
        q1();
        if (isPlayingAd()) {
            return this.s0.b.c;
        }
        return -1;
    }

    @Override
    public int getCurrentMediaItemIndex() {
        q1();
        int iR0 = r0();
        if (iR0 == -1) {
            return 0;
        }
        return iR0;
    }

    @Override
    public int getCurrentPeriodIndex() {
        q1();
        if (this.s0.a.u()) {
            return this.u0;
        }
        b88 b88Var = this.s0;
        return b88Var.a.f(b88Var.b.a);
    }

    @Override
    public long getCurrentPosition() {
        q1();
        return blb.P0(q0(this.s0));
    }

    @Override
    public a0 getCurrentTimeline() {
        q1();
        return this.s0.a;
    }

    @Override
    public b0 getCurrentTracks() {
        q1();
        return this.s0.i.d;
    }

    @Override
    public long getDuration() {
        q1();
        if (!isPlayingAd()) {
            return getContentDuration();
        }
        b88 b88Var = this.s0;
        com.google.android.exoplayer2.source.i.b bVar = b88Var.b;
        b88Var.a.l(bVar.a, this.n);
        return blb.P0(this.n.e(bVar.b, bVar.c));
    }

    @Override
    public boolean getPlayWhenReady() {
        q1();
        return this.s0.l;
    }

    @Override
    public int getPlaybackState() {
        q1();
        return this.s0.e;
    }

    @Override
    public int getPlaybackSuppressionReason() {
        q1();
        return this.s0.m;
    }

    @Override
    public int getRepeatMode() {
        q1();
        return this.F;
    }

    @Override
    public boolean getShuffleModeEnabled() {
        q1();
        return this.G;
    }

    @Override
    public long getTotalBufferedDuration() {
        q1();
        return blb.P0(this.s0.q);
    }

    @Override
    public f7c getVideoSize() {
        q1();
        return this.q0;
    }

    @Override
    public float getVolume() {
        q1();
        return this.i0;
    }

    public final List h0(int i, List list) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < list.size(); i2++) {
            q.c cVar = new q.c((com.google.android.exoplayer2.source.i) list.get(i2), this.p);
            arrayList.add(cVar);
            this.o.add(i2 + i, new e(cVar.b, cVar.a.H()));
        }
        this.M = this.M.cloneAndInsert(i, arrayList.size());
        return arrayList;
    }

    public final void h1(SurfaceTexture surfaceTexture) {
        Surface surface = new Surface(surfaceTexture);
        i1(surface);
        this.V = surface;
    }

    public final o i0() {
        a0 currentTimeline = getCurrentTimeline();
        if (currentTimeline.u()) {
            return this.r0;
        }
        return this.r0.b().H(currentTimeline.r(getCurrentMediaItemIndex(), this.a).d.f).F();
    }

    public final void i1(Object obj) {
        boolean z;
        ArrayList arrayList = new ArrayList();
        w[] wVarArr = this.g;
        int length = wVarArr.length;
        int i = 0;
        while (true) {
            z = true;
            if (i >= length) {
                break;
            }
            w wVar = wVarArr[i];
            if (wVar.getTrackType() == 2) {
                arrayList.add(m0(wVar).n(1).m(obj).l());
            }
            i++;
        }
        Object obj2 = this.U;
        if (obj2 == null || obj2 == obj) {
            z = false;
        } else {
            try {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((u) it.next()).a(this.E);
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            } catch (TimeoutException unused2) {
            }
            z = false;
            Object obj3 = this.U;
            Surface surface = this.V;
            if (obj3 == surface) {
                surface.release();
                this.V = null;
            }
        }
        this.U = obj;
        if (z) {
            k1(false, ExoPlaybackException.createForUnexpected(new ExoTimeoutException(3), 1003));
        }
    }

    @Override
    public boolean isPlayingAd() {
        q1();
        return this.s0.b.b();
    }

    public void j1(boolean z) {
        q1();
        this.A.p(getPlayWhenReady(), 1);
        k1(z, null);
        this.k0 = qm1.c;
    }

    public final a0 k0() {
        return new zb8(this.o, this.M);
    }

    public final void k1(boolean z, ExoPlaybackException exoPlaybackException) {
        b88 b88VarB;
        if (z) {
            b88VarB = Z0(0, this.o.size()).e(null);
        } else {
            b88 b88Var = this.s0;
            b88VarB = b88Var.b(b88Var.b);
            b88VarB.p = b88VarB.r;
            b88VarB.q = 0L;
        }
        b88 b88VarG = b88VarB.g(1);
        if (exoPlaybackException != null) {
            b88VarG = b88VarG.e(exoPlaybackException);
        }
        b88 b88Var2 = b88VarG;
        this.H++;
        this.k.Z0();
        n1(b88Var2, 0, 1, false, b88Var2.a.u() && !this.s0.a.u(), 4, q0(b88Var2), -1);
    }

    public final List l0(List list) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            arrayList.add(this.q.b((n) list.get(i)));
        }
        return arrayList;
    }

    public final void l1() {
        t.b bVar = this.O;
        t.b bVarE = blb.E(this.f, this.c);
        this.O = bVarE;
        if (bVarE.equals(bVar)) {
            return;
        }
        this.l.i(13, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                this.a.G0((t.d) obj);
            }
        });
    }

    public final u m0(u.b bVar) {
        int iR0 = r0();
        j jVar = this.k;
        a0 a0Var = this.s0.a;
        if (iR0 == -1) {
            iR0 = 0;
        }
        return new u(jVar, bVar, a0Var, iR0, this.w, jVar.x());
    }

    public final void m1(boolean z, int i, int i2) {
        int i3 = 0;
        boolean z2 = z && i != -1;
        if (z2 && i != 1) {
            i3 = 1;
        }
        b88 b88Var = this.s0;
        if (b88Var.l == z2 && b88Var.m == i3) {
            return;
        }
        this.H++;
        b88 b88VarD = b88Var.d(z2, i3);
        this.k.L0(z2, i3);
        n1(b88VarD, 0, i2, false, false, 5, C.TIME_UNSET, -1);
    }

    public final Pair n0(b88 b88Var, b88 b88Var2, boolean z, int i, boolean z2) {
        a0 a0Var = b88Var2.a;
        a0 a0Var2 = b88Var.a;
        if (a0Var2.u() && a0Var.u()) {
            return new Pair(Boolean.FALSE, -1);
        }
        int i2 = 3;
        if (a0Var2.u() != a0Var.u()) {
            return new Pair(Boolean.TRUE, 3);
        }
        if (a0Var.r(a0Var.l(b88Var2.b.a, this.n).d, this.a).b.equals(a0Var2.r(a0Var2.l(b88Var.b.a, this.n).d, this.a).b)) {
            return (z && i == 0 && b88Var2.b.d < b88Var.b.d) ? new Pair(Boolean.TRUE, 0) : new Pair(Boolean.FALSE, -1);
        }
        if (z && i == 0) {
            i2 = 1;
        } else if (z && i == 1) {
            i2 = 2;
        } else if (!z2) {
            throw new IllegalStateException();
        }
        return new Pair(Boolean.TRUE, Integer.valueOf(i2));
    }

    public final void n1(final b88 b88Var, final int i, final int i2, boolean z, boolean z2, final int i3, long j, int i4) {
        b88 b88Var2 = this.s0;
        this.s0 = b88Var;
        Pair pairN0 = n0(b88Var, b88Var2, z2, i3, !b88Var2.a.equals(b88Var.a));
        boolean zBooleanValue = ((Boolean) pairN0.first).booleanValue();
        final int iIntValue = ((Integer) pairN0.second).intValue();
        o oVarI0 = this.P;
        final n nVar = null;
        if (zBooleanValue) {
            if (!b88Var.a.u()) {
                nVar = b88Var.a.r(b88Var.a.l(b88Var.b.a, this.n).d, this.a).d;
            }
            this.r0 = o.H;
        }
        if (zBooleanValue || !b88Var2.j.equals(b88Var.j)) {
            this.r0 = this.r0.b().J(b88Var.j).F();
            oVarI0 = i0();
        }
        boolean zEquals = oVarI0.equals(this.P);
        this.P = oVarI0;
        boolean z3 = b88Var2.l != b88Var.l;
        boolean z4 = b88Var2.e != b88Var.e;
        if (z4 || z3) {
            p1();
        }
        boolean z5 = b88Var2.g;
        boolean z6 = b88Var.g;
        boolean z7 = z5 != z6;
        if (z7) {
            o1(z6);
        }
        if (!b88Var2.a.equals(b88Var.a)) {
            this.l.i(0, new om5.a() {
                @Override
                public final void invoke(Object obj) {
                    i.H0(b88Var, i, (t.d) obj);
                }
            });
        }
        if (z2) {
            final t.e eVarV0 = v0(i3, b88Var2, i4);
            final t.e eVarU0 = u0(j);
            this.l.i(11, new om5.a() {
                @Override
                public final void invoke(Object obj) {
                    i.I0(i3, eVarV0, eVarU0, (t.d) obj);
                }
            });
        }
        if (zBooleanValue) {
            this.l.i(1, new om5.a() {
                @Override
                public final void invoke(Object obj) {
                    ((t.d) obj).onMediaItemTransition(nVar, iIntValue);
                }
            });
        }
        if (b88Var2.f != b88Var.f) {
            this.l.i(10, new om5.a() {
                @Override
                public final void invoke(Object obj) {
                    i.K0(b88Var, (t.d) obj);
                }
            });
            if (b88Var.f != null) {
                this.l.i(10, new om5.a() {
                    @Override
                    public final void invoke(Object obj) {
                        i.L0(b88Var, (t.d) obj);
                    }
                });
            }
        }
        sva svaVar = b88Var2.i;
        sva svaVar2 = b88Var.i;
        if (svaVar != svaVar2) {
            this.h.e(svaVar2.e);
            this.l.i(2, new om5.a() {
                @Override
                public final void invoke(Object obj) {
                    i.M0(b88Var, (t.d) obj);
                }
            });
        }
        if (!zEquals) {
            final o oVar = this.P;
            this.l.i(14, new om5.a() {
                @Override
                public final void invoke(Object obj) {
                    ((t.d) obj).onMediaMetadataChanged(oVar);
                }
            });
        }
        if (z7) {
            this.l.i(3, new om5.a() {
                @Override
                public final void invoke(Object obj) {
                    i.O0(b88Var, (t.d) obj);
                }
            });
        }
        if (z4 || z3) {
            this.l.i(-1, new om5.a() {
                @Override
                public final void invoke(Object obj) {
                    i.P0(b88Var, (t.d) obj);
                }
            });
        }
        if (z4) {
            this.l.i(4, new om5.a() {
                @Override
                public final void invoke(Object obj) {
                    i.Q0(b88Var, (t.d) obj);
                }
            });
        }
        if (z3) {
            this.l.i(5, new om5.a() {
                @Override
                public final void invoke(Object obj) {
                    i.R0(b88Var, i2, (t.d) obj);
                }
            });
        }
        if (b88Var2.m != b88Var.m) {
            this.l.i(6, new om5.a() {
                @Override
                public final void invoke(Object obj) {
                    i.S0(b88Var, (t.d) obj);
                }
            });
        }
        if (z0(b88Var2) != z0(b88Var)) {
            this.l.i(7, new om5.a() {
                @Override
                public final void invoke(Object obj) {
                    i.T0(b88Var, (t.d) obj);
                }
            });
        }
        if (!b88Var2.n.equals(b88Var.n)) {
            this.l.i(12, new om5.a() {
                @Override
                public final void invoke(Object obj) {
                    i.U0(b88Var, (t.d) obj);
                }
            });
        }
        if (z) {
            this.l.i(-1, new om5.a() {
                @Override
                public final void invoke(Object obj) {
                    ((t.d) obj).onSeekProcessed();
                }
            });
        }
        l1();
        this.l.f();
        if (b88Var2.o != b88Var.o) {
            Iterator it = this.m.iterator();
            while (it.hasNext()) {
                ((ExoPlayer.a) it.next()).g(b88Var.o);
            }
        }
    }

    public boolean o0() {
        q1();
        return this.s0.o;
    }

    public final void o1(boolean z) {
    }

    public Looper p0() {
        return this.s;
    }

    public final void p1() {
        int playbackState = getPlaybackState();
        if (playbackState != 1) {
            if (playbackState == 2 || playbackState == 3) {
                this.C.b(getPlayWhenReady() && !o0());
                this.D.b(getPlayWhenReady());
                return;
            } else if (playbackState != 4) {
                throw new IllegalStateException();
            }
        }
        this.C.b(false);
        this.D.b(false);
    }

    @Override
    public void prepare() {
        q1();
        boolean playWhenReady = getPlayWhenReady();
        int iP = this.A.p(playWhenReady, 2);
        m1(playWhenReady, iP, t0(playWhenReady, iP));
        b88 b88Var = this.s0;
        if (b88Var.e != 1) {
            return;
        }
        b88 b88VarE = b88Var.e(null);
        b88 b88VarG = b88VarE.g(b88VarE.a.u() ? 4 : 2);
        this.H++;
        this.k.e0();
        n1(b88VarG, 1, 1, false, false, 5, C.TIME_UNSET, -1);
    }

    public final long q0(b88 b88Var) {
        if (b88Var.a.u()) {
            return blb.t0(this.v0);
        }
        return b88Var.b.b() ? b88Var.r : Y0(b88Var.a, b88Var.b, b88Var.r);
    }

    public final void q1() {
        this.d.c();
        if (Thread.currentThread() != p0().getThread()) {
            String strZ = blb.z("Player is accessed on the wrong thread.\nCurrent thread: '%s'\nExpected thread: '%s'\nSee https://exoplayer.dev/issues/player-accessed-on-wrong-thread", Thread.currentThread().getName(), p0().getThread().getName());
            if (this.l0) {
                throw new IllegalStateException(strZ);
            }
            op5.j("ExoPlayerImpl", strZ, this.m0 ? null : new IllegalStateException());
            this.m0 = true;
        }
    }

    public final int r0() {
        if (this.s0.a.u()) {
            return this.t0;
        }
        b88 b88Var = this.s0;
        return b88Var.a.l(b88Var.b.a, this.n).d;
    }

    @Override
    public void release() {
        AudioTrack audioTrack;
        op5.f("ExoPlayerImpl", "Release " + Integer.toHexString(System.identityHashCode(this)) + " [ExoPlayerLib/2.18.1] [" + blb.e + "] [" + pi3.b() + "]");
        q1();
        if (blb.a < 21 && (audioTrack = this.T) != null) {
            audioTrack.release();
            this.T = null;
        }
        this.z.b(false);
        this.B.g();
        this.C.b(false);
        this.D.b(false);
        this.A.i();
        if (!this.k.g0()) {
            this.l.l(10, new om5.a() {
                @Override
                public final void invoke(Object obj) {
                    i.E0((t.d) obj);
                }
            });
        }
        this.l.j();
        this.i.removeCallbacksAndMessages(null);
        this.t.d(this.r);
        b88 b88VarG = this.s0.g(1);
        this.s0 = b88VarG;
        b88 b88VarB = b88VarG.b(b88VarG.b);
        this.s0 = b88VarB;
        b88VarB.p = b88VarB.r;
        this.s0.q = 0L;
        this.r.release();
        this.h.f();
        b1();
        Surface surface = this.V;
        if (surface != null) {
            surface.release();
            this.V = null;
        }
        if (this.n0) {
            ubc.a(zi.e(null));
            throw null;
        }
        this.k0 = qm1.c;
        this.o0 = true;
    }

    public final Pair s0(a0 a0Var, a0 a0Var2) {
        long contentPosition = getContentPosition();
        if (a0Var.u() || a0Var2.u()) {
            boolean z = !a0Var.u() && a0Var2.u();
            int iR0 = z ? -1 : r0();
            if (z) {
                contentPosition = -9223372036854775807L;
            }
            return W0(a0Var2, iR0, contentPosition);
        }
        Pair pairN = a0Var.n(this.a, this.n, getCurrentMediaItemIndex(), blb.t0(contentPosition));
        Object obj = ((Pair) blb.j(pairN)).first;
        if (a0Var2.f(obj) != -1) {
            return pairN;
        }
        Object objU0 = j.u0(this.a, this.n, this.F, this.G, obj, a0Var, a0Var2);
        if (objU0 == null) {
            return W0(a0Var2, -1, C.TIME_UNSET);
        }
        a0Var2.l(objU0, this.n);
        int i = this.n.d;
        return W0(a0Var2, i, a0Var2.r(i, this.a).e());
    }

    @Override
    public void seekTo(int i, long j) {
        q1();
        this.r.notifySeekStarted();
        a0 a0Var = this.s0.a;
        if (i < 0 || (!a0Var.u() && i >= a0Var.t())) {
            throw new IllegalSeekPositionException(a0Var, i, j);
        }
        this.H++;
        if (isPlayingAd()) {
            op5.i("ExoPlayerImpl", "seekTo ignored because an ad is playing");
            j.e eVar = new j.e(this.s0);
            eVar.b(1);
            this.j.a(eVar);
            return;
        }
        int i2 = getPlaybackState() != 1 ? 2 : 1;
        int currentMediaItemIndex = getCurrentMediaItemIndex();
        b88 b88VarV0 = V0(this.s0.g(i2), a0Var, W0(a0Var, i, j));
        this.k.w0(a0Var, i, blb.t0(j));
        n1(b88VarV0, 0, 1, true, true, 1, q0(b88VarV0), currentMediaItemIndex);
    }

    @Override
    public void setMediaItems(List list, boolean z) {
        q1();
        f1(l0(list), z);
    }

    @Override
    public void setPlayWhenReady(boolean z) {
        q1();
        int iP = this.A.p(z, getPlaybackState());
        m1(z, iP, t0(z, iP));
    }

    @Override
    public void setVideoTextureView(TextureView textureView) {
        q1();
        if (textureView == null) {
            clearVideoSurface();
            return;
        }
        b1();
        this.Z = textureView;
        if (textureView.getSurfaceTextureListener() != null) {
            op5.i("ExoPlayerImpl", "Replacing existing SurfaceTextureListener.");
        }
        textureView.setSurfaceTextureListener(this.x);
        SurfaceTexture surfaceTexture = textureView.isAvailable() ? textureView.getSurfaceTexture() : null;
        if (surfaceTexture == null) {
            i1(null);
            X0(0, 0);
        } else {
            h1(surfaceTexture);
            X0(textureView.getWidth(), textureView.getHeight());
        }
    }

    @Override
    public void setVolume(float f) {
        q1();
        final float fO = blb.o(f, 0.0f, 1.0f);
        if (this.i0 == fO) {
            return;
        }
        this.i0 = fO;
        d1();
        this.l.l(22, new om5.a() {
            @Override
            public final void invoke(Object obj) {
                ((t.d) obj).onVolumeChanged(fO);
            }
        });
    }

    @Override
    public void stop() {
        q1();
        j1(false);
    }

    public final t.e u0(long j) {
        n nVar;
        Object obj;
        int iF;
        Object obj2;
        int currentMediaItemIndex = getCurrentMediaItemIndex();
        if (this.s0.a.u()) {
            nVar = null;
            obj = null;
            iF = -1;
            obj2 = null;
        } else {
            b88 b88Var = this.s0;
            Object obj3 = b88Var.b.a;
            b88Var.a.l(obj3, this.n);
            iF = this.s0.a.f(obj3);
            obj = obj3;
            obj2 = this.s0.a.r(currentMediaItemIndex, this.a).b;
            nVar = this.a.d;
        }
        long jP0 = blb.P0(j);
        long jP1 = this.s0.b.b() ? blb.P0(w0(this.s0)) : jP0;
        com.google.android.exoplayer2.source.i.b bVar = this.s0.b;
        return new t.e(obj2, currentMediaItemIndex, nVar, obj, iF, jP0, jP1, bVar.b, bVar.c);
    }

    public final t.e v0(int i, b88 b88Var, int i2) {
        int i3;
        Object obj;
        n nVar;
        Object obj2;
        int i4;
        long jW0;
        long jW1;
        a0.b bVar = new a0.b();
        if (b88Var.a.u()) {
            i3 = i2;
            obj = null;
            nVar = null;
            obj2 = null;
            i4 = -1;
        } else {
            Object obj3 = b88Var.b.a;
            b88Var.a.l(obj3, bVar);
            int i5 = bVar.d;
            int iF = b88Var.a.f(obj3);
            Object obj4 = b88Var.a.r(i5, this.a).b;
            nVar = this.a.d;
            obj2 = obj3;
            i4 = iF;
            obj = obj4;
            i3 = i5;
        }
        if (i == 0) {
            if (b88Var.b.b()) {
                com.google.android.exoplayer2.source.i.b bVar2 = b88Var.b;
                jW0 = bVar.e(bVar2.b, bVar2.c);
                jW1 = w0(b88Var);
            } else {
                jW0 = b88Var.b.e != -1 ? w0(this.s0) : bVar.f + bVar.e;
                jW1 = jW0;
            }
        } else if (b88Var.b.b()) {
            jW0 = b88Var.r;
            jW1 = w0(b88Var);
        } else {
            jW0 = bVar.f + b88Var.r;
            jW1 = jW0;
        }
        long jP0 = blb.P0(jW0);
        long jP1 = blb.P0(jW1);
        com.google.android.exoplayer2.source.i.b bVar3 = b88Var.b;
        return new t.e(obj, i3, nVar, obj2, i4, jP0, jP1, bVar3.b, bVar3.c);
    }

    public final void C0(j.e eVar) {
        long j;
        boolean z;
        long jY0;
        int i = this.H - eVar.c;
        this.H = i;
        boolean z2 = true;
        if (eVar.d) {
            this.I = eVar.e;
            this.J = true;
        }
        if (eVar.f) {
            this.K = eVar.g;
        }
        if (i == 0) {
            a0 a0Var = eVar.b.a;
            if (!this.s0.a.u() && a0Var.u()) {
                this.t0 = -1;
                this.v0 = 0L;
                this.u0 = 0;
            }
            if (!a0Var.u()) {
                List listK = ((zb8) a0Var).K();
                zi.g(listK.size() == this.o.size());
                for (int i2 = 0; i2 < listK.size(); i2++) {
                    ((e) this.o.get(i2)).b = (a0) listK.get(i2);
                }
            }
            if (this.J) {
                if (eVar.b.b.equals(this.s0.b) && eVar.b.d == this.s0.r) {
                    z2 = false;
                }
                if (z2) {
                    if (a0Var.u() || eVar.b.b.b()) {
                        jY0 = eVar.b.d;
                    } else {
                        b88 b88Var = eVar.b;
                        jY0 = Y0(a0Var, b88Var.b, b88Var.d);
                    }
                    j = jY0;
                } else {
                    j = -9223372036854775807L;
                }
                z = z2;
            } else {
                j = -9223372036854775807L;
                z = false;
            }
            this.J = false;
            n1(eVar.b, 1, this.K, false, z, this.I, j, -1);
        }
    }

    public final int y0(int i) {
        AudioTrack audioTrack = this.T;
        if (audioTrack != null && audioTrack.getAudioSessionId() != i) {
            this.T.release();
            this.T = null;
        }
        if (this.T == null) {
            this.T = new AudioTrack(3, FlacTagCreator.DEFAULT_PADDING, 4, 2, 2, 0, i);
        }
        return this.T.getAudioSessionId();
    }

    @Override
    public ExoPlaybackException getPlayerError() {
        q1();
        return this.s0.f;
    }
}
