package androidx.media3.exoplayer.video;

import android.media.MediaFormat;
import android.view.Surface;
import androidx.media3.common.m0;
import androidx.media3.common.util.l0;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.w3;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayDeque;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.Executor;

final class e implements VideoSink {

    private final u f12782a;

    private final androidx.media3.common.util.i f12783b;

    private final x f12784c;

    private final Queue f12785d;

    private Surface f12786e;

    private androidx.media3.common.r f12787f;

    private long f12788g;

    private long f12789h;

    private VideoSink.a f12790i;

    private Executor f12791j;

    private t f12792k;

    final class b implements x.a {

        private androidx.media3.common.r f12793a;

        private b() {
        }

        public void f() {
            e.this.f12790i.c(e.this);
        }

        public void g(m0 m0Var) {
            e.this.f12790i.b(e.this, m0Var);
        }

        public void h() {
            e.this.f12790i.a(e.this);
        }

        @Override
        public void a() {
            e.this.f12791j.execute(new Runnable() {
                @Override
                public final void run() {
                    this.f12801a.f();
                }
            });
            ((VideoSink.b) e.this.f12785d.remove()).b();
        }

        @Override
        public void b(long j10, long j11, boolean z10) {
            if (z10 && e.this.f12786e != null) {
                e.this.f12791j.execute(new Runnable() {
                    @Override
                    public final void run() {
                        this.f12798a.h();
                    }
                });
            }
            androidx.media3.common.r rVarN = this.f12793a;
            if (rVarN == null) {
                rVarN = new androidx.media3.common.r.b().N();
            }
            e.this.f12792k.f(j11, e.this.f12783b.nanoTime(), rVarN, null);
            ((VideoSink.b) e.this.f12785d.remove()).a(j10);
        }

        @Override
        public void onVideoSizeChanged(final m0 m0Var) {
            this.f12793a = new androidx.media3.common.r.b().B0(m0Var.f9803a).d0(m0Var.f9804b).u0("video/raw").N();
            e.this.f12791j.execute(new Runnable() {
                @Override
                public final void run() {
                    this.f12805a.g(m0Var);
                }
            });
        }
    }

    public e(u uVar, androidx.media3.common.util.i iVar) {
        this.f12782a = uVar;
        uVar.o(iVar);
        this.f12783b = iVar;
        this.f12784c = new x(new b(), uVar);
        this.f12785d = new ArrayDeque();
        this.f12787f = new androidx.media3.common.r.b().N();
        this.f12788g = C.TIME_UNSET;
        this.f12790i = VideoSink.a.f12761a;
        this.f12791j = new Executor() {
            @Override
            public final void execute(Runnable runnable) {
                e.E(runnable);
            }
        };
        this.f12792k = new t() {
            @Override
            public final void f(long j10, long j11, androidx.media3.common.r rVar, MediaFormat mediaFormat) {
                e.F(j10, j11, rVar, mediaFormat);
            }
        };
    }

    @Override
    public void a(float f10) {
        this.f12782a.r(f10);
    }

    @Override
    public boolean b(long j10, boolean z10, VideoSink.b bVar) {
        this.f12785d.add(bVar);
        this.f12784c.g(j10 - this.f12789h);
        return true;
    }

    @Override
    public void c() {
        this.f12782a.a();
    }

    @Override
    public void d(t tVar) {
        this.f12792k = tVar;
    }

    @Override
    public void e() {
        this.f12784c.l();
    }

    @Override
    public void f(long j10, long j11) {
        if (j10 != this.f12788g) {
            this.f12784c.h(j10);
            this.f12788g = j10;
        }
        this.f12789h = j11;
    }

    @Override
    public void g() {
        this.f12782a.l();
    }

    @Override
    public void h(w3.a aVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void i(List list) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean isEnded() {
        return this.f12784c.d();
    }

    @Override
    public boolean isInitialized() {
        return true;
    }

    @Override
    public boolean j(boolean z10) {
        return this.f12782a.d(z10);
    }

    @Override
    public boolean k(androidx.media3.common.r rVar) {
        return true;
    }

    @Override
    public void l(boolean z10) {
        this.f12782a.h(z10);
    }

    @Override
    public Surface m() {
        return (Surface) androidx.media3.common.util.a.i(this.f12786e);
    }

    @Override
    public void n() {
        this.f12782a.k();
    }

    @Override
    public void o(int i10, androidx.media3.common.r rVar, List list) {
        androidx.media3.common.util.a.g(list.isEmpty());
        int i11 = rVar.f9856v;
        androidx.media3.common.r rVar2 = this.f12787f;
        if (i11 != rVar2.f9856v || rVar.f9857w != rVar2.f9857w) {
            this.f12784c.i(i11, rVar.f9857w);
        }
        float f10 = rVar.f9858x;
        if (f10 != this.f12787f.f9858x) {
            this.f12782a.p(f10);
        }
        this.f12787f = rVar;
    }

    @Override
    public void p(Surface surface, l0 l0Var) {
        this.f12786e = surface;
        this.f12782a.q(surface);
    }

    @Override
    public void q() {
        this.f12782a.g();
    }

    @Override
    public void r(int i10) {
        this.f12782a.n(i10);
    }

    @Override
    public void render(long j10, long j11) throws VideoSink.VideoSinkException {
        try {
            this.f12784c.j(j10, j11);
        } catch (ExoPlaybackException e10) {
            throw new VideoSink.VideoSinkException(e10, this.f12787f);
        }
    }

    @Override
    public void s() {
        this.f12786e = null;
        this.f12782a.q(null);
    }

    @Override
    public void t(boolean z10) {
        if (z10) {
            this.f12782a.m();
        }
        this.f12784c.b();
        this.f12785d.clear();
    }

    @Override
    public void u(boolean z10) {
        this.f12782a.e(z10);
    }

    @Override
    public void v(VideoSink.a aVar, Executor executor) {
        this.f12790i = aVar;
        this.f12791j = executor;
    }

    @Override
    public void release() {
    }

    public static void E(Runnable runnable) {
    }

    public static void F(long j10, long j11, androidx.media3.common.r rVar, MediaFormat mediaFormat) {
    }
}
