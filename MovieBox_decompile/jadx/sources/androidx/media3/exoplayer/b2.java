package androidx.media3.exoplayer;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.media3.common.IllegalSeekPositionException;
import androidx.media3.common.PriorityTaskManager;
import androidx.media3.exoplayer.audio.AudioSink;
import androidx.media3.exoplayer.image.ImageOutput;
import androidx.media3.exoplayer.video.spherical.SphericalGLSurfaceView;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;

final class b2 extends androidx.media3.common.g implements ExoPlayer {
    private final d A;
    private final androidx.media3.exoplayer.e B;
    private final k4 C;
    private final p4 D;
    private final s4 E;
    private final long F;
    private final m4 G;
    private final androidx.media3.common.util.g H;
    private int I;
    private boolean J;
    private int K;
    private int L;
    private boolean M;
    private c4 N;
    private f2.v O;
    private ExoPlayer.c P;
    private boolean Q;
    private androidx.media3.common.a0.b R;
    private androidx.media3.common.v S;
    private androidx.media3.common.v T;
    private androidx.media3.common.r U;
    private androidx.media3.common.r V;
    private Object W;
    private Surface X;
    private SurfaceHolder Y;
    private SphericalGLSurfaceView Z;

    private boolean f10949a0;

    final i2.f0 f10950b;

    private TextureView f10951b0;

    final androidx.media3.common.a0.b f10952c;

    private int f10953c0;

    private final androidx.media3.common.util.l f10954d = new androidx.media3.common.util.l();

    private int f10955d0;

    private final Context f10956e;

    private androidx.media3.common.util.l0 f10957e0;

    private final androidx.media3.common.a0 f10958f;

    private j f10959f0;

    private final w3[] f10960g;

    private j f10961g0;

    private final w3[] f10962h;

    private androidx.media3.common.c f10963h0;

    private final i2.e0 f10964i;

    private float f10965i0;

    private final androidx.media3.common.util.p f10966j;

    private boolean f10967j0;

    private final r2.f f10968k;

    private u1.b f10969k0;

    private final r2 f10970l;

    private boolean f10971l0;

    private final androidx.media3.common.util.t f10972m;

    private boolean f10973m0;

    private final CopyOnWriteArraySet f10974n;

    private int f10975n0;

    private final androidx.media3.common.e0.b f10976o;

    private PriorityTaskManager f10977o0;

    private final List f10978p;

    private boolean f10979p0;

    private final boolean f10980q;

    private boolean f10981q0;

    private final androidx.media3.exoplayer.source.r.a f10982r;

    private androidx.media3.common.m f10983r0;

    private final x1.a f10984s;

    private androidx.media3.common.m0 f10985s0;

    private final Looper f10986t;

    private androidx.media3.common.v f10987t0;

    private final androidx.media3.exoplayer.upstream.e f10988u;

    private r3 f10989u0;

    private final long f10990v;

    private int f10991v0;

    private final long f10992w;

    private int f10993w0;

    private final long f10994x;

    private long f10995x0;

    private final androidx.media3.common.util.i f10996y;

    private final c f10997z;

    static final class b {
        public static void b(Context context, boolean z10, b2 b2Var, x1.f4 f4Var) {
            x1.b4 b4VarE0 = x1.b4.E0(context);
            if (b4VarE0 == null) {
                androidx.media3.common.util.u.h("ExoPlayerImpl", "MediaMetricsService unavailable.");
                return;
            }
            if (z10) {
                b2Var.D(b4VarE0);
            }
            f4Var.b(b4VarE0.L0());
        }

        public static void c(final Context context, final b2 b2Var, final boolean z10, final x1.f4 f4Var) {
            b2Var.B1().createHandler(b2Var.G1(), null).post(new Runnable() {
                @Override
                public final void run() {
                    b2.b.b(context, z10, b2Var, f4Var);
                }
            });
        }
    }

    final class c implements androidx.media3.exoplayer.video.i0, androidx.media3.exoplayer.audio.x, h2.h, d2.b, SurfaceHolder.Callback, TextureView.SurfaceTextureListener, SphericalGLSurfaceView.b, androidx.media3.exoplayer.e.b, k4.b, ExoPlayer.a {
        private c() {
        }

        public void I(androidx.media3.common.a0.d dVar) {
            dVar.onMediaMetadataChanged(b2.this.S);
        }

        @Override
        public void a(Exception exc) {
            b2.this.f10984s.a(exc);
        }

        @Override
        public void b(String str) {
            b2.this.f10984s.b(str);
        }

        @Override
        public void c(String str) {
            b2.this.f10984s.c(str);
        }

        @Override
        public void d(long j10) {
            b2.this.f10984s.d(j10);
        }

        @Override
        public void e(Exception exc) {
            b2.this.f10984s.e(exc);
        }

        @Override
        public void f(Object obj, long j10) {
            b2.this.f10984s.f(obj, j10);
            if (b2.this.W == obj) {
                b2.this.f10972m.l(26, new androidx.media3.common.util.t.a() {
                    @Override
                    public final void invoke(Object obj2) {
                        ((androidx.media3.common.a0.d) obj2).onRenderedFirstFrame();
                    }
                });
            }
        }

        @Override
        public void g(Exception exc) {
            b2.this.f10984s.g(exc);
        }

        @Override
        public void h(int i10, long j10, long j11) {
            b2.this.f10984s.h(i10, j10, j11);
        }

        @Override
        public void i(long j10, int i10) {
            b2.this.f10984s.i(j10, i10);
        }

        @Override
        public void j(AudioSink.a aVar) {
            b2.this.f10984s.j(aVar);
        }

        @Override
        public void k(AudioSink.a aVar) {
            b2.this.f10984s.k(aVar);
        }

        @Override
        public void l(int i10) {
            final androidx.media3.common.m mVarW1 = b2.w1(b2.this.C);
            if (mVarW1.equals(b2.this.f10983r0)) {
                return;
            }
            b2.this.f10983r0 = mVarW1;
            b2.this.f10972m.l(29, new androidx.media3.common.util.t.a() {
                @Override
                public final void invoke(Object obj) {
                    ((androidx.media3.common.a0.d) obj).onDeviceInfoChanged(mVarW1);
                }
            });
        }

        @Override
        public void m() {
            b2.this.I2(false, 3);
        }

        @Override
        public void n(j jVar) {
            b2.this.f10961g0 = jVar;
            b2.this.f10984s.n(jVar);
        }

        @Override
        public void o(j jVar) {
            b2.this.f10959f0 = jVar;
            b2.this.f10984s.o(jVar);
        }

        @Override
        public void onAudioDecoderInitialized(String str, long j10, long j11) {
            b2.this.f10984s.onAudioDecoderInitialized(str, j10, j11);
        }

        @Override
        public void onCues(final List list) {
            b2.this.f10972m.l(27, new androidx.media3.common.util.t.a() {
                @Override
                public final void invoke(Object obj) {
                    ((androidx.media3.common.a0.d) obj).onCues(list);
                }
            });
        }

        @Override
        public void onDroppedFrames(int i10, long j10) {
            b2.this.f10984s.onDroppedFrames(i10, j10);
        }

        @Override
        public void onMetadata(final androidx.media3.common.x xVar) {
            b2 b2Var = b2.this;
            b2Var.f10987t0 = b2Var.f10987t0.a().M(xVar).J();
            androidx.media3.common.v vVarS1 = b2.this.s1();
            if (!vVarS1.equals(b2.this.S)) {
                b2.this.S = vVarS1;
                b2.this.f10972m.i(14, new androidx.media3.common.util.t.a() {
                    @Override
                    public final void invoke(Object obj) {
                        this.f11311a.I((androidx.media3.common.a0.d) obj);
                    }
                });
            }
            b2.this.f10972m.i(28, new androidx.media3.common.util.t.a() {
                @Override
                public final void invoke(Object obj) {
                    ((androidx.media3.common.a0.d) obj).onMetadata(xVar);
                }
            });
            b2.this.f10972m.f();
        }

        @Override
        public void onSkipSilenceEnabledChanged(final boolean z10) {
            if (b2.this.f10967j0 == z10) {
                return;
            }
            b2.this.f10967j0 = z10;
            b2.this.f10972m.l(23, new androidx.media3.common.util.t.a() {
                @Override
                public final void invoke(Object obj) {
                    ((androidx.media3.common.a0.d) obj).onSkipSilenceEnabledChanged(z10);
                }
            });
        }

        @Override
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i10, int i11) {
            b2.this.C2(surfaceTexture);
            b2.this.p2(i10, i11);
        }

