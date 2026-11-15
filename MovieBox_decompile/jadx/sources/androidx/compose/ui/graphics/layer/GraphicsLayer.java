package androidx.compose.ui.graphics.layer;

import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.RectF;
import android.os.Build;
import androidx.collection.MutableScatterSet;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.c1;
import androidx.compose.ui.graphics.k4;
import androidx.compose.ui.graphics.l1;
import androidx.compose.ui.graphics.m1;
import androidx.compose.ui.graphics.m4;
import androidx.compose.ui.graphics.o4;
import androidx.compose.ui.graphics.t1;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.v1;
import androidx.compose.ui.graphics.w4;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class GraphicsLayer {

    public static final a f4159x = new a(null);

    private static final f0 f4160y;

    private final GraphicsLayerImpl f4161a;

    private Outline f4166f;

    private long f4168h;

    private long f4169i;

    private float f4170j;

    private k4 f4171k;

    private Path f4172l;

    private Path f4173m;

    private boolean f4174n;

    private m4 f4175o;

    private int f4176p;

    private final androidx.compose.ui.graphics.layer.a f4177q;

    private boolean f4178r;

    private long f4179s;

    private long f4180t;

    private long f4181u;

    private boolean f4182v;

    private RectF f4183w;

    private o0.e f4162b = z.e.a();

    private LayoutDirection f4163c = LayoutDirection.Ltr;

    private Function1 f4164d = new Function1<z.g, Unit>() {
        @Override
        public Object invoke(Object obj) {
            invoke((z.g) obj);
            return Unit.f64096a;
        }

        public final void invoke(z.g gVar) {
        }
    };

    private final Function1 f4165e = new Function1<z.g, Unit>() {
        {
            super(1);
        }

        @Override
        public Object invoke(Object obj) {
            invoke((z.g) obj);
            return Unit.f64096a;
        }

        public final void invoke(z.g gVar) {
            Path path = this.this$0.f4172l;
            if (!this.this$0.f4174n || !this.this$0.k() || path == null) {
                this.this$0.f4164d.invoke(gVar);
                return;
            }
            Function1 function1 = this.this$0.f4164d;
            int iB = t1.f4338a.b();
            z.d dVarG0 = gVar.G0();
            long jI = dVarG0.i();
            dVarG0.e().n();
            try {
                dVarG0.c().b(path, iB);
                function1.invoke(gVar);
            } finally {
                dVarG0.e().j();
                dVarG0.f(jI);
            }
        }
    };

    private boolean f4167g = true;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    static {
        f0 f0Var;
        if (e0.f4282a.a()) {
            f0Var = g0.f4284a;
        } else if (Build.VERSION.SDK_INT >= 28) {
            f0Var = i0.f4286a;
        } else {
            f0Var = r0.f4293a.a() ? h0.f4285a : g0.f4284a;
        }
        f4160y = f0Var;
    }

    public GraphicsLayer(GraphicsLayerImpl graphicsLayerImpl, e0 e0Var) {
        this.f4161a = graphicsLayerImpl;
        y.g.a aVar = y.g.f75999b;
        this.f4168h = aVar.c();
        this.f4169i = y.m.f76020b.a();
        this.f4177q = new androidx.compose.ui.graphics.layer.a();
        graphicsLayerImpl.r(false);
        this.f4179s = o0.p.f67416b.a();
        this.f4180t = o0.t.f67425b.a();
        this.f4181u = aVar.b();
    }

    private final Outline A() {
        Outline outline = this.f4166f;
        if (outline != null) {
            return outline;
        }
        Outline outline2 = new Outline();
        this.f4166f = outline2;
        return outline2;
    }

    private final RectF B() {
        RectF rectF = this.f4183w;
        if (rectF != null) {
            return rectF;
        }
        RectF rectF2 = new RectF();
        this.f4183w = rectF2;
        return rectF2;
    }

    private final void C() {
        this.f4176p++;
    }

    private final void D() {
        this.f4176p--;
        f();
    }

    /* JADX WARN: Code duplicated, block: B:29:0x008f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:30:0x0091 A[LOOP:0: B:20:0x005a->B:30:0x0091, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:34:0x0094 A[EDGE_INSN: B:34:0x0094->B:31:0x0094 BREAK  A[LOOP:0: B:20:0x005a->B:30:0x0091], SYNTHETIC] */
    private final void F() {
        androidx.compose.ui.graphics.layer.a aVar = this.f4177q;
        aVar.f4199b = aVar.f4198a;
        MutableScatterSet mutableScatterSet = aVar.f4200c;
        if (mutableScatterSet != null && mutableScatterSet.e()) {
            MutableScatterSet mutableScatterSetA = aVar.f4201d;
            if (mutableScatterSetA == null) {
                mutableScatterSetA = androidx.collection.w0.a();
                aVar.f4201d = mutableScatterSetA;
            }
            mutableScatterSetA.i(mutableScatterSet);
            mutableScatterSet.m();
        }
        aVar.f4202e = true;
        this.f4161a.I(this.f4162b, this.f4163c, this, this.f4165e);
        aVar.f4202e = false;
        GraphicsLayer graphicsLayer = aVar.f4199b;
        if (graphicsLayer != null) {
            graphicsLayer.D();
        }
        MutableScatterSet mutableScatterSet2 = aVar.f4201d;
        if (mutableScatterSet2 == null || !mutableScatterSet2.e()) {
            return;
        }
        Object[] objArr = mutableScatterSet2.f1938b;
        long[] jArr = mutableScatterSet2.f1937a;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i10 = 0;
            while (true) {
                long j10 = jArr[i10];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) == -9187201950435737472L) {
                    if (i10 != length) {
                        break;
                        break;
                    }
                    i10++;
                } else {
                    int i11 = 8 - ((~(i10 - length)) >>> 31);
                    for (int i12 = 0; i12 < i11; i12++) {
                        if ((255 & j10) < 128) {
                            ((GraphicsLayer) objArr[(i10 << 3) + i12]).D();
                        }
                        j10 >>= 8;
                    }
                    if (i11 != 8) {
                        break;
                    } else if (i10 != length) {
                        break;
                    } else {
                        i10++;
                    }
                }
            }
        }
        mutableScatterSet2.m();
    }

    private final void G() {
        if (this.f4161a.n()) {
            return;
        }
        try {
            F();
        } catch (Throwable unused) {
        }
    }

    private final void I() {
        this.f4171k = null;
        this.f4172l = null;
        this.f4169i = y.m.f76020b.a();
        this.f4168h = y.g.f75999b.c();
        this.f4170j = 0.0f;
        this.f4167g = true;
        this.f4174n = false;
    }

    private final void Q(long j10, long j11) {
        this.f4161a.B(o0.p.h(j10), o0.p.i(j10), j11);
    }

    private final void a0(long j10) {
        if (o0.t.e(this.f4180t, j10)) {
            return;
        }
        this.f4180t = j10;
        Q(this.f4179s, j10);
        if (this.f4169i == 9205357640488583168L) {
            this.f4167g = true;
            e();
        }
    }

    private final void d(GraphicsLayer graphicsLayer) {
        if (this.f4177q.i(graphicsLayer)) {
            graphicsLayer.C();
        }
    }

    private final void e() {
        if (this.f4167g) {
            Outline outline = null;
            if (this.f4182v || u() > 0.0f) {
                Path path = this.f4172l;
                if (path != null) {
                    RectF rectFB = B();
                    if (!(path instanceof androidx.compose.ui.graphics.u0)) {
                        throw new UnsupportedOperationException("Unable to obtain android.graphics.Path");
                    }
                    ((androidx.compose.ui.graphics.u0) path).p().computeBounds(rectFB, false);
                    Outline outlineG0 = g0(path);
                    if (outlineG0 != null) {
                        outlineG0.setAlpha(i());
                        outline = outlineG0;
                    }
                    this.f4161a.G(outline, o0.u.a(Math.round(rectFB.width()), Math.round(rectFB.height())));
                    if (this.f4174n && this.f4182v) {
                        this.f4161a.r(false);
                        this.f4161a.k();
                    } else {
                        this.f4161a.r(this.f4182v);
                    }
                } else {
                    this.f4161a.r(this.f4182v);
                    y.m.f76020b.b();
                    Outline outlineA = A();
                    long jD = o0.u.d(this.f4180t);
                    long j10 = this.f4168h;
                    long j11 = this.f4169i;
                    long j12 = j11 == 9205357640488583168L ? jD : j11;
                    outlineA.setRoundRect(Math.round(y.g.m(j10)), Math.round(y.g.n(j10)), Math.round(y.g.m(j10) + y.m.i(j12)), Math.round(y.g.n(j10) + y.m.g(j12)), this.f4170j);
                    outlineA.setAlpha(i());
                    this.f4161a.G(outlineA, o0.u.c(j12));
                }
            } else {
                this.f4161a.r(false);
                this.f4161a.G(null, o0.t.f67425b.a());
            }
        }
        this.f4167g = false;
    }

    private final void f() {
        if (this.f4178r && this.f4176p == 0) {
            g();
        }
    }

    private final void f0(Canvas canvas) {
        float fH = o0.p.h(this.f4179s);
        float fI = o0.p.i(this.f4179s);
        float fH2 = o0.p.h(this.f4179s) + o0.t.g(this.f4180t);
        float fI2 = o0.p.i(this.f4179s) + o0.t.f(this.f4180t);
        float fI3 = i();
        v1 v1VarL = l();
        int iJ = j();
        if (fI3 < 1.0f || !c1.E(iJ, c1.f3983a.B()) || v1VarL != null || b.e(m(), b.f4203a.c())) {
            m4 m4VarA = this.f4175o;
            if (m4VarA == null) {
                m4VarA = androidx.compose.ui.graphics.t0.a();
                this.f4175o = m4VarA;
            }
            m4VarA.setAlpha(fI3);
            m4VarA.n(iJ);
            m4VarA.z(v1VarL);
            canvas.saveLayer(fH, fI, fH2, fI2, m4VarA.w());
        } else {
            canvas.save();
        }
        canvas.translate(fH, fI);
        canvas.concat(this.f4161a.E());
    }

    private final Outline g0(Path path) {
        Outline outline;
        int i10 = Build.VERSION.SDK_INT;
        if (i10 > 28 || path.a()) {
            Outline outlineA = A();
            if (i10 >= 30) {
                l0.f4288a.a(outlineA, path);
            } else {
                if (!(path instanceof androidx.compose.ui.graphics.u0)) {
                    throw new UnsupportedOperationException("Unable to obtain android.graphics.Path");
                }
                outlineA.setConvexPath(((androidx.compose.ui.graphics.u0) path).p());
            }
            this.f4174n = !outlineA.canClip();
            outline = outlineA;
        } else {
            Outline outline2 = this.f4166f;
            if (outline2 != null) {
                outline2.setEmpty();
            }
            this.f4174n = true;
            this.f4161a.F(true);
            outline = null;
        }
        this.f4172l = path;
        return outline;
    }

    public final void E(o0.e eVar, LayoutDirection layoutDirection, long j10, Function1 function1) {
        a0(j10);
        this.f4162b = eVar;
        this.f4163c = layoutDirection;
        this.f4164d = function1;
        this.f4161a.F(true);
        F();
    }

    public final void H() {
        if (this.f4178r) {
            return;
        }
        this.f4178r = true;
        f();
    }

    public final void J(float f10) {
        if (this.f4161a.getAlpha() == f10) {
            return;
        }
        this.f4161a.setAlpha(f10);
    }

    public final void K(long j10) {
        if (u1.m(j10, this.f4161a.C())) {
            return;
        }
        this.f4161a.p(j10);
    }

    public final void L(float f10) {
        if (this.f4161a.q() == f10) {
            return;
        }
        this.f4161a.d(f10);
    }

    public final void M(boolean z10) {
        if (this.f4182v != z10) {
            this.f4182v = z10;
            this.f4167g = true;
            e();
        }
    }

    public final void N(int i10) {
        if (b.e(this.f4161a.z(), i10)) {
            return;
        }
        this.f4161a.J(i10);
    }

    public final void O(Path path) {
        I();
        this.f4172l = path;
        e();
    }

    public final void P(long j10) {
        if (y.g.j(this.f4181u, j10)) {
            return;
        }
        this.f4181u = j10;
        this.f4161a.H(j10);
    }

    public final void R(long j10, long j11) {
        W(j10, j11, 0.0f);
    }

    public final void S(w4 w4Var) {
        this.f4161a.v();
        if (Intrinsics.c(null, w4Var)) {
            return;
        }
        this.f4161a.c(w4Var);
    }

    public final void T(float f10) {
        if (this.f4161a.y() == f10) {
            return;
        }
        this.f4161a.e(f10);
    }

    public final void U(float f10) {
        if (this.f4161a.m() == f10) {
            return;
        }
        this.f4161a.f(f10);
    }

    public final void V(float f10) {
        if (this.f4161a.o() == f10) {
            return;
        }
        this.f4161a.g(f10);
    }

    public final void W(long j10, long j11, float f10) {
        if (y.g.j(this.f4168h, j10) && y.m.f(this.f4169i, j11) && this.f4170j == f10 && this.f4172l == null) {
            return;
        }
        I();
        this.f4168h = j10;
        this.f4169i = j11;
        this.f4170j = f10;
        e();
    }

    public final void X(float f10) {
        if (this.f4161a.t() == f10) {
            return;
        }
        this.f4161a.b(f10);
    }

    public final void Y(float f10) {
        if (this.f4161a.A() == f10) {
            return;
        }
        this.f4161a.h(f10);
    }

    public final void Z(float f10) {
        if (this.f4161a.K() == f10) {
            return;
        }
        this.f4161a.u(f10);
        this.f4167g = true;
        e();
    }

    public final void b0(long j10) {
        if (u1.m(j10, this.f4161a.D())) {
            return;
        }
        this.f4161a.s(j10);
    }

    public final void c0(long j10) {
        if (o0.p.g(this.f4179s, j10)) {
            return;
        }
        this.f4179s = j10;
        Q(j10, this.f4180t);
    }

    public final void d0(float f10) {
        if (this.f4161a.x() == f10) {
            return;
        }
        this.f4161a.j(f10);
    }

    public final void e0(float f10) {
        if (this.f4161a.w() == f10) {
            return;
        }
        this.f4161a.a(f10);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0055 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:20:0x0057 A[LOOP:0: B:10:0x0020->B:20:0x0057, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:25:0x005a A[EDGE_INSN: B:25:0x005a->B:21:0x005a BREAK  A[LOOP:0: B:10:0x0020->B:20:0x0057], SYNTHETIC] */
    public final void g() {
        androidx.compose.ui.graphics.layer.a aVar = this.f4177q;
        GraphicsLayer graphicsLayer = aVar.f4198a;
        if (graphicsLayer != null) {
            graphicsLayer.D();
            aVar.f4198a = null;
        }
        MutableScatterSet mutableScatterSet = aVar.f4200c;
        if (mutableScatterSet != null) {
            Object[] objArr = mutableScatterSet.f1938b;
            long[] jArr = mutableScatterSet.f1937a;
            int length = jArr.length - 2;
            if (length >= 0) {
                int i10 = 0;
                while (true) {
                    long j10 = jArr[i10];
                    if ((((~j10) << 7) & j10 & (-9187201950435737472L)) == -9187201950435737472L) {
                        if (i10 != length) {
                            break;
                            break;
                        }
                        i10++;
                    } else {
                        int i11 = 8 - ((~(i10 - length)) >>> 31);
                        for (int i12 = 0; i12 < i11; i12++) {
                            if ((255 & j10) < 128) {
                                ((GraphicsLayer) objArr[(i10 << 3) + i12]).D();
                            }
                            j10 >>= 8;
                        }
                        if (i11 != 8) {
                            break;
                        } else if (i10 != length) {
                            break;
                        } else {
                            i10++;
                        }
                    }
                }
            }
            mutableScatterSet.m();
        }
        this.f4161a.k();
    }

    public final void h(m1 m1Var, GraphicsLayer graphicsLayer) {
        if (this.f4178r) {
            return;
        }
        e();
        G();
        boolean z10 = u() > 0.0f;
        if (z10) {
            m1Var.k();
        }
        Canvas canvasD = androidx.compose.ui.graphics.h0.d(m1Var);
        boolean zIsHardwareAccelerated = canvasD.isHardwareAccelerated();
        if (!zIsHardwareAccelerated) {
            canvasD.save();
            f0(canvasD);
        }
        boolean z11 = !zIsHardwareAccelerated && this.f4182v;
        if (z11) {
            m1Var.n();
            k4 k4VarN = n();
            if (k4VarN instanceof k4.b) {
                l1.e(m1Var, k4VarN.a(), 0, 2, null);
            } else if (k4VarN instanceof k4.c) {
                Path pathA = this.f4173m;
                if (pathA != null) {
                    pathA.b();
                } else {
                    pathA = androidx.compose.ui.graphics.x0.a();
                    this.f4173m = pathA;
                }
                o4.b(pathA, ((k4.c) k4VarN).b(), null, 2, null);
                l1.c(m1Var, pathA, 0, 2, null);
            } else if (k4VarN instanceof k4.a) {
                l1.c(m1Var, ((k4.a) k4VarN).b(), 0, 2, null);
            }
        }
        if (graphicsLayer != null) {
            graphicsLayer.d(this);
        }
        this.f4161a.L(m1Var);
        if (z11) {
            m1Var.j();
        }
        if (z10) {
            m1Var.o();
        }
        if (zIsHardwareAccelerated) {
            return;
        }
        canvasD.restore();
    }

    public final float i() {
        return this.f4161a.getAlpha();
    }

    public final int j() {
        return this.f4161a.l();
    }

    public final boolean k() {
        return this.f4182v;
    }

    public final v1 l() {
        return this.f4161a.i();
    }

    public final int m() {
        return this.f4161a.z();
    }

    public final k4 n() {
        k4 k4Var = this.f4171k;
        Path path = this.f4172l;
        if (k4Var != null) {
            return k4Var;
        }
        if (path != null) {
            k4.a aVar = new k4.a(path);
            this.f4171k = aVar;
            return aVar;
        }
        long jD = o0.u.d(this.f4180t);
        long j10 = this.f4168h;
        long j11 = this.f4169i;
        if (j11 != 9205357640488583168L) {
            jD = j11;
        }
        float fM = y.g.m(j10);
        float fN = y.g.n(j10);
        float fI = fM + y.m.i(jD);
        float fG = fN + y.m.g(jD);
        float f10 = this.f4170j;
        k4 cVar = f10 > 0.0f ? new k4.c(y.l.c(fM, fN, fI, fG, y.b.b(f10, 0.0f, 2, null))) : new k4.b(new y.i(fM, fN, fI, fG));
        this.f4171k = cVar;
        return cVar;
    }

    public final long o() {
        return this.f4181u;
    }

    public final float p() {
        return this.f4161a.y();
    }

    public final float q() {
        return this.f4161a.m();
    }

    public final float r() {
        return this.f4161a.o();
    }

    public final float s() {
        return this.f4161a.t();
    }

    public final float t() {
        return this.f4161a.A();
    }

    public final float u() {
        return this.f4161a.K();
    }

    public final long v() {
        return this.f4180t;
    }

    public final long w() {
        return this.f4179s;
    }

    public final float x() {
        return this.f4161a.x();
    }

    public final float y() {
        return this.f4161a.w();
    }

    public final boolean z() {
        return this.f4178r;
    }
}
