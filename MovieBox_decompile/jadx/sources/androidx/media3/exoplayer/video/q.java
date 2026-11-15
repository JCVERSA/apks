package androidx.media3.exoplayer.video;

import android.content.Context;
import android.os.Looper;
import android.util.Pair;
import android.util.SparseArray;
import android.view.Surface;
import androidx.media3.common.VideoFrameProcessingException;
import androidx.media3.common.j0;
import androidx.media3.common.k0;
import androidx.media3.common.l0;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.o0;
import androidx.media3.exoplayer.w3;
import com.google.common.base.Suppliers;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Collection;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.Executor;

public final class q implements l0 {

    private static final Executor f12861y = new Executor() {
        @Override
        public final void execute(Runnable runnable) {
            q.G(runnable);
        }
    };

    private final Context f12862a;

    private final o0 f12863b;

    private final androidx.media3.common.c0.a f12864c;

    private final SparseArray f12865d;

    private final List f12866e;

    private final j0 f12867f;

    private final VideoSink f12868g;

    private final VideoSink.b f12869h;

    private final androidx.media3.common.util.i f12870i;

    private final CopyOnWriteArraySet f12871j;

    private final boolean f12872k;

    private androidx.media3.common.r f12873l;

    private androidx.media3.common.util.p f12874m;

    private long f12875n;

    private Pair f12876o;

    private int f12877p;

    private int f12878q;

    private w3.a f12879r;

    private long f12880s;

    private long f12881t;

    private boolean f12882u;

    private long f12883v;

    private int f12884w;

    private int f12885x;

    class a implements VideoSink.b {
        a() {
        }

        @Override
        public void a(long j10) {
            q.w(q.this);
            android.support.v4.media.session.c.a(androidx.media3.common.util.a.i(null));
            throw null;
        }

        @Override
        public void b() {
            q.w(q.this);
            android.support.v4.media.session.c.a(androidx.media3.common.util.a.i(null));
            throw null;
        }
    }

    public static final class b {

        private final Context f12887a;

        private final u f12888b;

        private k0.a f12889c;

        private androidx.media3.common.c0.a f12890d;

        private List f12891e = ImmutableList.of();

        private j0 f12892f = j0.f9784a;

        private androidx.media3.common.util.i f12893g = androidx.media3.common.util.i.f10075a;

        private boolean f12894h;

        private boolean f12895i;

        public b(Context context, u uVar) {
            this.f12887a = context.getApplicationContext();
            this.f12888b = uVar;
        }

        public q h() {
            androidx.media3.common.util.a.g(!this.f12895i);
            a aVar = null;
            if (this.f12890d == null) {
                if (this.f12889c == null) {
                    this.f12889c = new e(aVar);
                }
                this.f12890d = new f(this.f12889c);
            }
            q qVar = new q(this, aVar);
            this.f12895i = true;
            return qVar;
        }

        public b i(androidx.media3.common.util.i iVar) {
            this.f12893g = iVar;
            return this;
        }
    }

    private final class c implements VideoSink, d {

        private final int f12896a;

        private final int f12897b;

        private androidx.media3.common.r f12899d;

        private int f12900e;

        private long f12901f;

        private boolean f12905j;

        private ImmutableList f12898c = ImmutableList.of();

        private long f12902g = C.TIME_UNSET;

        private VideoSink.a f12903h = VideoSink.a.f12761a;

        private Executor f12904i = q.f12861y;

        public c(Context context, int i10) {
            this.f12897b = i10;
            this.f12896a = a1.f0(context);
        }

        private void w(androidx.media3.common.r rVar) {
            rVar.b().T(q.A(rVar.C)).N();
            android.support.v4.media.session.c.a(androidx.media3.common.util.a.i(null));
            throw null;
        }