        @Override
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            b2.this.D2(null);
            b2.this.p2(0, 0);
            return true;
        }

        @Override
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i10, int i11) {
            b2.this.p2(i10, i11);
        }

        @Override
        public void onVideoDecoderInitialized(String str, long j10, long j11) {
            b2.this.f10984s.onVideoDecoderInitialized(str, j10, j11);
        }

        @Override
        public void onVideoSizeChanged(final androidx.media3.common.m0 m0Var) {
            b2.this.f10985s0 = m0Var;
            b2.this.f10972m.l(25, new androidx.media3.common.util.t.a() {
                @Override
                public final void invoke(Object obj) {
                    ((androidx.media3.common.a0.d) obj).onVideoSizeChanged(m0Var);
                }
            });
        }

        @Override
        public void p(Surface surface) {
            b2.this.D2(null);
        }

        @Override
        public void q(Surface surface) {
            b2.this.D2(surface);
        }

        @Override
        public void r(final int i10, final boolean z10) {
            b2.this.f10972m.l(30, new androidx.media3.common.util.t.a() {
                @Override
                public final void invoke(Object obj) {
                    ((androidx.media3.common.a0.d) obj).onDeviceVolumeChanged(i10, z10);
                }
            });
        }

        @Override
        public void s(androidx.media3.common.r rVar, k kVar) {
            b2.this.V = rVar;
            b2.this.f10984s.s(rVar, kVar);
        }

        @Override
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i10, int i11, int i12) {
            b2.this.p2(i11, i12);
        }

        @Override
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            if (b2.this.f10949a0) {
                b2.this.D2(surfaceHolder.getSurface());
            }
        }

        @Override
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            if (b2.this.f10949a0) {
                b2.this.D2(null);
            }
            b2.this.p2(0, 0);
        }

        @Override
        public void t(j jVar) {
            b2.this.f10984s.t(jVar);
            b2.this.V = null;
            b2.this.f10961g0 = null;
        }

        @Override
        public void u(androidx.media3.common.r rVar, k kVar) {
            b2.this.U = rVar;
            b2.this.f10984s.u(rVar, kVar);
        }

        @Override
        public void v(j jVar) {
            b2.this.f10984s.v(jVar);
            b2.this.U = null;
            b2.this.f10959f0 = null;
        }

        @Override
        public void w(boolean z10) {
            p0.a(this, z10);
        }

        @Override
        public void x(boolean z10) {
            b2.this.L2();
        }

        @Override
        public void onCues(final u1.b bVar) {
            b2.this.f10969k0 = bVar;
            b2.this.f10972m.l(27, new androidx.media3.common.util.t.a() {
                @Override
                public final void invoke(Object obj) {
                    ((androidx.media3.common.a0.d) obj).onCues(bVar);
                }
            });
        }

        @Override
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }
    }

    private static final class d implements androidx.media3.exoplayer.video.t, j2.a, t3.b {

        private androidx.media3.exoplayer.video.t f10999a;

        private j2.a f11000b;

        private androidx.media3.exoplayer.video.t f11001c;

        private j2.a f11002d;

        private d() {
        }

        @Override
        public void a(long j10, float[] fArr) {
            j2.a aVar = this.f11002d;
            if (aVar != null) {
                aVar.a(j10, fArr);
            }
            j2.a aVar2 = this.f11000b;
            if (aVar2 != null) {
                aVar2.a(j10, fArr);
            }
        }

        @Override
        public void b() {
            j2.a aVar = this.f11002d;
            if (aVar != null) {
                aVar.b();
            }
            j2.a aVar2 = this.f11000b;
            if (aVar2 != null) {
                aVar2.b();
            }
        }

        @Override
        public void f(long j10, long j11, androidx.media3.common.r rVar, MediaFormat mediaFormat) {
            androidx.media3.exoplayer.video.t tVar = this.f11001c;
            if (tVar != null) {
                tVar.f(j10, j11, rVar, mediaFormat);
            }
            androidx.media3.exoplayer.video.t tVar2 = this.f10999a;
            if (tVar2 != null) {
                tVar2.f(j10, j11, rVar, mediaFormat);
            }
        }

        @Override
        public void handleMessage(int i10, Object obj) {
            if (i10 == 7) {
                this.f10999a = (androidx.media3.exoplayer.video.t) obj;
                return;
            }
            if (i10 == 8) {
                this.f11000b = (j2.a) obj;
                return;
            }
            if (i10 != 10000) {
                return;
            }
            SphericalGLSurfaceView sphericalGLSurfaceView = (SphericalGLSurfaceView) obj;
            if (sphericalGLSurfaceView == null) {
                this.f11001c = null;
                this.f11002d = null;
            } else {
                this.f11001c = sphericalGLSurfaceView.getVideoFrameMetadataListener();
                this.f11002d = sphericalGLSurfaceView.getCameraMotionListener();
            }
        }
    }

    private static final class e implements c3 {

        private final Object f11003a;

        private final androidx.media3.exoplayer.source.r f11004b;

        private androidx.media3.common.e0 f11005c;

        public e(Object obj, androidx.media3.exoplayer.source.p pVar) {
            this.f11003a = obj;
            this.f11004b = pVar;
            this.f11005c = pVar.W();
        }

        @Override
        public Object a() {
            return this.f11003a;
        }

        @Override
        public androidx.media3.common.e0 b() {
            return this.f11005c;
        }

        public void d(androidx.media3.common.e0 e0Var) {
            this.f11005c = e0Var;
        }
    }

    static {
        androidx.media3.common.u.a("media3.exoplayer");
    }

    public b2(ExoPlayer.b bVar, androidx.media3.common.a0 a0Var) {
        try {
            androidx.media3.common.util.u.f("ExoPlayerImpl", "Init " + Integer.toHexString(System.identityHashCode(this)) + " [AndroidXMedia3/1.7.1] [" + androidx.media3.common.util.a1.f10042e + "]");
            this.f10956e = bVar.f10647a.getApplicationContext();
            this.f10984s = (x1.a) bVar.f10655i.apply(bVar.f10648b);
            this.f10975n0 = bVar.f10657k;
            this.f10977o0 = bVar.f10658l;
            this.f10963h0 = bVar.f10659m;
            this.f10953c0 = bVar.f10665s;
            this.f10955d0 = bVar.f10666t;
            this.f10967j0 = bVar.f10663q;
            this.F = bVar.B;
            c cVar = new c();
            this.f10997z = cVar;
            this.A = new d();
            Handler handler = new Handler(bVar.f10656j);
            b4 b4Var = (b4) bVar.f10650d.get();
            w3[] w3VarArrB = b4Var.b(handler, cVar, cVar, cVar, cVar);
            this.f10960g = w3VarArrB;
            androidx.media3.common.util.a.g(w3VarArrB.length > 0);
            this.f10962h = new w3[w3VarArrB.length];
            int i10 = 0;
            while (true) {
                w3[] w3VarArr = this.f10962h;
                if (i10 >= w3VarArr.length) {
                    break;
                }
                w3 w3Var = this.f10960g[i10];
                c cVar2 = this.f10997z;
                w3VarArr[i10] = b4Var.a(w3Var, handler, cVar2, cVar2, cVar2, cVar2);
                i10++;
            }
            i2.e0 e0Var = (i2.e0) bVar.f10652f.get();
            this.f10964i = e0Var;
            this.f10982r = (androidx.media3.exoplayer.source.r.a) bVar.f10651e.get();
            androidx.media3.exoplayer.upstream.e eVar = (androidx.media3.exoplayer.upstream.e) bVar.f10654h.get();
            this.f10988u = eVar;
            this.f10980q = bVar.f10667u;
            this.N = bVar.f10668v;
            this.f10990v = bVar.f10669w;
            this.f10992w = bVar.f10670x;
            this.f10994x = bVar.f10671y;
            this.Q = bVar.C;
            Looper looper = bVar.f10656j;
            this.f10986t = looper;
            androidx.media3.common.util.i iVar = bVar.f10648b;
            this.f10996y = iVar;
            androidx.media3.common.a0 a0Var2 = a0Var == null ? this : a0Var;
            this.f10958f = a0Var2;
            this.f10972m = new androidx.media3.common.util.t(looper, iVar, new androidx.media3.common.util.t.b() {
                @Override
                public final void a(Object obj, androidx.media3.common.p pVar) {
                    this.f11731a.N1((androidx.media3.common.a0.d) obj, pVar);
                }
            });
            this.f10974n = new CopyOnWriteArraySet();
            this.f10978p = new ArrayList();
            this.O = new f2.v.a(0);
            this.P = ExoPlayer.c.f10673b;
            w3[] w3VarArr2 = this.f10960g;
            i2.f0 f0Var = new i2.f0(new z3[w3VarArr2.length], new i2.z[w3VarArr2.length], androidx.media3.common.i0.f9772b, null);
            this.f10950b = f0Var;
            this.f10976o = new androidx.media3.common.e0.b();
            androidx.media3.common.a0.b bVarE = new androidx.media3.common.a0.b.a().c(1, 2, 3, 13, 14, 15, 16, 17, 18, 19, 31, 20, 30, 21, 35, 22, 24, 27, 28, 32).d(29, e0Var.h()).d(23, bVar.f10664r).d(25, bVar.f10664r).d(33, bVar.f10664r).d(26, bVar.f10664r).d(34, bVar.f10664r).e();
            this.f10952c = bVarE;
            this.R = new androidx.media3.common.a0.b.a().b(bVarE).a(4).a(10).e();
            this.f10966j = iVar.createHandler(looper, null);
            r2.f fVar = new r2.f() {
                @Override
                public final void a(r2.e eVar2) {
                    this.f11785a.P1(eVar2);
                }
            };
            this.f10968k = fVar;
            this.f10989u0 = r3.k(f0Var);
            this.f10984s.G(a0Var2, looper);
            x1.f4 f4Var = new x1.f4(bVar.H);
            r2 r2Var = new r2(this.f10956e, this.f10960g, this.f10962h, e0Var, f0Var, (u2) bVar.f10653g.get(), eVar, this.I, this.J, this.f10984s, this.N, bVar.f10672z, bVar.A, this.Q, bVar.I, looper, iVar, fVar, f4Var, bVar.E, this.P);
            this.f10970l = r2Var;
            Looper looperK = r2Var.K();
            this.f10965i0 = 1.0f;
            this.I = 0;
            androidx.media3.common.v vVar = androidx.media3.common.v.I;
            this.S = vVar;
            this.T = vVar;
            this.f10987t0 = vVar;
            this.f10991v0 = -1;
            this.f10969k0 = u1.b.f72974c;
            this.f10971l0 = true;
            M(this.f10984s);
            eVar.d(new Handler(looper), this.f10984s);
            n1(this.f10997z);
            long j10 = bVar.f10649c;
            if (j10 > 0) {
                r2Var.E(j10);
            }
            if (androidx.media3.common.util.a1.f10038a >= 31) {
                b.c(this.f10956e, this, bVar.D, f4Var);
            }
            androidx.media3.common.util.g gVar = new androidx.media3.common.util.g(0, looperK, looper, iVar, new androidx.media3.common.util.g.a() {
                @Override
                public final void a(Object obj, Object obj2) {
                    this.f11816a.q2(((Integer) obj).intValue(), ((Integer) obj2).intValue());
                }
            });
            this.H = gVar;
            gVar.h(new Runnable() {
                @Override
                public final void run() {
                    this.f11963a.Q1();
                }
            });
            androidx.media3.exoplayer.e eVar2 = new androidx.media3.exoplayer.e(bVar.f10647a, looperK, bVar.f10656j, this.f10997z, iVar);
            this.B = eVar2;
            eVar2.f(bVar.f10662p);
            if (bVar.G) {
                m4 m4Var = bVar.J;
                this.G = m4Var;
                m4Var.b(new m4.a() {
                    @Override
                    public final void a(boolean z10) {
                        this.f11986a.r2(z10);
                    }
                }, this.f10956e, looper, looperK, iVar);
            } else {
                this.G = null;
            }
            if (bVar.f10664r) {
                this.C = new k4(bVar.f10647a, this.f10997z, this.f10963h0.b(), looperK, looper, iVar);
            } else {
                this.C = null;
            }
            p4 p4Var = new p4(bVar.f10647a, looperK, iVar);
            this.D = p4Var;
            p4Var.e(bVar.f10661o != 0);
            s4 s4Var = new s4(bVar.f10647a, looperK, iVar);
            this.E = s4Var;
            s4Var.e(bVar.f10661o == 2);
            this.f10983r0 = androidx.media3.common.m.f9786e;
            this.f10985s0 = androidx.media3.common.m0.f9799e;
            this.f10957e0 = androidx.media3.common.util.l0.f10095c;
            r2Var.d1(this.f10963h0, bVar.f10660n);
            w2(1, 3, this.f10963h0);
            w2(2, 4, Integer.valueOf(this.f10953c0));
            w2(2, 5, Integer.valueOf(this.f10955d0));
            w2(1, 9, Boolean.valueOf(this.f10967j0));
            w2(2, 7, this.A);
            w2(6, 8, this.A);
            x2(16, Integer.valueOf(this.f10975n0));
        } finally {
            this.f10954d.f();
        }
    }

    private Pair A1(r3 r3Var, r3 r3Var2, boolean z10, int i10, boolean z11, boolean z12) {
        androidx.media3.common.e0 e0Var = r3Var2.f12231a;
        androidx.media3.common.e0 e0Var2 = r3Var.f12231a;
        if (e0Var2.q() && e0Var.q()) {
            return new Pair(Boolean.FALSE, -1);
        }
        int i11 = 3;
        if (e0Var2.q() != e0Var.q()) {
            return new Pair(Boolean.TRUE, 3);
        }
        if (e0Var.n(e0Var.h(r3Var2.f12232b.f12571a, this.f10976o).f9624c, this.f9664a).f9639a.equals(e0Var2.n(e0Var2.h(r3Var.f12232b.f12571a, this.f10976o).f9624c, this.f9664a).f9639a)) {
            if (z10 && i10 == 0 && r3Var2.f12232b.f12574d < r3Var.f12232b.f12574d) {
                return new Pair(Boolean.TRUE, 0);
            }
            return (z10 && i10 == 1 && z12) ? new Pair(Boolean.TRUE, 2) : new Pair(Boolean.FALSE, -1);
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

    private void A2(List list, int i10, long j10, boolean z10) {
        int i11;
        long j11;
        int iE1 = E1(this.f10989u0);
        long currentPosition = getCurrentPosition();
        this.K++;
        if (!this.f10978p.isEmpty()) {
            u2(0, this.f10978p.size());
        }
        List listO1 = o1(0, list);
        androidx.media3.common.e0 e0VarX1 = x1();
        if (!e0VarX1.q() && i10 >= e0VarX1.p()) {
            throw new IllegalSeekPositionException(e0VarX1, i10, j10);
        }
        if (z10) {
            int iA = e0VarX1.a(this.J);
            j11 = C.TIME_UNSET;
            i11 = iA;
        } else if (i10 == -1) {
            i11 = iE1;
            j11 = currentPosition;
        } else {
            i11 = i10;
            j11 = j10;
        }
        r3 r3VarN2 = n2(this.f10989u0, e0VarX1, o2(e0VarX1, i11, j11));
        int i12 = r3VarN2.f12235e;
        if (i11 != -1 && i12 != 1) {
            i12 = (e0VarX1.q() || i11 >= e0VarX1.p()) ? 4 : 2;
        }
        r3 r3VarM2 = m2(r3VarN2, i12);
        this.f10970l.i1(listO1, i11, androidx.media3.common.util.a1.R0(j11), this.O);
        J2(r3VarM2, 0, (this.f10989u0.f12232b.f12571a.equals(r3VarM2.f12232b.f12571a) || this.f10989u0.f12231a.q()) ? false : true, 4, D1(r3VarM2), -1, false);
    }

    private void B2(SurfaceHolder surfaceHolder) {
        this.f10949a0 = false;
        this.Y = surfaceHolder;
        surfaceHolder.addCallback(this.f10997z);
        Surface surface = this.Y.getSurface();
        if (surface == null || !surface.isValid()) {
            p2(0, 0);
        } else {
            Rect surfaceFrame = this.Y.getSurfaceFrame();
            p2(surfaceFrame.width(), surfaceFrame.height());
        }
    }

    private long C1(r3 r3Var) {
        if (!r3Var.f12232b.b()) {
            return androidx.media3.common.util.a1.y1(D1(r3Var));
        }
        r3Var.f12231a.h(r3Var.f12232b.f12571a, this.f10976o);
        return r3Var.f12233c == C.TIME_UNSET ? r3Var.f12231a.n(E1(r3Var), this.f9664a).b() : this.f10976o.n() + androidx.media3.common.util.a1.y1(r3Var.f12233c);
    }

    public void C2(SurfaceTexture surfaceTexture) {
        Surface surface = new Surface(surfaceTexture);
        D2(surface);
        this.X = surface;
    }

    private long D1(r3 r3Var) {
        if (r3Var.f12231a.q()) {
            return androidx.media3.common.util.a1.R0(this.f10995x0);
        }
        long jM = r3Var.f12246p ? r3Var.m() : r3Var.f12249s;
        return r3Var.f12232b.b() ? jM : s2(r3Var.f12231a, r3Var.f12232b, jM);
    }

    public void D2(Object obj) {
        Object obj2 = this.W;
        boolean z10 = (obj2 == null || obj2 == obj) ? false : true;
        boolean zX1 = this.f10970l.x1(obj, z10 ? this.F : C.TIME_UNSET);
        if (z10) {
            Object obj3 = this.W;
            Surface surface = this.X;
            if (obj3 == surface) {
                surface.release();
                this.X = null;
            }
        }
        this.W = obj;
        if (zX1) {
            return;
        }
        F2(ExoPlaybackException.createForUnexpected(new ExoTimeoutException(3), 1003));
    }

    private int E1(r3 r3Var) {
        return r3Var.f12231a.q() ? this.f10991v0 : r3Var.f12231a.h(r3Var.f12232b.f12571a, this.f10976o).f9624c;
    }

    private Pair F1(androidx.media3.common.e0 e0Var, androidx.media3.common.e0 e0Var2, int i10, long j10) {
        boolean zQ = e0Var.q();
        long j11 = C.TIME_UNSET;
        if (zQ || e0Var2.q()) {
            boolean z10 = !e0Var.q() && e0Var2.q();
            int i11 = z10 ? -1 : i10;
            if (!z10) {
                j11 = j10;
            }
            return o2(e0Var2, i11, j11);
        }
        Pair pairJ = e0Var.j(this.f9664a, this.f10976o, i10, androidx.media3.common.util.a1.R0(j10));
        Object obj = ((Pair) androidx.media3.common.util.a1.i(pairJ)).first;
        if (e0Var2.b(obj) != -1) {
            return pairJ;
        }
        int iS0 = r2.S0(this.f9664a, this.f10976o, this.I, this.J, obj, e0Var, e0Var2);
        return iS0 != -1 ? o2(e0Var2, iS0, e0Var2.n(iS0, this.f9664a).b()) : o2(e0Var2, -1, C.TIME_UNSET);
    }

    private void F2(ExoPlaybackException exoPlaybackException) {
        r3 r3Var = this.f10989u0;
        r3 r3VarC = r3Var.c(r3Var.f12232b);
        r3VarC.f12247q = r3VarC.f12249s;
        r3VarC.f12248r = 0L;
        r3 r3VarM2 = m2(r3VarC, 1);
        if (exoPlaybackException != null) {
            r3VarM2 = r3VarM2.f(exoPlaybackException);
        }
        this.K++;
        this.f10970l.H1();
        J2(r3VarM2, 0, false, 5, C.TIME_UNSET, -1, false);
    }

    private void G2() {
        androidx.media3.common.a0.b bVar = this.R;
        androidx.media3.common.a0.b bVarO = androidx.media3.common.util.a1.O(this.f10958f, this.f10952c);
        this.R = bVarO;
        if (bVarO.equals(bVar)) {
            return;
        }
        this.f10972m.i(13, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                this.f12175a.X1((androidx.media3.common.a0.d) obj);
            }
        });
    }

    private androidx.media3.common.a0.e H1(long j10) {
        androidx.media3.common.t tVar;
        Object obj;
        int iB;
        Object obj2;
        int iU = u();
        if (this.f10989u0.f12231a.q()) {
            tVar = null;
            obj = null;
            iB = -1;
            obj2 = null;
        } else {
            r3 r3Var = this.f10989u0;
            Object obj3 = r3Var.f12232b.f12571a;
            r3Var.f12231a.h(obj3, this.f10976o);
            iB = this.f10989u0.f12231a.b(obj3);
            obj = obj3;
            obj2 = this.f10989u0.f12231a.n(iU, this.f9664a).f9639a;
            tVar = this.f9664a.f9641c;
        }
        long jY1 = androidx.media3.common.util.a1.y1(j10);
        long jY2 = this.f10989u0.f12232b.b() ? androidx.media3.common.util.a1.y1(J1(this.f10989u0)) : jY1;
        androidx.media3.exoplayer.source.r.b bVar = this.f10989u0.f12232b;
        return new androidx.media3.common.a0.e(obj2, iU, tVar, obj, iB, jY1, jY2, bVar.f12572b, bVar.f12573c);
    }

    private void H2(int i10, int i11, List list) {
        this.K++;
        this.f10970l.M1(i10, i11, list);
        for (int i12 = i10; i12 < i11; i12++) {
            e eVar = (e) this.f10978p.get(i12);
            eVar.d(new f2.x(eVar.b(), (androidx.media3.common.t) list.get(i12 - i10)));
        }
        J2(this.f10989u0.j(x1()), 0, false, 4, C.TIME_UNSET, -1, false);
    }

    private androidx.media3.common.a0.e I1(int i10, r3 r3Var, int i11) {
        int i12;
        Object obj;
        androidx.media3.common.t tVar;
        Object obj2;
        int i13;
        long jJ1;
        long jJ2;
        androidx.media3.common.e0.b bVar = new androidx.media3.common.e0.b();
        if (r3Var.f12231a.q()) {
            i12 = i11;
            obj = null;
            tVar = null;
            obj2 = null;
            i13 = -1;
        } else {
            Object obj3 = r3Var.f12232b.f12571a;
            r3Var.f12231a.h(obj3, bVar);
            int i14 = bVar.f9624c;
            int iB = r3Var.f12231a.b(obj3);
            Object obj4 = r3Var.f12231a.n(i14, this.f9664a).f9639a;
            tVar = this.f9664a.f9641c;
            obj2 = obj3;
            i13 = iB;
            obj = obj4;
            i12 = i14;
        }
        if (i10 == 0) {
            if (r3Var.f12232b.b()) {
                androidx.media3.exoplayer.source.r.b bVar2 = r3Var.f12232b;
                jJ1 = bVar.b(bVar2.f12572b, bVar2.f12573c);
                jJ2 = J1(r3Var);
            } else {
                jJ1 = r3Var.f12232b.f12575e != -1 ? J1(this.f10989u0) : bVar.f9626e + bVar.f9625d;
                jJ2 = jJ1;
            }
        } else if (r3Var.f12232b.b()) {
            jJ1 = r3Var.f12249s;
            jJ2 = J1(r3Var);
        } else {
            jJ1 = bVar.f9626e + r3Var.f12249s;
            jJ2 = jJ1;
        }
        long jY1 = androidx.media3.common.util.a1.y1(jJ1);
        long jY2 = androidx.media3.common.util.a1.y1(jJ2);
        androidx.media3.exoplayer.source.r.b bVar3 = r3Var.f12232b;
        return new androidx.media3.common.a0.e(obj, i12, tVar, obj2, i13, jY1, jY2, bVar3.f12572b, bVar3.f12573c);
    }

    public void I2(boolean z10, int i10) {
        int iV1 = v1(z10);
        r3 r3VarA = this.f10989u0;
        if (r3VarA.f12242l == z10 && r3VarA.f12244n == iV1 && r3VarA.f12243m == i10) {
            return;
        }
        this.K++;
        if (r3VarA.f12246p) {
            r3VarA = r3VarA.a();
        }
        r3 r3VarE = r3VarA.e(z10, i10, iV1);
        this.f10970l.l1(z10, i10, iV1);
        J2(r3VarE, 0, false, 5, C.TIME_UNSET, -1, false);
    }

    private static long J1(r3 r3Var) {
        androidx.media3.common.e0.c cVar = new androidx.media3.common.e0.c();
        androidx.media3.common.e0.b bVar = new androidx.media3.common.e0.b();
        r3Var.f12231a.h(r3Var.f12232b.f12571a, bVar);
        return r3Var.f12233c == C.TIME_UNSET ? r3Var.f12231a.n(bVar.f9624c, cVar).c() : bVar.o() + r3Var.f12233c;
    }

    private void J2(final r3 r3Var, final int i10, boolean z10, final int i11, long j10, int i12, boolean z11) {
        r3 r3Var2 = this.f10989u0;
        this.f10989u0 = r3Var;
        boolean zEquals = r3Var2.f12231a.equals(r3Var.f12231a);
        Pair pairA1 = A1(r3Var, r3Var2, z10, i11, !zEquals, z11);
        boolean zBooleanValue = ((Boolean) pairA1.first).booleanValue();
        final int iIntValue = ((Integer) pairA1.second).intValue();
        final androidx.media3.common.t tVar = null;
        if (zBooleanValue) {
            if (!r3Var.f12231a.q()) {
                tVar = r3Var.f12231a.n(r3Var.f12231a.h(r3Var.f12232b.f12571a, this.f10976o).f9624c, this.f9664a).f9641c;
            }
            this.f10987t0 = androidx.media3.common.v.I;
        }
        if (zBooleanValue || !r3Var2.f12240j.equals(r3Var.f12240j)) {
            this.f10987t0 = this.f10987t0.a().N(r3Var.f12240j).J();
        }
        androidx.media3.common.v vVarS1 = s1();
        boolean zEquals2 = vVarS1.equals(this.S);
        this.S = vVarS1;
        boolean z12 = r3Var2.f12242l != r3Var.f12242l;
        boolean z13 = r3Var2.f12235e != r3Var.f12235e;
        if (z13 || z12) {
            L2();
        }
        boolean z14 = r3Var2.f12237g;
        boolean z15 = r3Var.f12237g;
        boolean z16 = z14 != z15;
        if (z16) {
            K2(z15);
        }
        if (!zEquals) {
            this.f10972m.i(0, new androidx.media3.common.util.t.a() {
                @Override
                public final void invoke(Object obj) {
                    b2.Y1(r3Var, i10, (androidx.media3.common.a0.d) obj);
                }
            });
        }
        if (z10) {
            final androidx.media3.common.a0.e eVarI1 = I1(i11, r3Var2, i12);
            final androidx.media3.common.a0.e eVarH1 = H1(j10);
            this.f10972m.i(11, new androidx.media3.common.util.t.a() {
                @Override
                public final void invoke(Object obj) {
                    b2.Z1(i11, eVarI1, eVarH1, (androidx.media3.common.a0.d) obj);
                }
            });
        }
        if (zBooleanValue) {
            this.f10972m.i(1, new androidx.media3.common.util.t.a() {
                @Override
                public final void invoke(Object obj) {
                    ((androidx.media3.common.a0.d) obj).onMediaItemTransition(tVar, iIntValue);
                }
            });
        }
        if (r3Var2.f12236f != r3Var.f12236f) {
            this.f10972m.i(10, new androidx.media3.common.util.t.a() {
                @Override
                public final void invoke(Object obj) {
                    b2.b2(r3Var, (androidx.media3.common.a0.d) obj);
                }
            });
            if (r3Var.f12236f != null) {
                this.f10972m.i(10, new androidx.media3.common.util.t.a() {
                    @Override
                    public final void invoke(Object obj) {
                        b2.c2(r3Var, (androidx.media3.common.a0.d) obj);
                    }
                });
            }
        }
        i2.f0 f0Var = r3Var2.f12239i;
        i2.f0 f0Var2 = r3Var.f12239i;
        if (f0Var != f0Var2) {
            this.f10964i.i(f0Var2.f61648e);
            this.f10972m.i(2, new androidx.media3.common.util.t.a() {
                @Override
                public final void invoke(Object obj) {
                    b2.d2(r3Var, (androidx.media3.common.a0.d) obj);
                }
            });
        }
        if (!zEquals2) {
            final androidx.media3.common.v vVar = this.S;
            this.f10972m.i(14, new androidx.media3.common.util.t.a() {
                @Override
                public final void invoke(Object obj) {
                    ((androidx.media3.common.a0.d) obj).onMediaMetadataChanged(vVar);
                }
            });
        }
        if (z16) {
            this.f10972m.i(3, new androidx.media3.common.util.t.a() {
                @Override
                public final void invoke(Object obj) {
                    b2.f2(r3Var, (androidx.media3.common.a0.d) obj);
                }
            });
        }
        if (z13 || z12) {
            this.f10972m.i(-1, new androidx.media3.common.util.t.a() {
                @Override
                public final void invoke(Object obj) {
                    b2.g2(r3Var, (androidx.media3.common.a0.d) obj);
                }
            });
        }
        if (z13) {
            this.f10972m.i(4, new androidx.media3.common.util.t.a() {
                @Override
                public final void invoke(Object obj) {
                    b2.h2(r3Var, (androidx.media3.common.a0.d) obj);
                }
            });
        }
        if (z12 || r3Var2.f12243m != r3Var.f12243m) {
            this.f10972m.i(5, new androidx.media3.common.util.t.a() {
                @Override
                public final void invoke(Object obj) {
                    b2.i2(r3Var, (androidx.media3.common.a0.d) obj);
                }
            });
        }
        if (r3Var2.f12244n != r3Var.f12244n) {
            this.f10972m.i(6, new androidx.media3.common.util.t.a() {
                @Override
                public final void invoke(Object obj) {
                    b2.j2(r3Var, (androidx.media3.common.a0.d) obj);
                }
            });
        }
        if (r3Var2.n() != r3Var.n()) {
            this.f10972m.i(7, new androidx.media3.common.util.t.a() {
                @Override
                public final void invoke(Object obj) {
                    b2.k2(r3Var, (androidx.media3.common.a0.d) obj);
                }
            });
        }
        if (!r3Var2.f12245o.equals(r3Var.f12245o)) {
            this.f10972m.i(12, new androidx.media3.common.util.t.a() {
                @Override
                public final void invoke(Object obj) {
                    b2.l2(r3Var, (androidx.media3.common.a0.d) obj);
                }
            });
        }
        G2();
        this.f10972m.f();
        if (r3Var2.f12246p != r3Var.f12246p) {
            Iterator it = this.f10974n.iterator();
            while (it.hasNext()) {
                ((ExoPlayer.a) it.next()).x(r3Var.f12246p);
            }
        }
    }

    public void O1(r2.e eVar) {
        long jS2;
        int i10 = this.K - eVar.f12218c;
        this.K = i10;
        boolean z10 = true;
        if (eVar.f12219d) {
            this.L = eVar.f12220e;
            this.M = true;
        }
        if (i10 == 0) {
            androidx.media3.common.e0 e0Var = eVar.f12217b.f12231a;
            if (!this.f10989u0.f12231a.q() && e0Var.q()) {
                this.f10991v0 = -1;
                this.f10995x0 = 0L;
                this.f10993w0 = 0;
            }
            if (!e0Var.q()) {
                List listF = ((u3) e0Var).F();
                androidx.media3.common.util.a.g(listF.size() == this.f10978p.size());
                for (int i11 = 0; i11 < listF.size(); i11++) {
                    ((e) this.f10978p.get(i11)).d((androidx.media3.common.e0) listF.get(i11));
                }
            }
            boolean z11 = this.M;
            long j10 = C.TIME_UNSET;
            if (z11) {
                if (eVar.f12217b.f12232b.equals(this.f10989u0.f12232b) && eVar.f12217b.f12234d == this.f10989u0.f12249s) {
                    z10 = false;
                }
                if (z10) {
                    if (e0Var.q() || eVar.f12217b.f12232b.b()) {
                        jS2 = eVar.f12217b.f12234d;
                    } else {
                        r3 r3Var = eVar.f12217b;
                        jS2 = s2(e0Var, r3Var.f12232b, r3Var.f12234d);
                    }
                    j10 = jS2;
                }
            } else {
                z10 = false;
            }
            this.M = false;
            J2(eVar.f12217b, 1, z10, this.L, j10, -1, false);
        }
    }

    private void K2(boolean z10) {
        PriorityTaskManager priorityTaskManager = this.f10977o0;
        if (priorityTaskManager != null) {
            if (z10 && !this.f10979p0) {
                priorityTaskManager.a(this.f10975n0);
                this.f10979p0 = true;
            } else {
                if (z10 || !this.f10979p0) {
                    return;
                }
                priorityTaskManager.d(this.f10975n0);
                this.f10979p0 = false;
            }
        }
    }

    public void L2() {
        int playbackState = getPlaybackState();
        if (playbackState != 1) {
            if (playbackState == 2 || playbackState == 3) {
                this.D.f(getPlayWhenReady() && !L1());
                this.E.f(getPlayWhenReady());
                return;
            } else if (playbackState != 4) {
                throw new IllegalStateException();
            }
        }
        this.D.f(false);
        this.E.f(false);
    }

    private void M2() {
        this.f10954d.c();
        if (Thread.currentThread() != l().getThread()) {
            String strG = androidx.media3.common.util.a1.G("Player is accessed on the wrong thread.\nCurrent thread: '%s'\nExpected thread: '%s'\nSee https://developer.android.com/guide/topics/media/issues/player-accessed-on-wrong-thread", Thread.currentThread().getName(), l().getThread().getName());
            if (this.f10971l0) {
                throw new IllegalStateException(strG);
            }
            androidx.media3.common.util.u.i("ExoPlayerImpl", strG, this.f10973m0 ? null : new IllegalStateException());
            this.f10973m0 = true;
        }
    }

    public void N1(androidx.media3.common.a0.d dVar, androidx.media3.common.p pVar) {
        dVar.onEvents(this.f10958f, new androidx.media3.common.a0.c(pVar));
    }

    public void P1(final r2.e eVar) {
        this.f10966j.post(new Runnable() {
            @Override
            public final void run() {
                this.f12144a.O1(eVar);
            }
        });
    }

    public void Q1() {
        this.H.i(Integer.valueOf(androidx.media3.common.util.a1.J(this.f10956e)));
    }

    public static void S1(androidx.media3.common.a0.d dVar) {
        dVar.onPlayerError(ExoPlaybackException.createForUnexpected(new ExoTimeoutException(1), 1003));
    }

    public void X1(androidx.media3.common.a0.d dVar) {
        dVar.onAvailableCommandsChanged(this.R);
    }

    public static void Y1(r3 r3Var, int i10, androidx.media3.common.a0.d dVar) {
        dVar.onTimelineChanged(r3Var.f12231a, i10);
    }

    public static void Z1(int i10, androidx.media3.common.a0.e eVar, androidx.media3.common.a0.e eVar2, androidx.media3.common.a0.d dVar) {
        dVar.onPositionDiscontinuity(i10);
        dVar.onPositionDiscontinuity(eVar, eVar2, i10);
    }

    public static void b2(r3 r3Var, androidx.media3.common.a0.d dVar) {
        dVar.onPlayerErrorChanged(r3Var.f12236f);
    }

    public static void c2(r3 r3Var, androidx.media3.common.a0.d dVar) {
        dVar.onPlayerError(r3Var.f12236f);
    }

    public static void d2(r3 r3Var, androidx.media3.common.a0.d dVar) {
        dVar.onTracksChanged(r3Var.f12239i.f61647d);
    }

    public static void f2(r3 r3Var, androidx.media3.common.a0.d dVar) {
        dVar.onLoadingChanged(r3Var.f12237g);
        dVar.onIsLoadingChanged(r3Var.f12237g);
    }

    public static void g2(r3 r3Var, androidx.media3.common.a0.d dVar) {
        dVar.onPlayerStateChanged(r3Var.f12242l, r3Var.f12235e);
    }

    public static void h2(r3 r3Var, androidx.media3.common.a0.d dVar) {
        dVar.onPlaybackStateChanged(r3Var.f12235e);
    }

    public static void i2(r3 r3Var, androidx.media3.common.a0.d dVar) {
        dVar.onPlayWhenReadyChanged(r3Var.f12242l, r3Var.f12243m);
    }

    public static void j2(r3 r3Var, androidx.media3.common.a0.d dVar) {
        dVar.onPlaybackSuppressionReasonChanged(r3Var.f12244n);
    }

    public static void k2(r3 r3Var, androidx.media3.common.a0.d dVar) {
        dVar.onIsPlayingChanged(r3Var.n());
    }

    public static void l2(r3 r3Var, androidx.media3.common.a0.d dVar) {
        dVar.onPlaybackParametersChanged(r3Var.f12245o);
    }

    private static r3 m2(r3 r3Var, int i10) {
        r3 r3VarH = r3Var.h(i10);
        return (i10 == 1 || i10 == 4) ? r3VarH.b(false) : r3VarH;
    }

    private r3 n2(r3 r3Var, androidx.media3.common.e0 e0Var, Pair pair) {
        androidx.media3.common.util.a.a(e0Var.q() || pair != null);
        androidx.media3.common.e0 e0Var2 = r3Var.f12231a;
        long jC1 = C1(r3Var);
        r3 r3VarJ = r3Var.j(e0Var);
        if (e0Var.q()) {
            androidx.media3.exoplayer.source.r.b bVarL = r3.l();
            long jR0 = androidx.media3.common.util.a1.R0(this.f10995x0);
            r3 r3VarC = r3VarJ.d(bVarL, jR0, jR0, jR0, 0L, f2.z.f59966d, this.f10950b, ImmutableList.of()).c(bVarL);
            r3VarC.f12247q = r3VarC.f12249s;
            return r3VarC;
        }
        Object obj = r3VarJ.f12232b.f12571a;
        boolean zEquals = obj.equals(((Pair) androidx.media3.common.util.a1.i(pair)).first);
        androidx.media3.exoplayer.source.r.b bVar = !zEquals ? new androidx.media3.exoplayer.source.r.b(pair.first) : r3VarJ.f12232b;
        long jLongValue = ((Long) pair.second).longValue();
        long jR1 = androidx.media3.common.util.a1.R0(jC1);
        if (!e0Var2.q()) {
            jR1 -= e0Var2.h(obj, this.f10976o).o();
        }
        if (!zEquals || jLongValue < jR1) {
            androidx.media3.common.util.a.g(!bVar.b());
            r3 r3VarC2 = r3VarJ.d(bVar, jLongValue, jLongValue, jLongValue, 0L, !zEquals ? f2.z.f59966d : r3VarJ.f12238h, !zEquals ? this.f10950b : r3VarJ.f12239i, !zEquals ? ImmutableList.of() : r3VarJ.f12240j).c(bVar);
            r3VarC2.f12247q = jLongValue;
            return r3VarC2;
        }
        if (jLongValue == jR1) {
            int iB = e0Var.b(r3VarJ.f12241k.f12571a);
            if (iB == -1 || e0Var.f(iB, this.f10976o).f9624c != e0Var.h(bVar.f12571a, this.f10976o).f9624c) {
                e0Var.h(bVar.f12571a, this.f10976o);
                long jB = bVar.b() ? this.f10976o.b(bVar.f12572b, bVar.f12573c) : this.f10976o.f9625d;
                r3VarJ = r3VarJ.d(bVar, r3VarJ.f12249s, r3VarJ.f12249s, r3VarJ.f12234d, jB - r3VarJ.f12249s, r3VarJ.f12238h, r3VarJ.f12239i, r3VarJ.f12240j).c(bVar);
                r3VarJ.f12247q = jB;
            }
        } else {
            androidx.media3.common.util.a.g(!bVar.b());
            long jMax = Math.max(0L, r3VarJ.f12248r - (jLongValue - jR1));
            long j10 = r3VarJ.f12247q;
            if (r3VarJ.f12241k.equals(r3VarJ.f12232b)) {
                j10 = jLongValue + jMax;
            }
            r3VarJ = r3VarJ.d(bVar, jLongValue, jLongValue, jLongValue, jMax, r3VarJ.f12238h, r3VarJ.f12239i, r3VarJ.f12240j);
            r3VarJ.f12247q = j10;
        }
        return r3VarJ;
    }

    private List o1(int i10, List list) {
        ArrayList arrayList = new ArrayList();
        for (int i11 = 0; i11 < list.size(); i11++) {
            q3.c cVar = new q3.c((androidx.media3.exoplayer.source.r) list.get(i11), this.f10980q);
            arrayList.add(cVar);
            this.f10978p.add(i11 + i10, new e(cVar.f12166b, cVar.f12165a));
        }
        this.O = this.O.cloneAndInsert(i10, arrayList.size());
        return arrayList;
    }

    private Pair o2(androidx.media3.common.e0 e0Var, int i10, long j10) {
        if (e0Var.q()) {
            this.f10991v0 = i10;
            if (j10 == C.TIME_UNSET) {
                j10 = 0;
            }
            this.f10995x0 = j10;
            this.f10993w0 = 0;
            return null;
        }
        if (i10 == -1 || i10 >= e0Var.p()) {
            i10 = e0Var.a(this.J);
            j10 = e0Var.n(i10, this.f9664a).b();
        }
        return e0Var.j(this.f9664a, this.f10976o, i10, androidx.media3.common.util.a1.R0(j10));
    }

    public void p2(final int i10, final int i11) {
        if (i10 == this.f10957e0.b() && i11 == this.f10957e0.a()) {
            return;
        }
        this.f10957e0 = new androidx.media3.common.util.l0(i10, i11);
        this.f10972m.l(24, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((androidx.media3.common.a0.d) obj).onSurfaceSizeChanged(i10, i11);
            }
        });
        w2(2, 14, new androidx.media3.common.util.l0(i10, i11));
    }

    public void q2(int i10, final int i11) {
        M2();
        w2(1, 10, Integer.valueOf(i11));
        w2(2, 10, Integer.valueOf(i11));
        this.f10972m.l(21, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((androidx.media3.common.a0.d) obj).onAudioSessionIdChanged(i11);
            }
        });
    }

    private r3 r1(r3 r3Var, int i10, List list) {
        androidx.media3.common.e0 e0Var = r3Var.f12231a;
        this.K++;
        List listO1 = o1(i10, list);
        androidx.media3.common.e0 e0VarX1 = x1();
        r3 r3VarN2 = n2(r3Var, e0VarX1, F1(e0Var, e0VarX1, E1(r3Var), C1(r3Var)));
        this.f10970l.p(i10, listO1, this.O);
        return r3VarN2;
    }

    public void r2(boolean z10) {
        if (this.f10981q0) {
            return;
        }
        if (!z10) {
            I2(this.f10989u0.f12242l, 1);
            return;
        }
        r3 r3Var = this.f10989u0;
        if (r3Var.f12244n == 3) {
            I2(r3Var.f12242l, 1);
        }
    }

    public androidx.media3.common.v s1() {
        androidx.media3.common.e0 currentTimeline = getCurrentTimeline();
        if (currentTimeline.q()) {
            return this.f10987t0;
        }
        return this.f10987t0.a().L(currentTimeline.n(u(), this.f9664a).f9641c.f9902e).J();
    }

    private long s2(androidx.media3.common.e0 e0Var, androidx.media3.exoplayer.source.r.b bVar, long j10) {
        e0Var.h(bVar.f12571a, this.f10976o);
        return j10 + this.f10976o.o();
    }

    private boolean t1(int i10, int i11, List list) {
        if (i11 - i10 != list.size()) {
            return false;
        }
        for (int i12 = i10; i12 < i11; i12++) {
            if (!((e) this.f10978p.get(i12)).f11004b.q((androidx.media3.common.t) list.get(i12 - i10))) {
                return false;
            }
        }
        return true;
    }

    private r3 t2(r3 r3Var, int i10, int i11) {
        int iE1 = E1(r3Var);
        long jC1 = C1(r3Var);
        androidx.media3.common.e0 e0Var = r3Var.f12231a;
        int size = this.f10978p.size();
        this.K++;
        u2(i10, i11);
        androidx.media3.common.e0 e0VarX1 = x1();
        r3 r3VarN2 = n2(r3Var, e0VarX1, F1(e0Var, e0VarX1, iE1, jC1));
        int i12 = r3VarN2.f12235e;
        if (i12 != 1 && i12 != 4 && i10 < i11 && i11 == size && iE1 >= r3VarN2.f12231a.p()) {
            r3VarN2 = m2(r3VarN2, 4);
        }
        this.f10970l.H0(i10, i11, this.O);
        return r3VarN2;
    }

    private void u2(int i10, int i11) {
        for (int i12 = i11 - 1; i12 >= i10; i12--) {
            this.f10978p.remove(i12);
        }
        this.O = this.O.a(i10, i11);
    }

    private int v1(boolean z10) {
        m4 m4Var = this.G;
        if (m4Var == null || m4Var.a()) {
            return (this.f10989u0.f12244n != 1 || z10) ? 0 : 1;
        }
        return 3;
    }

    private void v2() {
        if (this.Z != null) {
            z1(this.A).m(10000).l(null).k();
            this.Z.removeVideoSurfaceListener(this.f10997z);
            this.Z = null;
        }
        TextureView textureView = this.f10951b0;
        if (textureView != null) {
            if (textureView.getSurfaceTextureListener() != this.f10997z) {
                androidx.media3.common.util.u.h("ExoPlayerImpl", "SurfaceTextureListener already unset or replaced.");
            } else {
                this.f10951b0.setSurfaceTextureListener(null);
            }
            this.f10951b0 = null;
        }
        SurfaceHolder surfaceHolder = this.Y;
        if (surfaceHolder != null) {
            surfaceHolder.removeCallback(this.f10997z);
            this.Y = null;
        }
    }

    public static androidx.media3.common.m w1(k4 k4Var) {
        return new androidx.media3.common.m.b(0).g(k4Var != null ? k4Var.l() : 0).f(k4Var != null ? k4Var.k() : 0).e();
    }

    private void w2(int i10, int i11, Object obj) {
        for (w3 w3Var : this.f10960g) {
            if (i10 == -1 || w3Var.getTrackType() == i10) {
                z1(w3Var).m(i11).l(obj).k();
            }
        }
        for (w3 w3Var2 : this.f10962h) {
            if (w3Var2 != null && (i10 == -1 || w3Var2.getTrackType() == i10)) {
                z1(w3Var2).m(i11).l(obj).k();
            }
        }
    }

    private androidx.media3.common.e0 x1() {
        return new u3(this.f10978p, this.O);
    }

    private void x2(int i10, Object obj) {
        w2(-1, i10, obj);
    }

    private List y1(List list) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            arrayList.add(this.f10982r.d((androidx.media3.common.t) list.get(i10)));
        }
        return arrayList;
    }

    private t3 z1(t3.b bVar) {
        int iE1 = E1(this.f10989u0);
        r2 r2Var = this.f10970l;
        androidx.media3.common.e0 e0Var = this.f10989u0.f12231a;
        if (iE1 == -1) {
            iE1 = 0;
        }
        return new t3(r2Var, bVar, e0Var, iE1, this.f10996y, r2Var.K());
    }

    @Override
    public void B(boolean z10, int i10) {
        M2();
        k4 k4Var = this.C;
        if (k4Var != null) {
            k4Var.u(z10, i10);
        }
    }

    public androidx.media3.common.util.i B1() {
        return this.f10996y;
    }

    @Override
    public void D(x1.c cVar) {
        this.f10984s.E((x1.c) androidx.media3.common.util.a.e(cVar));
    }

    @Override
    public void E(int i10, int i11, List list) {
        M2();
        androidx.media3.common.util.a.a(i10 >= 0 && i11 >= i10);
        int size = this.f10978p.size();
        if (i10 > size) {
            return;
        }
        int iMin = Math.min(i11, size);
        if (t1(i10, iMin, list)) {
            H2(i10, iMin, list);
            return;
        }
        List listY1 = y1(list);
        if (this.f10978p.isEmpty()) {
            z2(listY1, this.f10991v0 == -1);
        } else {
            r3 r3VarT2 = t2(r1(this.f10989u0, iMin, listY1), i10, iMin);
            J2(r3VarT2, 0, !r3VarT2.f12232b.f12571a.equals(this.f10989u0.f12232b.f12571a), 4, D1(r3VarT2), -1, false);
        }
    }

    public void E2(SurfaceHolder surfaceHolder) {
        M2();
        if (surfaceHolder == null) {
            clearVideoSurface();
            return;
        }
        v2();
        this.f10949a0 = true;
        this.Y = surfaceHolder;
        surfaceHolder.addCallback(this.f10997z);
        Surface surface = surfaceHolder.getSurface();
        if (surface == null || !surface.isValid()) {
            D2(null);
            p2(0, 0);
        } else {
            D2(surface);
            Rect surfaceFrame = surfaceHolder.getSurfaceFrame();
            p2(surfaceFrame.width(), surfaceFrame.height());
        }
    }

    public Looper G1() {
        return this.f10970l.K();
    }

    @Override
    public void H(int i10, int i11) {
        M2();
        androidx.media3.common.util.a.a(i10 >= 0 && i11 >= i10);
        int size = this.f10978p.size();
        int iMin = Math.min(i11, size);
        if (i10 >= size || i10 == iMin) {
            return;
        }
        r3 r3VarT2 = t2(this.f10989u0, i10, iMin);
        J2(r3VarT2, 0, !r3VarT2.f12232b.f12571a.equals(this.f10989u0.f12232b.f12571a), 4, D1(r3VarT2), -1, false);
    }

    @Override
    public androidx.media3.common.r J() {
        M2();
        return this.U;
    }

    @Override
    public void L(androidx.media3.common.a0.d dVar) {
        M2();
        this.f10972m.k((androidx.media3.common.a0.d) androidx.media3.common.util.a.e(dVar));
    }

    public boolean L1() {
        M2();
        return this.f10989u0.f12246p;
    }

    @Override
    public void M(androidx.media3.common.a0.d dVar) {
        this.f10972m.c((androidx.media3.common.a0.d) androidx.media3.common.util.a.e(dVar));
    }

    @Override
    public androidx.media3.common.r R() {
        M2();
        return this.V;
    }

    @Override
    public void S(int i10, List list) {
        M2();
        p1(i10, y1(list));
    }

    @Override
    public void T(int i10, androidx.media3.exoplayer.source.r rVar) {
        M2();
        p1(i10, Collections.singletonList(rVar));
    }

    @Override
    public void U(androidx.media3.exoplayer.source.r rVar) {
        M2();
        y2(Collections.singletonList(rVar));
    }

    @Override
    public void V(final androidx.media3.common.h0 h0Var) {
        M2();
        if (!this.f10964i.h() || h0Var.equals(this.f10964i.c())) {
            return;
        }
        this.f10964i.m(h0Var);
        this.f10972m.l(19, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((androidx.media3.common.a0.d) obj).onTrackSelectionParametersChanged(h0Var);
            }
        });
    }

    @Override
    public boolean W() {
        M2();
        k4 k4Var = this.C;
        if (k4Var != null) {
            return k4Var.m();
        }
        return false;
    }

    @Override
    public void X(androidx.media3.exoplayer.source.r rVar) {
        M2();
        q1(Collections.singletonList(rVar));
    }

    @Override
    public void b(androidx.media3.common.z zVar) {
        M2();
        if (zVar == null) {
            zVar = androidx.media3.common.z.f10251d;
        }
        if (this.f10989u0.f12245o.equals(zVar)) {
            return;
        }
        r3 r3VarG = this.f10989u0.g(zVar);
        this.K++;
        this.f10970l.n1(zVar);
        J2(r3VarG, 0, false, 5, C.TIME_UNSET, -1, false);
    }

    @Override
    public void clearVideoSurface() {
        M2();
        v2();
        D2(null);
        p2(0, 0);
    }

    @Override
    public void clearVideoSurfaceView(SurfaceView surfaceView) {
        M2();
        u1(surfaceView == null ? null : surfaceView.getHolder());
    }

    @Override
    public void clearVideoTextureView(TextureView textureView) {
        M2();
        if (textureView == null || textureView != this.f10951b0) {
            return;
        }
        clearVideoSurface();
    }

    @Override
    public long d() {
        M2();
        return androidx.media3.common.util.a1.y1(this.f10989u0.f12248r);
    }

    @Override
    public void e(List list, boolean z10) {
        M2();
        z2(y1(list), z10);
    }

    @Override
    protected void e0(int i10, long j10, int i11, boolean z10) {
        M2();
        if (i10 == -1) {
            return;
        }
        androidx.media3.common.util.a.a(i10 >= 0);
        androidx.media3.common.e0 e0Var = this.f10989u0.f12231a;
        if (e0Var.q() || i10 < e0Var.p()) {
            this.f10984s.m();
            this.K++;
            if (isPlayingAd()) {
                androidx.media3.common.util.u.h("ExoPlayerImpl", "seekTo ignored because an ad is playing");
                r2.e eVar = new r2.e(this.f10989u0);
                eVar.b(1);
                this.f10968k.a(eVar);
                return;
            }
            r3 r3VarM2 = this.f10989u0;
            int i12 = r3VarM2.f12235e;
            if (i12 == 3 || (i12 == 4 && !e0Var.q())) {
                r3VarM2 = m2(this.f10989u0, 2);
            }
            int iU = u();
            r3 r3VarN2 = n2(r3VarM2, e0Var, o2(e0Var, i10, j10));
            this.f10970l.U0(e0Var, i10, androidx.media3.common.util.a1.R0(j10));
            J2(r3VarN2, 0, true, 1, D1(r3VarN2), iU, z10);
        }
    }

    @Override
    public long getContentPosition() {
        M2();
        return C1(this.f10989u0);
    }

    @Override
    public int getCurrentAdGroupIndex() {
        M2();
        if (isPlayingAd()) {
            return this.f10989u0.f12232b.f12572b;
        }
        return -1;
    }

    @Override
    public int getCurrentAdIndexInAdGroup() {
        M2();
        if (isPlayingAd()) {
            return this.f10989u0.f12232b.f12573c;
        }
        return -1;
    }

    @Override
    public int getCurrentPeriodIndex() {
        M2();
        if (this.f10989u0.f12231a.q()) {
            return this.f10993w0;
        }
        r3 r3Var = this.f10989u0;
        return r3Var.f12231a.b(r3Var.f12232b.f12571a);
    }

    @Override
    public long getCurrentPosition() {
        M2();
        return androidx.media3.common.util.a1.y1(D1(this.f10989u0));
    }

    @Override
    public androidx.media3.common.e0 getCurrentTimeline() {
        M2();
        return this.f10989u0.f12231a;
    }

    @Override
    public androidx.media3.common.i0 getCurrentTracks() {
        M2();
        return this.f10989u0.f12239i.f61647d;
    }

    @Override
    public long getDuration() {
        M2();
        if (!isPlayingAd()) {
            return Q();
        }
        r3 r3Var = this.f10989u0;
        androidx.media3.exoplayer.source.r.b bVar = r3Var.f12232b;
        r3Var.f12231a.h(bVar.f12571a, this.f10976o);
        return androidx.media3.common.util.a1.y1(this.f10976o.b(bVar.f12572b, bVar.f12573c));
    }

    @Override
    public boolean getPlayWhenReady() {
        M2();
        return this.f10989u0.f12242l;
    }

    @Override
    public androidx.media3.common.z getPlaybackParameters() {
        M2();
        return this.f10989u0.f12245o;
    }

    @Override
    public int getPlaybackState() {
        M2();
        return this.f10989u0.f12235e;
    }

    @Override
    public int getRepeatMode() {
        M2();
        return this.I;
    }

    @Override
    public boolean getShuffleModeEnabled() {
        M2();
        return this.J;
    }

    @Override
    public float getVolume() {
        M2();
        return this.f10965i0;
    }

    @Override
    public u1.b h() {
        M2();
        return this.f10969k0;
    }

    @Override
    public boolean isPlayingAd() {
        M2();
        return this.f10989u0.f12232b.b();
    }

    @Override
    public int k() {
        M2();
        return this.f10989u0.f12244n;
    }

    @Override
    public Looper l() {
        return this.f10986t;
    }

    @Override
    public androidx.media3.common.h0 m() {
        M2();
        return this.f10964i.c();
    }

    public void n1(ExoPlayer.a aVar) {
        this.f10974n.add(aVar);
    }

    @Override
    public androidx.media3.common.a0.b o() {
        M2();
        return this.R;
    }

    @Override
    public long p() {
        M2();
        return this.f10994x;
    }

    public void p1(int i10, List list) {
        M2();
        androidx.media3.common.util.a.a(i10 >= 0);
        int iMin = Math.min(i10, this.f10978p.size());
        if (this.f10978p.isEmpty()) {
            z2(list, this.f10991v0 == -1);
        } else {
            J2(r1(this.f10989u0, iMin, list), 0, false, 5, C.TIME_UNSET, -1, false);
        }
    }

    @Override
    public void prepare() {
        M2();
        r3 r3Var = this.f10989u0;
        if (r3Var.f12235e != 1) {
            return;
        }
        r3 r3VarF = r3Var.f(null);
        r3 r3VarM2 = m2(r3VarF, r3VarF.f12231a.q() ? 4 : 2);
        this.K++;
        this.f10970l.B0();
        J2(r3VarM2, 1, false, 5, C.TIME_UNSET, -1, false);
    }

    @Override
    public androidx.media3.common.m0 q() {
        M2();
        return this.f10985s0;
    }

    public void q1(List list) {
        M2();
        p1(this.f10978p.size(), list);
    }

    @Override
    public void release() {
        androidx.media3.common.util.u.f("ExoPlayerImpl", "Release " + Integer.toHexString(System.identityHashCode(this)) + " [AndroidXMedia3/1.7.1] [" + androidx.media3.common.util.a1.f10042e + "] [" + androidx.media3.common.u.b() + "]");
        M2();
        this.B.f(false);
        k4 k4Var = this.C;
        if (k4Var != null) {
            k4Var.t();
        }
        this.D.f(false);
        this.E.f(false);
        m4 m4Var = this.G;
        if (m4Var != null) {
            m4Var.disable();
        }
        if (!this.f10970l.D0()) {
            this.f10972m.l(10, new androidx.media3.common.util.t.a() {
                @Override
                public final void invoke(Object obj) {
                    b2.S1((androidx.media3.common.a0.d) obj);
                }
            });
        }
        this.f10972m.j();
        this.f10966j.removeCallbacksAndMessages(null);
        this.f10988u.c(this.f10984s);
        r3 r3Var = this.f10989u0;
        if (r3Var.f12246p) {
            this.f10989u0 = r3Var.a();
        }
        r3 r3VarM2 = m2(this.f10989u0, 1);
        this.f10989u0 = r3VarM2;
        r3 r3VarC = r3VarM2.c(r3VarM2.f12232b);
        this.f10989u0 = r3VarC;
        r3VarC.f12247q = r3VarC.f12249s;
        this.f10989u0.f12248r = 0L;
        this.f10984s.release();
        v2();
        Surface surface = this.X;
        if (surface != null) {
            surface.release();
            this.X = null;
        }
        if (this.f10979p0) {
            ((PriorityTaskManager) androidx.media3.common.util.a.e(this.f10977o0)).d(this.f10975n0);
            this.f10979p0 = false;
        }
        this.f10969k0 = u1.b.f72974c;
        this.f10981q0 = true;
    }

    @Override
    public long s() {
        M2();
        return this.f10992w;
    }

    @Override
    public void setImageOutput(ImageOutput imageOutput) {
        M2();
        w2(4, 15, imageOutput);
    }

    @Override
    public void setPlayWhenReady(boolean z10) {
        M2();
        I2(z10, 1);
    }

    @Override
    public void setRepeatMode(final int i10) {
        M2();
        if (this.I != i10) {
            this.I = i10;
            this.f10970l.q1(i10);
            this.f10972m.i(8, new androidx.media3.common.util.t.a() {
                @Override
                public final void invoke(Object obj) {
                    ((androidx.media3.common.a0.d) obj).onRepeatModeChanged(i10);
                }
            });
            G2();
            this.f10972m.f();
        }
    }

    @Override
    public void setShuffleModeEnabled(final boolean z10) {
        M2();
        if (this.J != z10) {
            this.J = z10;
            this.f10970l.t1(z10);
            this.f10972m.i(9, new androidx.media3.common.util.t.a() {
                @Override
                public final void invoke(Object obj) {
                    ((androidx.media3.common.a0.d) obj).onShuffleModeEnabledChanged(z10);
                }
            });
            G2();
            this.f10972m.f();
        }
    }

    @Override
    public void setVideoSurfaceView(SurfaceView surfaceView) {
        M2();
        if (surfaceView instanceof androidx.media3.exoplayer.video.s) {
            v2();
            D2(surfaceView);
            B2(surfaceView.getHolder());
        } else {
            if (!(surfaceView instanceof SphericalGLSurfaceView)) {
                E2(surfaceView == null ? null : surfaceView.getHolder());
                return;
            }
            v2();
            this.Z = (SphericalGLSurfaceView) surfaceView;
            z1(this.A).m(10000).l(this.Z).k();
            this.Z.addVideoSurfaceListener(this.f10997z);
            D2(this.Z.getVideoSurface());
            B2(surfaceView.getHolder());
        }
    }

    @Override
    public void setVideoTextureView(TextureView textureView) {
        M2();
        if (textureView == null) {
            clearVideoSurface();
            return;
        }
        v2();
        this.f10951b0 = textureView;
        if (textureView.getSurfaceTextureListener() != null) {
            androidx.media3.common.util.u.h("ExoPlayerImpl", "Replacing existing SurfaceTextureListener.");
        }
        textureView.setSurfaceTextureListener(this.f10997z);
        SurfaceTexture surfaceTexture = textureView.isAvailable() ? textureView.getSurfaceTexture() : null;
        if (surfaceTexture == null) {
            D2(null);
            p2(0, 0);
        } else {
            C2(surfaceTexture);
            p2(textureView.getWidth(), textureView.getHeight());
        }
    }

    @Override
    public void setVolume(float f10) {
        M2();
        final float fO = androidx.media3.common.util.a1.o(f10, 0.0f, 1.0f);
        if (this.f10965i0 == fO) {
            return;
        }
        this.f10965i0 = fO;
        this.f10970l.z1(fO);
        this.f10972m.l(22, new androidx.media3.common.util.t.a() {
            @Override
            public final void invoke(Object obj) {
                ((androidx.media3.common.a0.d) obj).onVolumeChanged(fO);
            }
        });
    }

    @Override
    public void stop() {
        M2();
        F2(null);
        this.f10969k0 = new u1.b(ImmutableList.of(), this.f10989u0.f12249s);
    }

    @Override
    public int u() {
        M2();
        int iE1 = E1(this.f10989u0);
        if (iE1 == -1) {
            return 0;
        }
        return iE1;
    }

    public void u1(SurfaceHolder surfaceHolder) {
        M2();
        if (surfaceHolder == null || surfaceHolder != this.Y) {
            return;
        }
        clearVideoSurface();
    }

    @Override
    public long v() {
        M2();
        if (this.f10989u0.f12231a.q()) {
            return this.f10995x0;
        }
        r3 r3Var = this.f10989u0;
        if (r3Var.f12241k.f12574d != r3Var.f12232b.f12574d) {
            return r3Var.f12231a.n(u(), this.f9664a).d();
        }
        long j10 = r3Var.f12247q;
        if (this.f10989u0.f12241k.b()) {
            r3 r3Var2 = this.f10989u0;
            androidx.media3.common.e0.b bVarH = r3Var2.f12231a.h(r3Var2.f12241k.f12571a, this.f10976o);
            long jF = bVarH.f(this.f10989u0.f12241k.f12572b);
            j10 = jF == Long.MIN_VALUE ? bVarH.f9625d : jF;
        }
        r3 r3Var3 = this.f10989u0;
        return androidx.media3.common.util.a1.y1(s2(r3Var3.f12231a, r3Var3.f12241k, j10));
    }

    @Override
    public androidx.media3.common.v y() {
        M2();
        return this.S;
    }

    public void y2(List list) {
        M2();
        z2(list, true);
    }

    @Override
    public long z() {
        M2();
        return this.f10990v;
    }

    public void z2(List list, boolean z10) {
        M2();
        A2(list, -1, C.TIME_UNSET, z10);
    }

    @Override
    public ExoPlaybackException c() {
        M2();
        return this.f10989u0.f12236f;
    }
}
