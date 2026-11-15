package com.google.android.exoplayer2;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.media.AudioTrack;
import android.media.MediaFormat;
import android.media.metrics.LogSessionId;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.PriorityTaskManager;
import com.google.android.exoplayer2.video.spherical.SphericalGLSurfaceView;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.TimeoutException;

final class a1 extends g implements t {
    private final f A;
    private final g3 B;
    private final r3 C;
    private final s3 D;
    private final long E;
    private int F;
    private boolean G;
    private int H;
    private int I;
    private boolean J;
    private int K;
    private d3 L;
    private v9.t M;
    private boolean N;
    private p2.b O;
    private b2 P;
    private b2 Q;
    private p1 R;
    private p1 S;
    private AudioTrack T;
    private Object U;
    private Surface V;
    private SurfaceHolder W;
    private SphericalGLSurfaceView X;
    private boolean Y;
    private TextureView Z;

    private int f23782a0;

    final na.c0 f23783b;

    private int f23784b0;

    final p2.b f23785c;

    private int f23786c0;

    private final com.google.android.exoplayer2.util.h f23787d;

    private int f23788d0;

    private final Context f23789e;

    private com.google.android.exoplayer2.decoder.e f23790e0;

    private final p2 f23791f;

    private com.google.android.exoplayer2.decoder.e f23792f0;

    private final y2[] f23793g;

    private int f23794g0;

    private final na.b0 f23795h;

    private com.google.android.exoplayer2.audio.e f23796h0;

    private final com.google.android.exoplayer2.util.o f23797i;

    private float f23798i0;

    private final m1.f f23799j;

    private boolean f23800j0;

    private final m1 f23801k;

    private da.f f23802k0;

    private final com.google.android.exoplayer2.util.r f23803l;

    private boolean f23804l0;

    private final CopyOnWriteArraySet f23805m;

    private boolean f23806m0;

    private final l3.b f23807n;

    private PriorityTaskManager f23808n0;

    private final List f23809o;

    private boolean f23810o0;

    private final boolean f23811p;

    private boolean f23812p0;

    private final com.google.android.exoplayer2.source.o.a f23813q;

    private r f23814q0;

    private final g9.a f23815r;

    private com.google.android.exoplayer2.video.y f23816r0;

    private final Looper f23817s;

    private b2 f23818s0;

    private final com.google.android.exoplayer2.upstream.e f23819t;

    private m2 f23820t0;

    private final long f23821u;

    private int f23822u0;

    private final long f23823v;

    private int f23824v0;

    private final com.google.android.exoplayer2.util.e f23825w;

    private long f23826w0;

    private final c f23827x;

    private final d f23828y;

    private final AudioBecomingNoisyManager f23829z;

    private static final class b {
        public static g9.u1 a(Context context, a1 a1Var, boolean z10) {
            g9.s1 s1VarB0 = g9.s1.B0(context);
            if (s1VarB0 == null) {
                com.google.android.exoplayer2.util.s.i("ExoPlayerImpl", "MediaMetricsService unavailable.");
                return new g9.u1(LogSessionId.LOG_SESSION_ID_NONE);
            }
            if (z10) {
                a1Var.P0(s1VarB0);
            }
            return new g9.u1(s1VarB0.I0());
        }
    }

    final class c implements com.google.android.exoplayer2.video.w, com.google.android.exoplayer2.audio.r, da.o, com.google.android.exoplayer2.metadata.e, SurfaceHolder.Callback, TextureView.SurfaceTextureListener, SphericalGLSurfaceView.b, f.b, AudioBecomingNoisyManager.a, g3.b, t.a {
        private c() {
        }

        public void J(p2.d dVar) {
            dVar.onMediaMetadataChanged(a1.this.P);
        }

        @Override
        public void a(Exception exc) {
            a1.this.f23815r.a(exc);
        }

        @Override
        public void b(String str) {
            a1.this.f23815r.b(str);
        }

        @Override
        public void c(String str) {
            a1.this.f23815r.c(str);
        }

        @Override
        public void d(long j10) {
            a1.this.f23815r.d(j10);
        }

        @Override
        public void e(Exception exc) {
            a1.this.f23815r.e(exc);
        }

        @Override
        public void f(Object obj, long j10) {
            a1.this.f23815r.f(obj, j10);
            if (a1.this.U == obj) {
                a1.this.f23803l.l(26, new com.google.android.exoplayer2.util.r.a() {
                    @Override
                    public final void invoke(Object obj2) {
                        ((p2.d) obj2).onRenderedFirstFrame();
                    }
                });
            }
        }

        @Override
        public void g(Exception exc) {
            a1.this.f23815r.g(exc);
        }

        @Override
        public void h(int i10, long j10, long j11) {
            a1.this.f23815r.h(i10, j10, j11);
        }

        @Override
        public void i(long j10, int i10) {
            a1.this.f23815r.i(j10, i10);
        }

        @Override
        public void j(com.google.android.exoplayer2.decoder.e eVar) {
            a1.this.f23792f0 = eVar;
            a1.this.f23815r.j(eVar);
        }

        @Override
        public void k(p1 p1Var, com.google.android.exoplayer2.decoder.g gVar) {
            a1.this.R = p1Var;
            a1.this.f23815r.k(p1Var, gVar);
        }

        @Override
        public void l(int i10) {
            final r rVarU0 = a1.U0(a1.this.B);
            if (rVarU0.equals(a1.this.f23814q0)) {
                return;
            }
            a1.this.f23814q0 = rVarU0;
            a1.this.f23803l.l(29, new com.google.android.exoplayer2.util.r.a() {
                @Override
                public final void invoke(Object obj) {
                    ((p2.d) obj).onDeviceInfoChanged(rVarU0);
                }
            });
        }

        @Override
        public void m() {
            a1.this.c2(false, -1, 3);
        }

        @Override
        public void n(com.google.android.exoplayer2.decoder.e eVar) {
            a1.this.f23815r.n(eVar);
            a1.this.R = null;
            a1.this.f23790e0 = null;
        }

        @Override
        public void o(com.google.android.exoplayer2.decoder.e eVar) {
            a1.this.f23815r.o(eVar);
            a1.this.S = null;
            a1.this.f23792f0 = null;
        }

        @Override
        public void onAudioDecoderInitialized(String str, long j10, long j11) {
            a1.this.f23815r.onAudioDecoderInitialized(str, j10, j11);
        }

        @Override
        public void onCues(final List list) {
            a1.this.f23803l.l(27, new com.google.android.exoplayer2.util.r.a() {
                @Override
                public final void invoke(Object obj) {
                    ((p2.d) obj).onCues(list);
                }
            });
        }

        @Override
        public void onDroppedFrames(int i10, long j10) {
            a1.this.f23815r.onDroppedFrames(i10, j10);
        }

        @Override
        public void onMetadata(final Metadata metadata) {
            a1 a1Var = a1.this;
            a1Var.f23818s0 = a1Var.f23818s0.b().I(metadata).F();
            b2 b2VarS0 = a1.this.S0();
            if (!b2VarS0.equals(a1.this.P)) {
                a1.this.P = b2VarS0;
                a1.this.f23803l.i(14, new com.google.android.exoplayer2.util.r.a() {
                    @Override
                    public final void invoke(Object obj) {
                        this.f24184a.J((p2.d) obj);
                    }
                });
            }
            a1.this.f23803l.i(28, new com.google.android.exoplayer2.util.r.a() {
                @Override
                public final void invoke(Object obj) {
                    ((p2.d) obj).onMetadata(metadata);
                }
            });
            a1.this.f23803l.f();
        }

        @Override
        public void onSkipSilenceEnabledChanged(final boolean z10) {
            if (a1.this.f23800j0 == z10) {
                return;
            }
            a1.this.f23800j0 = z10;
            a1.this.f23803l.l(23, new com.google.android.exoplayer2.util.r.a() {
                @Override
                public final void invoke(Object obj) {
                    ((p2.d) obj).onSkipSilenceEnabledChanged(z10);
                }
            });
        }

        @Override
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i10, int i11) {
            a1.this.W1(surfaceTexture);
            a1.this.L1(i10, i11);
        }