        private void x(List list) {
            if (q.this.f12864c.a()) {
                this.f12898c = ImmutableList.copyOf((Collection) list);
            } else {
                this.f12898c = new ImmutableList.a().l(list).l(q.this.f12866e).e();
            }
        }

        @Override
        public void a(float f10) {
            q.this.N(f10);
        }

        @Override
        public boolean b(long j10, boolean z10, VideoSink.b bVar) {
            androidx.media3.common.util.a.g(isInitialized());
            if (!q.this.Q()) {
                return false;
            }
            android.support.v4.media.session.c.a(androidx.media3.common.util.a.i(null));
            throw null;
        }

        @Override
        public void c() {
            q.this.f12868g.c();
        }

        @Override
        public void d(t tVar) {
            q.this.P(tVar);
        }

        @Override
        public void e() {
            q.this.f12881t = this.f12902g;
            if (q.this.f12880s >= q.this.f12881t) {
                q.this.f12868g.e();
                q.this.f12882u = true;
            }
        }

        @Override
        public void f(long j10, long j11) {
            o0 o0Var = q.this.f12863b;
            long j12 = this.f12902g;
            o0Var.a(j12 == C.TIME_UNSET ? 0L : j12 + 1, Long.valueOf(j10));
            this.f12901f = j11;
            q.this.L(j11);
        }

        @Override
        public void g() {
            q.this.f12868g.g();
        }

        @Override
        public void h(w3.a aVar) {
            q.this.f12879r = aVar;
        }

        @Override
        public void i(List list) {
            if (this.f12898c.equals(list)) {
                return;
            }
            x(list);
            androidx.media3.common.r rVar = this.f12899d;
            if (rVar != null) {
                w(rVar);
            }
        }

        @Override
        public boolean isEnded() {
            return isInitialized() && q.this.C();
        }

        @Override
        public boolean isInitialized() {
            return false;
        }

        @Override
        public boolean j(boolean z10) {
            return q.this.E(z10 && isInitialized());
        }

        @Override
        public boolean k(androidx.media3.common.r rVar) throws VideoSink.VideoSinkException {
            androidx.media3.common.util.a.g(!isInitialized());
            q.e(q.this, rVar, this.f12897b);
            return false;
        }

        @Override
        public void l(boolean z10) {
            q.this.f12868g.l(z10);
        }

        @Override
        public Surface m() {
            androidx.media3.common.util.a.g(isInitialized());
            android.support.v4.media.session.c.a(androidx.media3.common.util.a.i(null));
            throw null;
        }

        @Override
        public void n() {
            q.this.f12868g.n();
        }

        @Override
        public void o(int i10, androidx.media3.common.r rVar, List list) {
            androidx.media3.common.util.a.g(isInitialized());
            if (i10 != 1 && i10 != 2) {
                throw new UnsupportedOperationException("Unsupported input type " + i10);
            }
            x(list);
            this.f12900e = i10;
            this.f12899d = rVar;
            q.this.f12881t = C.TIME_UNSET;
            q.this.f12882u = false;
            w(rVar);
        }

        @Override
        public void p(Surface surface, androidx.media3.common.util.l0 l0Var) {
            q.this.M(surface, l0Var);
        }

        @Override
        public void q() {
            q.this.f12868g.q();
        }

        @Override
        public void r(int i10) {
            q.this.f12868g.r(i10);
        }

        @Override
        public void release() {
            q.this.J();
        }

        @Override
        public void render(long j10, long j11) {
            q.this.K(j10, j11);
        }

        @Override
        public void s() {
            q.this.y();
        }

        @Override
        public void t(boolean z10) {
            if (isInitialized()) {
                throw null;
            }
            this.f12902g = C.TIME_UNSET;
            q.this.z(z10);
            this.f12905j = false;
        }

        @Override
        public void u(boolean z10) {
            q.this.f12868g.u(z10);
        }

        @Override
        public void v(VideoSink.a aVar, Executor executor) {
            this.f12903h = aVar;
            this.f12904i = executor;
        }
    }

    public interface d {
    }

    static final class e implements k0.a {

        private static final com.google.common.base.q f12907a = Suppliers.a(new com.google.common.base.q() {
            @Override
            public final Object get() {
                return q.e.b();
            }
        });

        private e() {
        }

        public static k0.a b() {
            try {
                Class<?> cls = Class.forName("androidx.media3.effect.DefaultVideoFrameProcessor$Factory$Builder");
                return (k0.a) androidx.media3.common.util.a.e(cls.getMethod("build", null).invoke(cls.getConstructor(null).newInstance(null), null));
            } catch (Exception e10) {
                throw new IllegalStateException(e10);
            }
        }

        e(a aVar) {
            this();
        }
    }

    private static final class f implements androidx.media3.common.c0.a {

        private final k0.a f12908a;

        public f(k0.a aVar) {
            this.f12908a = aVar;
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public androidx.media3.common.c0 b(Context context, androidx.media3.common.i iVar, androidx.media3.common.l lVar, l0 l0Var, Executor executor, j0 j0Var, List list, long j10) throws VideoFrameProcessingException {
            try {
                try {
                    ((androidx.media3.common.c0.a) Class.forName("androidx.media3.effect.PreviewingSingleInputVideoGraph$Factory").getConstructor(k0.a.class).newInstance(this.f12908a)).b(context, iVar, lVar, l0Var, executor, j0Var, list, j10);
                    return null;
                } catch (Exception e10) {
                    e = e10;
                    throw VideoFrameProcessingException.from(e);
                }
            } catch (Exception e11) {
                e = e11;
            }
        }
    }

    q(b bVar, a aVar) {
        this(bVar);
    }

    public static androidx.media3.common.i A(androidx.media3.common.i iVar) {
        return (iVar == null || !iVar.g()) ? androidx.media3.common.i.f9751h : iVar;
    }

    public boolean C() {
        return this.f12877p == 0 && this.f12882u && this.f12868g.isEnded();
    }

    private boolean D() {
        return this.f12878q == 1;
    }

    public boolean E(boolean z10) {
        return this.f12868g.j(z10 && this.f12877p == 0);
    }

    public void F() {
        this.f12877p--;
    }

    private k0 I(androidx.media3.common.r rVar, int i10) throws VideoSink.VideoSinkException {
        if (i10 != 0) {
            if (!D()) {
                return null;
            }
            try {
                android.support.v4.media.session.c.a(androidx.media3.common.util.a.e(null));
                throw null;
            } catch (VideoFrameProcessingException e10) {
                throw new VideoSink.VideoSinkException(e10, rVar);
            }
        }
        androidx.media3.common.util.a.g(this.f12878q == 0);
        androidx.media3.common.i iVarA = A(rVar.C);
        if (this.f12872k) {
            iVarA = androidx.media3.common.i.f9751h;
        } else if (iVarA.f9761c == 7 && a1.f10038a < 34) {
            iVarA = iVarA.a().e(6).a();
        }
        androidx.media3.common.i iVar = iVarA;
        final androidx.media3.common.util.p pVarCreateHandler = this.f12870i.createHandler((Looper) androidx.media3.common.util.a.i(Looper.myLooper()), null);
        this.f12874m = pVarCreateHandler;
        try {
            androidx.media3.common.c0.a aVar = this.f12864c;
            Context context = this.f12862a;
            androidx.media3.common.l lVar = androidx.media3.common.l.f9785a;
            Objects.requireNonNull(pVarCreateHandler);
            aVar.b(context, iVar, lVar, this, new Executor() {
                @Override
                public final void execute(Runnable runnable) {
                    pVarCreateHandler.post(runnable);
                }
            }, this.f12867f, this.f12866e, 0L);
            throw null;
        } catch (VideoFrameProcessingException e11) {
            throw new VideoSink.VideoSinkException(e11, rVar);
        }
    }