        @Override
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            a1.this.X1(null);
            a1.this.L1(0, 0);
            return true;
        }

        @Override
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i10, int i11) {
            a1.this.L1(i10, i11);
        }

        @Override
        public void onVideoDecoderInitialized(String str, long j10, long j11) {
            a1.this.f23815r.onVideoDecoderInitialized(str, j10, j11);
        }

        @Override
        public void onVideoSizeChanged(final com.google.android.exoplayer2.video.y yVar) {
            a1.this.f23816r0 = yVar;
            a1.this.f23803l.l(25, new com.google.android.exoplayer2.util.r.a() {
                @Override
                public final void invoke(Object obj) {
                    ((p2.d) obj).onVideoSizeChanged(yVar);
                }
            });
        }

        @Override
        public void p(Surface surface) {
            a1.this.X1(null);
        }

        @Override
        public void q(Surface surface) {
            a1.this.X1(surface);
        }

        @Override
        public void r(final int i10, final boolean z10) {
            a1.this.f23803l.l(30, new com.google.android.exoplayer2.util.r.a() {
                @Override
                public final void invoke(Object obj) {
                    ((p2.d) obj).onDeviceVolumeChanged(i10, z10);
                }
            });
        }

        @Override
        public void s(float f10) {
            a1.this.R1();
        }

        @Override
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i10, int i11, int i12) {
            a1.this.L1(i11, i12);
        }

        @Override
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            if (a1.this.Y) {
                a1.this.X1(surfaceHolder.getSurface());
            }
        }

        @Override
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            if (a1.this.Y) {
                a1.this.X1(null);
            }
            a1.this.L1(0, 0);
        }

        @Override
        public void t(p1 p1Var, com.google.android.exoplayer2.decoder.g gVar) {
            a1.this.S = p1Var;
            a1.this.f23815r.t(p1Var, gVar);
        }

        @Override
        public void u(int i10) {
            boolean playWhenReady = a1.this.getPlayWhenReady();
            a1.this.c2(playWhenReady, i10, a1.d1(playWhenReady, i10));
        }

        @Override
        public void v(com.google.android.exoplayer2.decoder.e eVar) {
            a1.this.f23790e0 = eVar;
            a1.this.f23815r.v(eVar);
        }

        @Override
        public void w(p1 p1Var) {
            com.google.android.exoplayer2.video.l.a(this, p1Var);
        }

        @Override
        public void x(boolean z10) {
            a1.this.f2();
        }

        @Override
        public void y(p1 p1Var) {
            com.google.android.exoplayer2.audio.g.a(this, p1Var);
        }

        @Override
        public void onCues(final da.f fVar) {
            a1.this.f23802k0 = fVar;
            a1.this.f23803l.l(27, new com.google.android.exoplayer2.util.r.a() {
                @Override
                public final void invoke(Object obj) {
                    ((p2.d) obj).onCues(fVar);
                }
            });
        }

        @Override
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }
    }

    private static final class d implements com.google.android.exoplayer2.video.i, oa.a, t2.b {

        private com.google.android.exoplayer2.video.i f23831a;

        private oa.a f23832b;

        private com.google.android.exoplayer2.video.i f23833c;

        private oa.a f23834d;

        private d() {
        }

        @Override
        public void a(long j10, float[] fArr) {
            oa.a aVar = this.f23834d;
            if (aVar != null) {
                aVar.a(j10, fArr);
            }
            oa.a aVar2 = this.f23832b;
            if (aVar2 != null) {
                aVar2.a(j10, fArr);
            }
        }

        @Override
        public void b() {
            oa.a aVar = this.f23834d;
            if (aVar != null) {
                aVar.b();
            }
            oa.a aVar2 = this.f23832b;
            if (aVar2 != null) {
                aVar2.b();
            }
        }

        @Override
        public void g(long j10, long j11, p1 p1Var, MediaFormat mediaFormat) {
            com.google.android.exoplayer2.video.i iVar = this.f23833c;
            if (iVar != null) {
                iVar.g(j10, j11, p1Var, mediaFormat);
            }
            com.google.android.exoplayer2.video.i iVar2 = this.f23831a;
            if (iVar2 != null) {
                iVar2.g(j10, j11, p1Var, mediaFormat);
            }
        }

        @Override
        public void handleMessage(int i10, Object obj) {
            if (i10 == 7) {
                this.f23831a = (com.google.android.exoplayer2.video.i) obj;
                return;
            }
            if (i10 == 8) {
                this.f23832b = (oa.a) obj;
                return;
            }
            if (i10 != 10000) {
                return;
            }
            SphericalGLSurfaceView sphericalGLSurfaceView = (SphericalGLSurfaceView) obj;
            if (sphericalGLSurfaceView == null) {
                this.f23833c = null;
                this.f23834d = null;
            } else {
                this.f23833c = sphericalGLSurfaceView.getVideoFrameMetadataListener();
                this.f23834d = sphericalGLSurfaceView.getCameraMotionListener();
            }
        }
    }

    private static final class e implements g2 {

        private final Object f23835a;

        private l3 f23836b;

        public e(Object obj, l3 l3Var) {
            this.f23835a = obj;
            this.f23836b = l3Var;
        }

        @Override
        public Object a() {
            return this.f23835a;
        }

        @Override
        public l3 b() {
            return this.f23836b;
        }
    }

    static {
        n1.a("goog.exo.exoplayer");
    }

    public a1(t.b bVar, p2 p2Var) {
        com.google.android.exoplayer2.util.h hVar = new com.google.android.exoplayer2.util.h();
        this.f23787d = hVar;
        try {
            com.google.android.exoplayer2.util.s.f("ExoPlayerImpl", "Init " + Integer.toHexString(System.identityHashCode(this)) + " [ExoPlayerLib/2.18.1] [" + com.google.android.exoplayer2.util.p0.f26858e + "]");
            Context applicationContext = bVar.f26060a.getApplicationContext();
            this.f23789e = applicationContext;
            g9.a aVar = (g9.a) bVar.f26068i.apply(bVar.f26061b);
            this.f23815r = aVar;
            this.f23808n0 = bVar.f26070k;
            this.f23796h0 = bVar.f26071l;
            this.f23782a0 = bVar.f26076q;
            this.f23784b0 = bVar.f26077r;
            this.f23800j0 = bVar.f26075p;
            this.E = bVar.f26084y;
            c cVar = new c();
            this.f23827x = cVar;
            d dVar = new d();
            this.f23828y = dVar;
            Handler handler = new Handler(bVar.f26069j);
            y2[] y2VarArrA = ((c3) bVar.f26063d.get()).a(handler, cVar, cVar, cVar, cVar);
            this.f23793g = y2VarArrA;
            com.google.android.exoplayer2.util.a.g(y2VarArrA.length > 0);
            na.b0 b0Var = (na.b0) bVar.f26065f.get();
            this.f23795h = b0Var;
            this.f23813q = (com.google.android.exoplayer2.source.o.a) bVar.f26064e.get();
            com.google.android.exoplayer2.upstream.e eVar = (com.google.android.exoplayer2.upstream.e) bVar.f26067h.get();
            this.f23819t = eVar;
            this.f23811p = bVar.f26078s;
            this.L = bVar.f26079t;
            this.f23821u = bVar.f26080u;
            this.f23823v = bVar.f26081v;
            this.N = bVar.f26085z;
            Looper looper = bVar.f26069j;
            this.f23817s = looper;
            com.google.android.exoplayer2.util.e eVar2 = bVar.f26061b;
            this.f23825w = eVar2;
            p2 p2Var2 = p2Var == null ? this : p2Var;
            this.f23791f = p2Var2;
            this.f23803l = new com.google.android.exoplayer2.util.r(looper, eVar2, new com.google.android.exoplayer2.util.r.b() {
                @Override
                public final void a(Object obj, com.google.android.exoplayer2.util.m mVar) {
                    this.f24508a.m1((p2.d) obj, mVar);
                }
            });
            this.f23805m = new CopyOnWriteArraySet();
            this.f23809o = new ArrayList();
            this.M = new v9.t.a(0);
            na.c0 c0Var = new na.c0(new b3[y2VarArrA.length], new na.s[y2VarArrA.length], q3.f24963b, null);
            this.f23783b = c0Var;
            this.f23807n = new l3.b();
            p2.b bVarE = new p2.b.a().c(1, 2, 3, 13, 14, 15, 16, 17, 18, 19, 31, 20, 30, 21, 22, 23, 24, 25, 26, 27, 28).d(29, b0Var.e()).e();
            this.f23785c = bVarE;
            this.O = new p2.b.a().b(bVarE).a(4).a(10).e();
            this.f23797i = eVar2.createHandler(looper, null);
            m1.f fVar = new m1.f() {
                @Override
                public final void a(m1.e eVar3) {
                    this.f24517a.o1(eVar3);
                }
            };
            this.f23799j = fVar;
            this.f23820t0 = m2.j(c0Var);
            aVar.r(p2Var2, looper);
            int i10 = com.google.android.exoplayer2.util.p0.f26854a;
            m1 m1Var = new m1(y2VarArrA, b0Var, c0Var, (u1) bVar.f26066g.get(), eVar, this.F, this.G, aVar, this.L, bVar.f26082w, bVar.f26083x, this.N, looper, eVar2, fVar, i10 < 31 ? new g9.u1() : b.a(applicationContext, this, bVar.A));
            this.f23801k = m1Var;
            this.f23798i0 = 1.0f;
            this.F = 0;
            b2 b2Var = b2.G;
            this.P = b2Var;
            this.Q = b2Var;
            this.f23818s0 = b2Var;
            this.f23822u0 = -1;
            if (i10 < 21) {
                this.f23794g0 = j1(0);
            } else {
                this.f23794g0 = com.google.android.exoplayer2.util.p0.F(applicationContext);
            }
            this.f23802k0 = da.f.f58958b;
            this.f23804l0 = true;
            E(aVar);
            eVar.f(new Handler(looper), aVar);
            Q0(cVar);
            long j10 = bVar.f26062c;
            if (j10 > 0) {
                m1Var.s(j10);
            }
            AudioBecomingNoisyManager audioBecomingNoisyManager = new AudioBecomingNoisyManager(bVar.f26060a, handler, cVar);
            this.f23829z = audioBecomingNoisyManager;
            audioBecomingNoisyManager.b(bVar.f26074o);
            f fVar2 = new f(bVar.f26060a, handler, cVar);
            this.A = fVar2;
            fVar2.m(bVar.f26072m ? this.f23796h0 : null);
            g3 g3Var = new g3(bVar.f26060a, handler, cVar);
            this.B = g3Var;
            g3Var.h(com.google.android.exoplayer2.util.p0.g0(this.f23796h0.f23946c));
            r3 r3Var = new r3(bVar.f26060a);
            this.C = r3Var;
            r3Var.a(bVar.f26073n != 0);
            s3 s3Var = new s3(bVar.f26060a);
            this.D = s3Var;
            s3Var.a(bVar.f26073n == 2);
            this.f23814q0 = U0(g3Var);
            this.f23816r0 = com.google.android.exoplayer2.video.y.f27138e;
            b0Var.i(this.f23796h0);
            Q1(1, 10, Integer.valueOf(this.f23794g0));
            Q1(2, 10, Integer.valueOf(this.f23794g0));
            Q1(1, 3, this.f23796h0);
            Q1(2, 4, Integer.valueOf(this.f23782a0));
            Q1(2, 5, Integer.valueOf(this.f23784b0));
            Q1(1, 9, Boolean.valueOf(this.f23800j0));
            Q1(2, 7, dVar);
            Q1(6, 8, dVar);
            hVar.f();
        } catch (Throwable th2) {
            this.f23787d.f();
            throw th2;
        }
    }

    public static void A1(m2 m2Var, p2.d dVar) {
        dVar.onTracksChanged(m2Var.f24641i.f67018d);
    }

    public static void C1(m2 m2Var, p2.d dVar) {
        dVar.onLoadingChanged(m2Var.f24639g);
        dVar.onIsLoadingChanged(m2Var.f24639g);
    }

    public static void D1(m2 m2Var, p2.d dVar) {
        dVar.onPlayerStateChanged(m2Var.f24644l, m2Var.f24637e);
    }

    public static void E1(m2 m2Var, p2.d dVar) {
        dVar.onPlaybackStateChanged(m2Var.f24637e);
    }

    public static void F1(m2 m2Var, int i10, p2.d dVar) {
        dVar.onPlayWhenReadyChanged(m2Var.f24644l, i10);
    }

    public static void G1(m2 m2Var, p2.d dVar) {
        dVar.onPlaybackSuppressionReasonChanged(m2Var.f24645m);
    }

    public static void H1(m2 m2Var, p2.d dVar) {
        dVar.onIsPlayingChanged(k1(m2Var));
    }

    public static void I1(m2 m2Var, p2.d dVar) {
        dVar.onPlaybackParametersChanged(m2Var.f24646n);
    }

    private m2 J1(m2 m2Var, l3 l3Var, Pair pair) {
        com.google.android.exoplayer2.util.a.a(l3Var.u() || pair != null);
        l3 l3Var2 = m2Var.f24633a;
        m2 m2VarI = m2Var.i(l3Var);
        if (l3Var.u()) {
            com.google.android.exoplayer2.source.o.b bVarK = m2.k();
            long jB0 = com.google.android.exoplayer2.util.p0.B0(this.f23826w0);
            m2 m2VarB = m2VarI.c(bVarK, jB0, jB0, jB0, 0L, v9.y.f73559d, this.f23783b, ImmutableList.of()).b(bVarK);
            m2VarB.f24648p = m2VarB.f24650r;
            return m2VarB;
        }
        Object obj = m2VarI.f24634b.f73504a;
        boolean zEquals = obj.equals(((Pair) com.google.android.exoplayer2.util.p0.j(pair)).first);
        com.google.android.exoplayer2.source.o.b bVar = !zEquals ? new com.google.android.exoplayer2.source.o.b(pair.first) : m2VarI.f24634b;
        long jLongValue = ((Long) pair.second).longValue();
        long jB1 = com.google.android.exoplayer2.util.p0.B0(getContentPosition());
        if (!l3Var2.u()) {
            jB1 -= l3Var2.l(obj, this.f23807n).q();
        }
        if (!zEquals || jLongValue < jB1) {
            com.google.android.exoplayer2.util.a.g(!bVar.b());
            m2 m2VarB2 = m2VarI.c(bVar, jLongValue, jLongValue, jLongValue, 0L, !zEquals ? v9.y.f73559d : m2VarI.f24640h, !zEquals ? this.f23783b : m2VarI.f24641i, !zEquals ? ImmutableList.of() : m2VarI.f24642j).b(bVar);
            m2VarB2.f24648p = jLongValue;
            return m2VarB2;
        }
        if (jLongValue == jB1) {
            int iF = l3Var.f(m2VarI.f24643k.f73504a);
            if (iF == -1 || l3Var.j(iF, this.f23807n).f24525c != l3Var.l(bVar.f73504a, this.f23807n).f24525c) {
                l3Var.l(bVar.f73504a, this.f23807n);
                long jE = bVar.b() ? this.f23807n.e(bVar.f73505b, bVar.f73506c) : this.f23807n.f24526d;
                m2VarI = m2VarI.c(bVar, m2VarI.f24650r, m2VarI.f24650r, m2VarI.f24636d, jE - m2VarI.f24650r, m2VarI.f24640h, m2VarI.f24641i, m2VarI.f24642j).b(bVar);
                m2VarI.f24648p = jE;
            }
        } else {
            com.google.android.exoplayer2.util.a.g(!bVar.b());
            long jMax = Math.max(0L, m2VarI.f24649q - (jLongValue - jB1));
            long j10 = m2VarI.f24648p;
            if (m2VarI.f24643k.equals(m2VarI.f24634b)) {
                j10 = jLongValue + jMax;
            }
            m2VarI = m2VarI.c(bVar, jLongValue, jLongValue, jLongValue, jMax, m2VarI.f24640h, m2VarI.f24641i, m2VarI.f24642j);
            m2VarI.f24648p = j10;
        }
        return m2VarI;
    }

    private Pair K1(l3 l3Var, int i10, long j10) {
        if (l3Var.u()) {
            this.f23822u0 = i10;
            if (j10 == C.TIME_UNSET) {
                j10 = 0;
            }
            this.f23826w0 = j10;
            this.f23824v0 = 0;
            return null;
        }
        if (i10 == -1 || i10 >= l3Var.t()) {
            i10 = l3Var.e(this.G);
            j10 = l3Var.r(i10, this.f24447a).e();
        }
        return l3Var.n(this.f24447a, this.f23807n, i10, com.google.android.exoplayer2.util.p0.B0(j10));
    }

    public void L1(final int i10, final int i11) {
        if (i10 == this.f23786c0 && i11 == this.f23788d0) {
            return;
        }
        this.f23786c0 = i10;
        this.f23788d0 = i11;
        this.f23803l.l(24, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                ((p2.d) obj).onSurfaceSizeChanged(i10, i11);
            }
        });
    }

    private long M1(l3 l3Var, com.google.android.exoplayer2.source.o.b bVar, long j10) {
        l3Var.l(bVar.f73504a, this.f23807n);
        return j10 + this.f23807n.q();
    }

    private m2 N1(int i10, int i11) {
        com.google.android.exoplayer2.util.a.a(i10 >= 0 && i11 >= i10 && i11 <= this.f23809o.size());
        int iU = u();
        l3 currentTimeline = getCurrentTimeline();
        int size = this.f23809o.size();
        this.H++;
        O1(i10, i11);
        l3 l3VarV0 = V0();
        m2 m2VarJ1 = J1(this.f23820t0, l3VarV0, c1(currentTimeline, l3VarV0));
        int i12 = m2VarJ1.f24637e;
        if (i12 != 1 && i12 != 4 && i10 < i11 && i11 == size && iU >= m2VarJ1.f24633a.t()) {
            m2VarJ1 = m2VarJ1.g(4);
        }
        this.f23801k.l0(i10, i11, this.M);
        return m2VarJ1;
    }

    private void O1(int i10, int i11) {
        for (int i12 = i11 - 1; i12 >= i10; i12--) {
            this.f23809o.remove(i12);
        }
        this.M = this.M.a(i10, i11);
    }

    private void P1() {
        if (this.X != null) {
            X0(this.f23828y).n(10000).m(null).l();
            this.X.removeVideoSurfaceListener(this.f23827x);
            this.X = null;
        }
        TextureView textureView = this.Z;
        if (textureView != null) {
            if (textureView.getSurfaceTextureListener() != this.f23827x) {
                com.google.android.exoplayer2.util.s.i("ExoPlayerImpl", "SurfaceTextureListener already unset or replaced.");
            } else {
                this.Z.setSurfaceTextureListener(null);
            }
            this.Z = null;
        }
        SurfaceHolder surfaceHolder = this.W;
        if (surfaceHolder != null) {
            surfaceHolder.removeCallback(this.f23827x);
            this.W = null;
        }
    }

    private void Q1(int i10, int i11, Object obj) {
        for (y2 y2Var : this.f23793g) {
            if (y2Var.getTrackType() == i10) {
                X0(y2Var).n(i11).m(obj).l();
            }
        }
    }

    private List R0(int i10, List list) {
        ArrayList arrayList = new ArrayList();
        for (int i11 = 0; i11 < list.size(); i11++) {
            i2.c cVar = new i2.c((com.google.android.exoplayer2.source.o) list.get(i11), this.f23811p);
            arrayList.add(cVar);
            this.f23809o.add(i11 + i10, new e(cVar.f24497b, cVar.f24496a.P()));
        }
        this.M = this.M.cloneAndInsert(i10, arrayList.size());
        return arrayList;
    }

    public void R1() {
        Q1(1, 2, Float.valueOf(this.f23798i0 * this.A.g()));
    }

    public b2 S0() {
        l3 currentTimeline = getCurrentTimeline();
        if (currentTimeline.u()) {
            return this.f23818s0;
        }
        return this.f23818s0.b().H(currentTimeline.r(u(), this.f24447a).f24540c.f27152e).F();
    }

    public static r U0(g3 g3Var) {
        return new r(0, g3Var.d(), g3Var.c());
    }

    private void U1(List list, int i10, long j10, boolean z10) {
        int i11;
        long j11;
        int iB1 = b1();
        long currentPosition = getCurrentPosition();
        this.H++;
        if (!this.f23809o.isEmpty()) {
            O1(0, this.f23809o.size());
        }
        List listR0 = R0(0, list);
        l3 l3VarV0 = V0();
        if (!l3VarV0.u() && i10 >= l3VarV0.t()) {
            throw new IllegalSeekPositionException(l3VarV0, i10, j10);
        }
        if (z10) {
            int iE = l3VarV0.e(this.G);
            j11 = C.TIME_UNSET;
            i11 = iE;
        } else if (i10 == -1) {
            i11 = iB1;
            j11 = currentPosition;
        } else {
            i11 = i10;
            j11 = j10;
        }
        m2 m2VarJ1 = J1(this.f23820t0, l3VarV0, K1(l3VarV0, i11, j11));
        int i12 = m2VarJ1.f24637e;
        if (i11 != -1 && i12 != 1) {
            i12 = (l3VarV0.u() || i11 >= l3VarV0.t()) ? 4 : 2;
        }
        m2 m2VarG = m2VarJ1.g(i12);
        this.f23801k.K0(listR0, i11, com.google.android.exoplayer2.util.p0.B0(j11), this.M);
        d2(m2VarG, 0, 1, false, (this.f23820t0.f24634b.f73504a.equals(m2VarG.f24634b.f73504a) || this.f23820t0.f24633a.u()) ? false : true, 4, a1(m2VarG), -1);
    }

    private l3 V0() {
        return new u2(this.f23809o, this.M);
    }

    private void V1(SurfaceHolder surfaceHolder) {
        this.Y = false;
        this.W = surfaceHolder;
        surfaceHolder.addCallback(this.f23827x);
        Surface surface = this.W.getSurface();
        if (surface == null || !surface.isValid()) {
            L1(0, 0);
        } else {
            Rect surfaceFrame = this.W.getSurfaceFrame();
            L1(surfaceFrame.width(), surfaceFrame.height());
        }
    }

    private List W0(List list) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            arrayList.add(this.f23813q.a((w1) list.get(i10)));
        }
        return arrayList;
    }

    public void W1(SurfaceTexture surfaceTexture) {
        Surface surface = new Surface(surfaceTexture);
        X1(surface);
        this.V = surface;
    }

    private t2 X0(t2.b bVar) {
        int iB1 = b1();
        m1 m1Var = this.f23801k;
        l3 l3Var = this.f23820t0.f24633a;
        if (iB1 == -1) {
            iB1 = 0;
        }
        return new t2(m1Var, bVar, l3Var, iB1, this.f23825w, m1Var.z());
    }

    public void X1(Object obj) {
        boolean z10;
        ArrayList arrayList = new ArrayList();
        y2[] y2VarArr = this.f23793g;
        int length = y2VarArr.length;
        int i10 = 0;
        while (true) {
            z10 = true;
            if (i10 >= length) {
                break;
            }
            y2 y2Var = y2VarArr[i10];
            if (y2Var.getTrackType() == 2) {
                arrayList.add(X0(y2Var).n(1).m(obj).l());
            }
            i10++;
        }
        Object obj2 = this.U;
        if (obj2 == null || obj2 == obj) {
            z10 = false;
        } else {
            try {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((t2) it.next()).a(this.E);
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            } catch (TimeoutException unused2) {
            }
            z10 = false;
            Object obj3 = this.U;
            Surface surface = this.V;
            if (obj3 == surface) {
                surface.release();
                this.V = null;
            }
        }
        this.U = obj;
        if (z10) {
            a2(false, ExoPlaybackException.createForUnexpected(new ExoTimeoutException(3), 1003));
        }
    }

    private Pair Y0(m2 m2Var, m2 m2Var2, boolean z10, int i10, boolean z11) {
        l3 l3Var = m2Var2.f24633a;
        l3 l3Var2 = m2Var.f24633a;
        if (l3Var2.u() && l3Var.u()) {
            return new Pair(Boolean.FALSE, -1);
        }
        int i11 = 3;
        if (l3Var2.u() != l3Var.u()) {
            return new Pair(Boolean.TRUE, 3);
        }
        if (l3Var.r(l3Var.l(m2Var2.f24634b.f73504a, this.f23807n).f24525c, this.f24447a).f24538a.equals(l3Var2.r(l3Var2.l(m2Var.f24634b.f73504a, this.f23807n).f24525c, this.f24447a).f24538a)) {
            return (z10 && i10 == 0 && m2Var2.f24634b.f73507d < m2Var.f24634b.f73507d) ? new Pair(Boolean.TRUE, 0) : new Pair(Boolean.FALSE, -1);
        }
        if (z10 && i10 == 0) {
            i11 = 1;
        } else if (z10 && i10 == 1) {
            i11 = 2;
        } else if (!z11) {
            throw new IllegalStateException();
        }
        return new Pair(Boolean.TRUE, Integer.valueOf(i11));
    }

    private long a1(m2 m2Var) {
        if (m2Var.f24633a.u()) {
            return com.google.android.exoplayer2.util.p0.B0(this.f23826w0);
        }
        return m2Var.f24634b.b() ? m2Var.f24650r : M1(m2Var.f24633a, m2Var.f24634b, m2Var.f24650r);
    }

    private void a2(boolean z10, ExoPlaybackException exoPlaybackException) {
        m2 m2VarB;
        if (z10) {
            m2VarB = N1(0, this.f23809o.size()).e(null);
        } else {
            m2 m2Var = this.f23820t0;
            m2VarB = m2Var.b(m2Var.f24634b);
            m2VarB.f24648p = m2VarB.f24650r;
            m2VarB.f24649q = 0L;
        }
        m2 m2VarG = m2VarB.g(1);
        if (exoPlaybackException != null) {
            m2VarG = m2VarG.e(exoPlaybackException);
        }
        m2 m2Var2 = m2VarG;
        this.H++;
        this.f23801k.e1();
        d2(m2Var2, 0, 1, false, m2Var2.f24633a.u() && !this.f23820t0.f24633a.u(), 4, a1(m2Var2), -1);
    }

    private int b1() {
        if (this.f23820t0.f24633a.u()) {
            return this.f23822u0;
        }
        m2 m2Var = this.f23820t0;
        return m2Var.f24633a.l(m2Var.f24634b.f73504a, this.f23807n).f24525c;
    }

    private void b2() {
        p2.b bVar = this.O;
        p2.b bVarH = com.google.android.exoplayer2.util.p0.H(this.f23791f, this.f23785c);
        this.O = bVarH;
        if (bVarH.equals(bVar)) {
            return;
        }
        this.f23803l.i(13, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                this.f24977a.u1((p2.d) obj);
            }
        });
    }

    private Pair c1(l3 l3Var, l3 l3Var2) {
        long contentPosition = getContentPosition();
        if (l3Var.u() || l3Var2.u()) {
            boolean z10 = !l3Var.u() && l3Var2.u();
            int iB1 = z10 ? -1 : b1();
            if (z10) {
                contentPosition = -9223372036854775807L;
            }
            return K1(l3Var2, iB1, contentPosition);
        }
        Pair pairN = l3Var.n(this.f24447a, this.f23807n, u(), com.google.android.exoplayer2.util.p0.B0(contentPosition));
        Object obj = ((Pair) com.google.android.exoplayer2.util.p0.j(pairN)).first;
        if (l3Var2.f(obj) != -1) {
            return pairN;
        }
        Object objW0 = m1.w0(this.f24447a, this.f23807n, this.F, this.G, obj, l3Var, l3Var2);
        if (objW0 == null) {
            return K1(l3Var2, -1, C.TIME_UNSET);
        }
        l3Var2.l(objW0, this.f23807n);
        int i10 = this.f23807n.f24525c;
        return K1(l3Var2, i10, l3Var2.r(i10, this.f24447a).e());
    }

    public void c2(boolean z10, int i10, int i11) {
        int i12 = 0;
        boolean z11 = z10 && i10 != -1;
        if (z11 && i10 != 1) {
            i12 = 1;
        }
        m2 m2Var = this.f23820t0;
        if (m2Var.f24644l == z11 && m2Var.f24645m == i12) {
            return;
        }
        this.H++;
        m2 m2VarD = m2Var.d(z11, i12);
        this.f23801k.N0(z11, i12);
        d2(m2VarD, 0, i11, false, false, 5, C.TIME_UNSET, -1);
    }

    public static int d1(boolean z10, int i10) {
        return (!z10 || i10 == 1) ? 1 : 2;
    }

    private void d2(final m2 m2Var, final int i10, final int i11, boolean z10, boolean z11, final int i12, long j10, int i13) {
        m2 m2Var2 = this.f23820t0;
        this.f23820t0 = m2Var;
        Pair pairY0 = Y0(m2Var, m2Var2, z11, i12, !m2Var2.f24633a.equals(m2Var.f24633a));
        boolean zBooleanValue = ((Boolean) pairY0.first).booleanValue();
        final int iIntValue = ((Integer) pairY0.second).intValue();
        b2 b2VarS0 = this.P;
        final w1 w1Var = null;
        if (zBooleanValue) {
            if (!m2Var.f24633a.u()) {
                w1Var = m2Var.f24633a.r(m2Var.f24633a.l(m2Var.f24634b.f73504a, this.f23807n).f24525c, this.f24447a).f24540c;
            }
            this.f23818s0 = b2.G;
        }
        if (zBooleanValue || !m2Var2.f24642j.equals(m2Var.f24642j)) {
            this.f23818s0 = this.f23818s0.b().J(m2Var.f24642j).F();
            b2VarS0 = S0();
        }
        boolean zEquals = b2VarS0.equals(this.P);
        this.P = b2VarS0;
        boolean z12 = m2Var2.f24644l != m2Var.f24644l;
        boolean z13 = m2Var2.f24637e != m2Var.f24637e;
        if (z13 || z12) {
            f2();
        }
        boolean z14 = m2Var2.f24639g;
        boolean z15 = m2Var.f24639g;
        boolean z16 = z14 != z15;
        if (z16) {
            e2(z15);
        }
        if (!m2Var2.f24633a.equals(m2Var.f24633a)) {
            this.f23803l.i(0, new com.google.android.exoplayer2.util.r.a() {
                @Override
                public final void invoke(Object obj) {
                    a1.v1(m2Var, i10, (p2.d) obj);
                }
            });
        }
        if (z11) {
            final p2.e eVarG1 = g1(i12, m2Var2, i13);
            final p2.e eVarF1 = f1(j10);
            this.f23803l.i(11, new com.google.android.exoplayer2.util.r.a() {
                @Override
                public final void invoke(Object obj) {
                    a1.w1(i12, eVarG1, eVarF1, (p2.d) obj);
                }
            });
        }
        if (zBooleanValue) {
            this.f23803l.i(1, new com.google.android.exoplayer2.util.r.a() {
                @Override
                public final void invoke(Object obj) {
                    ((p2.d) obj).onMediaItemTransition(w1Var, iIntValue);
                }
            });
        }
        if (m2Var2.f24638f != m2Var.f24638f) {
            this.f23803l.i(10, new com.google.android.exoplayer2.util.r.a() {
                @Override
                public final void invoke(Object obj) {
                    a1.y1(m2Var, (p2.d) obj);
                }
            });
            if (m2Var.f24638f != null) {
                this.f23803l.i(10, new com.google.android.exoplayer2.util.r.a() {
                    @Override
                    public final void invoke(Object obj) {
                        a1.z1(m2Var, (p2.d) obj);
                    }
                });
            }
        }
        na.c0 c0Var = m2Var2.f24641i;
        na.c0 c0Var2 = m2Var.f24641i;
        if (c0Var != c0Var2) {
            this.f23795h.f(c0Var2.f67019e);
            this.f23803l.i(2, new com.google.android.exoplayer2.util.r.a() {
                @Override
                public final void invoke(Object obj) {
                    a1.A1(m2Var, (p2.d) obj);
                }
            });
        }
        if (!zEquals) {
            final b2 b2Var = this.P;
            this.f23803l.i(14, new com.google.android.exoplayer2.util.r.a() {
                @Override
                public final void invoke(Object obj) {
                    ((p2.d) obj).onMediaMetadataChanged(b2Var);
                }
            });
        }
        if (z16) {
            this.f23803l.i(3, new com.google.android.exoplayer2.util.r.a() {
                @Override
                public final void invoke(Object obj) {
                    a1.C1(m2Var, (p2.d) obj);
                }
            });
        }
        if (z13 || z12) {
            this.f23803l.i(-1, new com.google.android.exoplayer2.util.r.a() {
                @Override
                public final void invoke(Object obj) {
                    a1.D1(m2Var, (p2.d) obj);
                }
            });
        }
        if (z13) {
            this.f23803l.i(4, new com.google.android.exoplayer2.util.r.a() {
                @Override
                public final void invoke(Object obj) {
                    a1.E1(m2Var, (p2.d) obj);
                }
            });
        }
        if (z12) {
            this.f23803l.i(5, new com.google.android.exoplayer2.util.r.a() {
                @Override
                public final void invoke(Object obj) {
                    a1.F1(m2Var, i11, (p2.d) obj);
                }
            });
        }
        if (m2Var2.f24645m != m2Var.f24645m) {
            this.f23803l.i(6, new com.google.android.exoplayer2.util.r.a() {
                @Override
                public final void invoke(Object obj) {
                    a1.G1(m2Var, (p2.d) obj);
                }
            });
        }
        if (k1(m2Var2) != k1(m2Var)) {
            this.f23803l.i(7, new com.google.android.exoplayer2.util.r.a() {
                @Override
                public final void invoke(Object obj) {
                    a1.H1(m2Var, (p2.d) obj);
                }
            });
        }
        if (!m2Var2.f24646n.equals(m2Var.f24646n)) {
            this.f23803l.i(12, new com.google.android.exoplayer2.util.r.a() {
                @Override
                public final void invoke(Object obj) {
                    a1.I1(m2Var, (p2.d) obj);
                }
            });
        }
        if (z10) {
            this.f23803l.i(-1, new com.google.android.exoplayer2.util.r.a() {
                @Override
                public final void invoke(Object obj) {
                    ((p2.d) obj).onSeekProcessed();
                }
            });
        }
        b2();
        this.f23803l.f();
        if (m2Var2.f24647o != m2Var.f24647o) {
            Iterator it = this.f23805m.iterator();
            while (it.hasNext()) {
                ((t.a) it.next()).x(m2Var.f24647o);
            }
        }
    }

    private void e2(boolean z10) {
        PriorityTaskManager priorityTaskManager = this.f23808n0;
        if (priorityTaskManager != null) {
            if (z10 && !this.f23810o0) {
                priorityTaskManager.a(0);
                this.f23810o0 = true;
            } else {
                if (z10 || !this.f23810o0) {
                    return;
                }
                priorityTaskManager.d(0);
                this.f23810o0 = false;
            }
        }
    }

    private p2.e f1(long j10) {
        w1 w1Var;
        Object obj;
        int iF;
        Object obj2;
        int iU = u();
        if (this.f23820t0.f24633a.u()) {
            w1Var = null;
            obj = null;
            iF = -1;
            obj2 = null;
        } else {
            m2 m2Var = this.f23820t0;
            Object obj3 = m2Var.f24634b.f73504a;
            m2Var.f24633a.l(obj3, this.f23807n);
            iF = this.f23820t0.f24633a.f(obj3);
            obj = obj3;
            obj2 = this.f23820t0.f24633a.r(iU, this.f24447a).f24538a;
            w1Var = this.f24447a.f24540c;
        }
        long jE1 = com.google.android.exoplayer2.util.p0.e1(j10);
        long jE2 = this.f23820t0.f24634b.b() ? com.google.android.exoplayer2.util.p0.e1(h1(this.f23820t0)) : jE1;
        com.google.android.exoplayer2.source.o.b bVar = this.f23820t0.f24634b;
        return new p2.e(obj2, iU, w1Var, obj, iF, jE1, jE2, bVar.f73505b, bVar.f73506c);
    }

    public void f2() {
        int playbackState = getPlaybackState();
        if (playbackState != 1) {
            if (playbackState == 2 || playbackState == 3) {
                this.C.b(getPlayWhenReady() && !Z0());
                this.D.b(getPlayWhenReady());
                return;
            } else if (playbackState != 4) {
                throw new IllegalStateException();
            }
        }
        this.C.b(false);
        this.D.b(false);
    }

    private p2.e g1(int i10, m2 m2Var, int i11) {
        int i12;
        Object obj;
        w1 w1Var;
        Object obj2;
        int i13;
        long jH1;
        long jH2;
        l3.b bVar = new l3.b();
        if (m2Var.f24633a.u()) {
            i12 = i11;
            obj = null;
            w1Var = null;
            obj2 = null;
            i13 = -1;
        } else {
            Object obj3 = m2Var.f24634b.f73504a;
            m2Var.f24633a.l(obj3, bVar);
            int i14 = bVar.f24525c;
            int iF = m2Var.f24633a.f(obj3);
            Object obj4 = m2Var.f24633a.r(i14, this.f24447a).f24538a;
            w1Var = this.f24447a.f24540c;
            obj2 = obj3;
            i13 = iF;
            obj = obj4;
            i12 = i14;
        }
        if (i10 == 0) {
            if (m2Var.f24634b.b()) {
                com.google.android.exoplayer2.source.o.b bVar2 = m2Var.f24634b;
                jH1 = bVar.e(bVar2.f73505b, bVar2.f73506c);
                jH2 = h1(m2Var);
            } else {
                jH1 = m2Var.f24634b.f73508e != -1 ? h1(this.f23820t0) : bVar.f24527e + bVar.f24526d;
                jH2 = jH1;
            }
        } else if (m2Var.f24634b.b()) {
            jH1 = m2Var.f24650r;
            jH2 = h1(m2Var);
        } else {
            jH1 = bVar.f24527e + m2Var.f24650r;
            jH2 = jH1;
        }
        long jE1 = com.google.android.exoplayer2.util.p0.e1(jH1);
        long jE2 = com.google.android.exoplayer2.util.p0.e1(jH2);
        com.google.android.exoplayer2.source.o.b bVar3 = m2Var.f24634b;
        return new p2.e(obj, i12, w1Var, obj2, i13, jE1, jE2, bVar3.f73505b, bVar3.f73506c);
    }

    private void g2() {
        this.f23787d.c();
        if (Thread.currentThread() != l().getThread()) {
            String strC = com.google.android.exoplayer2.util.p0.C("Player is accessed on the wrong thread.\nCurrent thread: '%s'\nExpected thread: '%s'\nSee https://exoplayer.dev/issues/player-accessed-on-wrong-thread", Thread.currentThread().getName(), l().getThread().getName());
            if (this.f23804l0) {
                throw new IllegalStateException(strC);
            }
            com.google.android.exoplayer2.util.s.j("ExoPlayerImpl", strC, this.f23806m0 ? null : new IllegalStateException());
            this.f23806m0 = true;
        }
    }

    private static long h1(m2 m2Var) {
        l3.d dVar = new l3.d();
        l3.b bVar = new l3.b();
        m2Var.f24633a.l(m2Var.f24634b.f73504a, bVar);
        return m2Var.f24635c == C.TIME_UNSET ? m2Var.f24633a.r(bVar.f24525c, dVar).f() : bVar.q() + m2Var.f24635c;
    }

    public void n1(m1.e eVar) {
        long j10;
        boolean z10;
        long jM1;
        int i10 = this.H - eVar.f24618c;
        this.H = i10;
        boolean z11 = true;
        if (eVar.f24619d) {
            this.I = eVar.f24620e;
            this.J = true;
        }
        if (eVar.f24621f) {
            this.K = eVar.f24622g;
        }
        if (i10 == 0) {
            l3 l3Var = eVar.f24617b.f24633a;
            if (!this.f23820t0.f24633a.u() && l3Var.u()) {
                this.f23822u0 = -1;
                this.f23826w0 = 0L;
                this.f23824v0 = 0;
            }
            if (!l3Var.u()) {
                List listK = ((u2) l3Var).K();
                com.google.android.exoplayer2.util.a.g(listK.size() == this.f23809o.size());
                for (int i11 = 0; i11 < listK.size(); i11++) {
                    ((e) this.f23809o.get(i11)).f23836b = (l3) listK.get(i11);
                }
            }
            if (this.J) {
                if (eVar.f24617b.f24634b.equals(this.f23820t0.f24634b) && eVar.f24617b.f24636d == this.f23820t0.f24650r) {
                    z11 = false;
                }
                if (z11) {
                    if (l3Var.u() || eVar.f24617b.f24634b.b()) {
                        jM1 = eVar.f24617b.f24636d;
                    } else {
                        m2 m2Var = eVar.f24617b;
                        jM1 = M1(l3Var, m2Var.f24634b, m2Var.f24636d);
                    }
                    j10 = jM1;
                } else {
                    j10 = -9223372036854775807L;
                }
                z10 = z11;
            } else {
                j10 = -9223372036854775807L;
                z10 = false;
            }
            this.J = false;
            d2(eVar.f24617b, 1, this.K, false, z10, this.I, j10, -1);
        }
    }

    private int j1(int i10) {
        AudioTrack audioTrack = this.T;
        if (audioTrack != null && audioTrack.getAudioSessionId() != i10) {
            this.T.release();
            this.T = null;
        }
        if (this.T == null) {
            this.T = new AudioTrack(3, 4000, 4, 2, 2, 0, i10);
        }
        return this.T.getAudioSessionId();
    }

    private static boolean k1(m2 m2Var) {
        return m2Var.f24637e == 3 && m2Var.f24644l && m2Var.f24645m == 0;
    }

    public void m1(p2.d dVar, com.google.android.exoplayer2.util.m mVar) {
        dVar.onEvents(this.f23791f, new p2.c(mVar));
    }

    public void o1(final m1.e eVar) {
        this.f23797i.post(new Runnable() {
            @Override
            public final void run() {
                this.f24959a.n1(eVar);
            }
        });
    }

    public static void p1(p2.d dVar) {
        dVar.onPlayerError(ExoPlaybackException.createForUnexpected(new ExoTimeoutException(1), 1003));
    }

    public void u1(p2.d dVar) {
        dVar.onAvailableCommandsChanged(this.O);
    }

    public static void v1(m2 m2Var, int i10, p2.d dVar) {
        dVar.onTimelineChanged(m2Var.f24633a, i10);
    }

    public static void w1(int i10, p2.e eVar, p2.e eVar2, p2.d dVar) {
        dVar.onPositionDiscontinuity(i10);
        dVar.onPositionDiscontinuity(eVar, eVar2, i10);
    }

    public static void y1(m2 m2Var, p2.d dVar) {
        dVar.onPlayerErrorChanged(m2Var.f24638f);
    }

    public static void z1(m2 m2Var, p2.d dVar) {
        dVar.onPlayerError(m2Var.f24638f);
    }

    @Override
    public void B(p2.d dVar) {
        com.google.android.exoplayer2.util.a.e(dVar);
        this.f23803l.k(dVar);
    }

    @Override
    public void D(final na.z zVar) {
        g2();
        if (!this.f23795h.e() || zVar.equals(this.f23795h.b())) {
            return;
        }
        this.f23795h.j(zVar);
        this.f23803l.l(19, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                ((p2.d) obj).onTrackSelectionParametersChanged(zVar);
            }
        });
    }

    @Override
    public void E(p2.d dVar) {
        com.google.android.exoplayer2.util.a.e(dVar);
        this.f23803l.c(dVar);
    }

    public void P0(g9.c cVar) {
        com.google.android.exoplayer2.util.a.e(cVar);
        this.f23815r.q(cVar);
    }

    public void Q0(t.a aVar) {
        this.f23805m.add(aVar);
    }

    public void S1(List list) {
        g2();
        T1(list, true);
    }

    public void T0(SurfaceHolder surfaceHolder) {
        g2();
        if (surfaceHolder == null || surfaceHolder != this.W) {
            return;
        }
        clearVideoSurface();
    }

    public void T1(List list, boolean z10) {
        g2();
        U1(list, -1, C.TIME_UNSET, z10);
    }

    public void Y1(SurfaceHolder surfaceHolder) {
        g2();
        if (surfaceHolder == null) {
            clearVideoSurface();
            return;
        }
        P1();
        this.Y = true;
        this.W = surfaceHolder;
        surfaceHolder.addCallback(this.f23827x);
        Surface surface = surfaceHolder.getSurface();
        if (surface == null || !surface.isValid()) {
            X1(null);
            L1(0, 0);
        } else {
            X1(surface);
            Rect surfaceFrame = surfaceHolder.getSurfaceFrame();
            L1(surfaceFrame.width(), surfaceFrame.height());
        }
    }

    public boolean Z0() {
        g2();
        return this.f23820t0.f24647o;
    }

    public void Z1(boolean z10) {
        g2();
        this.A.p(getPlayWhenReady(), 1);
        a2(z10, null);
        this.f23802k0 = da.f.f58958b;
    }

    @Override
    public void a(com.google.android.exoplayer2.source.o oVar) {
        g2();
        S1(Collections.singletonList(oVar));
    }

    @Override
    public void b(o2 o2Var) {
        g2();
        if (o2Var == null) {
            o2Var = o2.f24843d;
        }
        if (this.f23820t0.f24646n.equals(o2Var)) {
            return;
        }
        m2 m2VarF = this.f23820t0.f(o2Var);
        this.H++;
        this.f23801k.P0(o2Var);
        d2(m2VarF, 0, 1, false, false, 5, C.TIME_UNSET, -1);
    }

    @Override
    public void clearVideoSurface() {
        g2();
        P1();
        X1(null);
        L1(0, 0);
    }

    @Override
    public void clearVideoSurfaceView(SurfaceView surfaceView) {
        g2();
        T0(surfaceView == null ? null : surfaceView.getHolder());
    }

    @Override
    public void clearVideoTextureView(TextureView textureView) {
        g2();
        if (textureView == null || textureView != this.Z) {
            return;
        }
        clearVideoSurface();
    }

    @Override
    public long d() {
        g2();
        return com.google.android.exoplayer2.util.p0.e1(this.f23820t0.f24649q);
    }

    @Override
    public void e(List list, boolean z10) {
        g2();
        T1(W0(list), z10);
    }

    @Override
    public ExoPlaybackException c() {
        g2();
        return this.f23820t0.f24638f;
    }

    @Override
    public long getContentPosition() {
        g2();
        if (!isPlayingAd()) {
            return getCurrentPosition();
        }
        m2 m2Var = this.f23820t0;
        m2Var.f24633a.l(m2Var.f24634b.f73504a, this.f23807n);
        m2 m2Var2 = this.f23820t0;
        return m2Var2.f24635c == C.TIME_UNSET ? m2Var2.f24633a.r(u(), this.f24447a).e() : this.f23807n.p() + com.google.android.exoplayer2.util.p0.e1(this.f23820t0.f24635c);
    }

    @Override
    public int getCurrentAdGroupIndex() {
        g2();
        if (isPlayingAd()) {
            return this.f23820t0.f24634b.f73505b;
        }
        return -1;
    }

    @Override
    public int getCurrentAdIndexInAdGroup() {
        g2();
        if (isPlayingAd()) {
            return this.f23820t0.f24634b.f73506c;
        }
        return -1;
    }

    @Override
    public int getCurrentPeriodIndex() {
        g2();
        if (this.f23820t0.f24633a.u()) {
            return this.f23824v0;
        }
        m2 m2Var = this.f23820t0;
        return m2Var.f24633a.f(m2Var.f24634b.f73504a);
    }

    @Override
    public long getCurrentPosition() {
        g2();
        return com.google.android.exoplayer2.util.p0.e1(a1(this.f23820t0));
    }

    @Override
    public l3 getCurrentTimeline() {
        g2();
        return this.f23820t0.f24633a;
    }

    @Override
    public q3 getCurrentTracks() {
        g2();
        return this.f23820t0.f24641i.f67018d;
    }

    @Override
    public long getDuration() {
        g2();
        if (!isPlayingAd()) {
            return F();
        }
        m2 m2Var = this.f23820t0;
        com.google.android.exoplayer2.source.o.b bVar = m2Var.f24634b;
        m2Var.f24633a.l(bVar.f73504a, this.f23807n);
        return com.google.android.exoplayer2.util.p0.e1(this.f23807n.e(bVar.f73505b, bVar.f73506c));
    }

    @Override
    public boolean getPlayWhenReady() {
        g2();
        return this.f23820t0.f24644l;
    }

    @Override
    public o2 getPlaybackParameters() {
        g2();
        return this.f23820t0.f24646n;
    }

    @Override
    public int getPlaybackState() {
        g2();
        return this.f23820t0.f24637e;
    }

    @Override
    public int getRepeatMode() {
        g2();
        return this.F;
    }

    @Override
    public boolean getShuffleModeEnabled() {
        g2();
        return this.G;
    }

    @Override
    public float getVolume() {
        g2();
        return this.f23798i0;
    }

    @Override
    public da.f h() {
        g2();
        return this.f23802k0;
    }

    @Override
    public boolean isPlayingAd() {
        g2();
        return this.f23820t0.f24634b.b();
    }

    @Override
    public int k() {
        g2();
        return this.f23820t0.f24645m;
    }

    @Override
    public Looper l() {
        return this.f23817s;
    }

    @Override
    public na.z m() {
        g2();
        return this.f23795h.b();
    }

    @Override
    public p2.b o() {
        g2();
        return this.O;
    }

    @Override
    public long p() {
        g2();
        return 3000L;
    }

    @Override
    public void prepare() {
        g2();
        boolean playWhenReady = getPlayWhenReady();
        int iP = this.A.p(playWhenReady, 2);
        c2(playWhenReady, iP, d1(playWhenReady, iP));
        m2 m2Var = this.f23820t0;
        if (m2Var.f24637e != 1) {
            return;
        }
        m2 m2VarE = m2Var.e(null);
        m2 m2VarG = m2VarE.g(m2VarE.f24633a.u() ? 4 : 2);
        this.H++;
        this.f23801k.g0();
        d2(m2VarG, 1, 1, false, false, 5, C.TIME_UNSET, -1);
    }

    @Override
    public com.google.android.exoplayer2.video.y q() {
        g2();
        return this.f23816r0;
    }

    @Override
    public void release() {
        AudioTrack audioTrack;
        com.google.android.exoplayer2.util.s.f("ExoPlayerImpl", "Release " + Integer.toHexString(System.identityHashCode(this)) + " [ExoPlayerLib/2.18.1] [" + com.google.android.exoplayer2.util.p0.f26858e + "] [" + n1.b() + "]");
        g2();
        if (com.google.android.exoplayer2.util.p0.f26854a < 21 && (audioTrack = this.T) != null) {
            audioTrack.release();
            this.T = null;
        }
        this.f23829z.b(false);
        this.B.g();
        this.C.b(false);
        this.D.b(false);
        this.A.i();
        if (!this.f23801k.i0()) {
            this.f23803l.l(10, new com.google.android.exoplayer2.util.r.a() {
                @Override
                public final void invoke(Object obj) {
                    a1.p1((p2.d) obj);
                }
            });
        }
        this.f23803l.j();
        this.f23797i.removeCallbacksAndMessages(null);
        this.f23819t.d(this.f23815r);
        m2 m2VarG = this.f23820t0.g(1);
        this.f23820t0 = m2VarG;
        m2 m2VarB = m2VarG.b(m2VarG.f24634b);
        this.f23820t0 = m2VarB;
        m2VarB.f24648p = m2VarB.f24650r;
        this.f23820t0.f24649q = 0L;
        this.f23815r.release();
        this.f23795h.g();
        P1();
        Surface surface = this.V;
        if (surface != null) {
            surface.release();
            this.V = null;
        }
        if (this.f23810o0) {
            ((PriorityTaskManager) com.google.android.exoplayer2.util.a.e(this.f23808n0)).d(0);
            this.f23810o0 = false;
        }
        this.f23802k0 = da.f.f58958b;
        this.f23812p0 = true;
    }

    @Override
    public long s() {
        g2();
        return this.f23823v;
    }

    @Override
    public void seekTo(int i10, long j10) {
        g2();
        this.f23815r.m();
        l3 l3Var = this.f23820t0.f24633a;
        if (i10 < 0 || (!l3Var.u() && i10 >= l3Var.t())) {
            throw new IllegalSeekPositionException(l3Var, i10, j10);
        }
        this.H++;
        if (isPlayingAd()) {
            com.google.android.exoplayer2.util.s.i("ExoPlayerImpl", "seekTo ignored because an ad is playing");
            m1.e eVar = new m1.e(this.f23820t0);
            eVar.b(1);
            this.f23799j.a(eVar);
            return;
        }
        int i11 = getPlaybackState() != 1 ? 2 : 1;
        int iU = u();
        m2 m2VarJ1 = J1(this.f23820t0.g(i11), l3Var, K1(l3Var, i10, j10));
        this.f23801k.y0(l3Var, i10, com.google.android.exoplayer2.util.p0.B0(j10));
        d2(m2VarJ1, 0, 1, true, true, 1, a1(m2VarJ1), iU);
    }

    @Override
    public void setPlayWhenReady(boolean z10) {
        g2();
        int iP = this.A.p(z10, getPlaybackState());
        c2(z10, iP, d1(z10, iP));
    }

    @Override
    public void setRepeatMode(final int i10) {
        g2();
        if (this.F != i10) {
            this.F = i10;
            this.f23801k.R0(i10);
            this.f23803l.i(8, new com.google.android.exoplayer2.util.r.a() {
                @Override
                public final void invoke(Object obj) {
                    ((p2.d) obj).onRepeatModeChanged(i10);
                }
            });
            b2();
            this.f23803l.f();
        }
    }

    @Override
    public void setShuffleModeEnabled(final boolean z10) {
        g2();
        if (this.G != z10) {
            this.G = z10;
            this.f23801k.U0(z10);
            this.f23803l.i(9, new com.google.android.exoplayer2.util.r.a() {
                @Override
                public final void invoke(Object obj) {
                    ((p2.d) obj).onShuffleModeEnabledChanged(z10);
                }
            });
            b2();
            this.f23803l.f();
        }
    }

    @Override
    public void setVideoSurfaceView(SurfaceView surfaceView) {
        g2();
        if (surfaceView instanceof com.google.android.exoplayer2.video.h) {
            P1();
            X1(surfaceView);
            V1(surfaceView.getHolder());
        } else {
            if (!(surfaceView instanceof SphericalGLSurfaceView)) {
                Y1(surfaceView == null ? null : surfaceView.getHolder());
                return;
            }
            P1();
            this.X = (SphericalGLSurfaceView) surfaceView;
            X0(this.f23828y).n(10000).m(this.X).l();
            this.X.addVideoSurfaceListener(this.f23827x);
            X1(this.X.getVideoSurface());
            V1(surfaceView.getHolder());
        }
    }

    @Override
    public void setVideoTextureView(TextureView textureView) {
        g2();
        if (textureView == null) {
            clearVideoSurface();
            return;
        }
        P1();
        this.Z = textureView;
        if (textureView.getSurfaceTextureListener() != null) {
            com.google.android.exoplayer2.util.s.i("ExoPlayerImpl", "Replacing existing SurfaceTextureListener.");
        }
        textureView.setSurfaceTextureListener(this.f23827x);
        SurfaceTexture surfaceTexture = textureView.isAvailable() ? textureView.getSurfaceTexture() : null;
        if (surfaceTexture == null) {
            X1(null);
            L1(0, 0);
        } else {
            W1(surfaceTexture);
            L1(textureView.getWidth(), textureView.getHeight());
        }
    }

    @Override
    public void setVolume(float f10) {
        g2();
        final float fP = com.google.android.exoplayer2.util.p0.p(f10, 0.0f, 1.0f);
        if (this.f23798i0 == fP) {
            return;
        }
        this.f23798i0 = fP;
        R1();
        this.f23803l.l(22, new com.google.android.exoplayer2.util.r.a() {
            @Override
            public final void invoke(Object obj) {
                ((p2.d) obj).onVolumeChanged(fP);
            }
        });
    }

    @Override
    public void stop() {
        g2();
        Z1(false);
    }

    @Override
    public int u() {
        g2();
        int iB1 = b1();
        if (iB1 == -1) {
            return 0;
        }
        return iB1;
    }

    @Override
    public long v() {
        g2();
        if (this.f23820t0.f24633a.u()) {
            return this.f23826w0;
        }
        m2 m2Var = this.f23820t0;
        if (m2Var.f24643k.f73507d != m2Var.f24634b.f73507d) {
            return m2Var.f24633a.r(u(), this.f24447a).g();
        }
        long j10 = m2Var.f24648p;
        if (this.f23820t0.f24643k.b()) {
            m2 m2Var2 = this.f23820t0;
            l3.b bVarL = m2Var2.f24633a.l(m2Var2.f24643k.f73504a, this.f23807n);
            long jI = bVarL.i(this.f23820t0.f24643k.f73505b);
            j10 = jI == Long.MIN_VALUE ? bVarL.f24526d : jI;
        }
        m2 m2Var3 = this.f23820t0;
        return com.google.android.exoplayer2.util.p0.e1(M1(m2Var3.f24633a, m2Var3.f24643k, j10));
    }

    @Override
    public b2 y() {
        g2();
        return this.P;
    }

    @Override
    public long z() {
        g2();
        return this.f23821u;
    }
}