    public void K(long j10, long j11) {
        this.f12868g.render(j10, j11);
    }

    public void L(long j10) {
        this.f12883v = j10;
        this.f12868g.f(this.f12875n, j10);
    }

    public void N(float f10) {
        this.f12868g.a(f10);
    }

    public void P(t tVar) {
        this.f12868g.d(tVar);
    }

    public boolean Q() {
        int i10 = this.f12884w;
        return i10 != -1 && i10 == this.f12885x;
    }

    static k0 e(q qVar, androidx.media3.common.r rVar, int i10) throws VideoSink.VideoSinkException {
        qVar.I(rVar, i10);
        return null;
    }

    static androidx.media3.common.c0 w(q qVar) {
        qVar.getClass();
        return null;
    }

    public void z(boolean z10) {
        if (D()) {
            this.f12877p++;
            this.f12868g.t(z10);
            while (this.f12863b.l() > 1) {
                this.f12863b.i();
            }
            if (this.f12863b.l() == 1) {
                this.f12868g.f(((Long) androidx.media3.common.util.a.e((Long) this.f12863b.i())).longValue(), this.f12883v);
            }
            this.f12880s = C.TIME_UNSET;
            this.f12881t = C.TIME_UNSET;
            this.f12882u = false;
            ((androidx.media3.common.util.p) androidx.media3.common.util.a.i(this.f12874m)).post(new Runnable() {
                @Override
                public final void run() {
                    this.f12860a.F();
                }
            });
        }
    }

    public VideoSink B(int i10) {
        androidx.media3.common.util.a.g(!a1.r(this.f12865d, i10));
        c cVar = new c(this.f12862a, i10);
        x(cVar);
        this.f12865d.put(i10, cVar);
        return cVar;
    }

    public void J() {
        if (this.f12878q == 2) {
            return;
        }
        androidx.media3.common.util.p pVar = this.f12874m;
        if (pVar != null) {
            pVar.removeCallbacksAndMessages(null);
        }
        this.f12876o = null;
        this.f12878q = 2;
    }

    public void M(Surface surface, androidx.media3.common.util.l0 l0Var) {
        Pair pair = this.f12876o;
        if (pair != null && ((Surface) pair.first).equals(surface) && ((androidx.media3.common.util.l0) this.f12876o.second).equals(l0Var)) {
            return;
        }
        this.f12876o = Pair.create(surface, l0Var);
        H(surface, l0Var.b(), l0Var.a());
    }

    public void O(int i10) {
        this.f12884w = i10;
    }

    public void x(d dVar) {
        this.f12871j.add(dVar);
    }

    public void y() {
        androidx.media3.common.util.l0 l0Var = androidx.media3.common.util.l0.f10095c;
        H(null, l0Var.b(), l0Var.a());
        this.f12876o = null;
    }

    private q(b bVar) {
        this.f12862a = bVar.f12887a;
        this.f12863b = new o0();
        this.f12864c = (androidx.media3.common.c0.a) androidx.media3.common.util.a.i(bVar.f12890d);
        this.f12865d = new SparseArray();
        this.f12866e = bVar.f12891e;
        this.f12867f = bVar.f12892f;
        androidx.media3.common.util.i iVar = bVar.f12893g;
        this.f12870i = iVar;
        this.f12868g = new androidx.media3.exoplayer.video.e(bVar.f12888b, iVar);
        this.f12869h = new a();
        this.f12871j = new CopyOnWriteArraySet();
        this.f12872k = bVar.f12894h;
        this.f12873l = new androidx.media3.common.r.b().N();
        this.f12880s = C.TIME_UNSET;
        this.f12881t = C.TIME_UNSET;
        this.f12884w = -1;
        this.f12878q = 0;
    }

    public static void G(Runnable runnable) {
    }

    private void H(Surface surface, int i10, int i11) {
    }
}
