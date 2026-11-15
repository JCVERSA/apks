package androidx.compose.ui.graphics;

import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.Intrinsics;

public final class x4 implements c4 {

    private int f4575a;

    private float f4579e;

    private float f4580f;

    private float f4581g;

    private float f4584j;

    private float f4585k;

    private float f4586l;

    private boolean f4590p;

    private k4 f4595u;

    private float f4576b = 1.0f;

    private float f4577c = 1.0f;

    private float f4578d = 1.0f;

    private long f4582h = d4.a();

    private long f4583i = d4.a();

    private float f4587m = 8.0f;

    private long f4588n = e5.f4127a.a();

    private a5 f4589o = v4.a();

    private int f4591q = w3.f4565a.a();

    private long f4592r = y.m.f76020b.a();

    private o0.e f4593s = o0.g.b(1.0f, 0.0f, 2, null);

    private LayoutDirection f4594t = LayoutDirection.Ltr;

    @Override
    public float A() {
        return this.f4577c;
    }

    public int B() {
        return this.f4591q;
    }

    @Override
    public float B0() {
        return this.f4593s.B0();
    }

    public final o0.e C() {
        return this.f4593s;
    }

    public final LayoutDirection D() {
        return this.f4594t;
    }

    @Override
    public float D0(float f10) {
        return o0.d.d(this, f10);
    }

    public final int F() {
        return this.f4575a;
    }

    public final k4 G() {
        return this.f4595u;
    }

    @Override
    public long H(float f10) {
        return o0.m.b(this, f10);
    }

    public w4 I() {
        return null;
    }

    @Override
    public float J(long j10) {
        return o0.m.a(this, j10);
    }

    public float L() {
        return this.f4581g;
    }

    public a5 M() {
        return this.f4589o;
    }

    public long O() {
        return this.f4583i;
    }

    public final void P() {
        b(1.0f);
        h(1.0f);
        setAlpha(1.0f);
        j(0.0f);
        a(0.0f);
        u(0.0f);
        p(d4.a());
        s(d4.a());
        e(0.0f);
        f(0.0f);
        g(0.0f);
        d(8.0f);
        d0(e5.f4127a.a());
        z0(v4.a());
        r(false);
        c(null);
        l(w3.f4565a.a());
        V(y.m.f76020b.a());
        this.f4595u = null;
        this.f4575a = 0;
    }

    @Override
    public long P0(long j10) {
        return o0.d.e(this, j10);
    }

    @Override
    public long Q(float f10) {
        return o0.d.f(this, f10);
    }

    public final void R(o0.e eVar) {
        this.f4593s = eVar;
    }

    public final void U(LayoutDirection layoutDirection) {
        this.f4594t = layoutDirection;
    }

    public void V(long j10) {
        this.f4592r = j10;
    }

    public final void Y() {
        this.f4595u = M().a(i(), this.f4594t, this.f4593s);
    }

    @Override
    public void a(float f10) {
        if (this.f4580f == f10) {
            return;
        }
        this.f4575a |= 16;
        this.f4580f = f10;
    }

    @Override
    public void b(float f10) {
        if (this.f4576b == f10) {
            return;
        }
        this.f4575a |= 1;
        this.f4576b = f10;
    }

    @Override
    public long b0() {
        return this.f4588n;
    }

    @Override
    public void c(w4 w4Var) {
        if (Intrinsics.c(null, w4Var)) {
            return;
        }
        this.f4575a |= 131072;
    }

    @Override
    public int c0(float f10) {
        return o0.d.a(this, f10);
    }

    @Override
    public void d(float f10) {
        if (this.f4587m == f10) {
            return;
        }
        this.f4575a |= 2048;
        this.f4587m = f10;
    }

    @Override
    public void d0(long j10) {
        if (e5.c(this.f4588n, j10)) {
            return;
        }
        this.f4575a |= 4096;
        this.f4588n = j10;
    }

    @Override
    public void e(float f10) {
        if (this.f4584j == f10) {
            return;
        }
        this.f4575a |= 256;
        this.f4584j = f10;
    }

    @Override
    public void f(float f10) {
        if (this.f4585k == f10) {
            return;
        }
        this.f4575a |= 512;
        this.f4585k = f10;
    }

    @Override
    public void g(float f10) {
        if (this.f4586l == f10) {
            return;
        }
        this.f4575a |= 1024;
        this.f4586l = f10;
    }

    @Override
    public float getDensity() {
        return this.f4593s.getDensity();
    }

    @Override
    public void h(float f10) {
        if (this.f4577c == f10) {
            return;
        }
        this.f4575a |= 2;
        this.f4577c = f10;
    }

    @Override
    public float h0(long j10) {
        return o0.d.c(this, j10);
    }

    public long i() {
        return this.f4592r;
    }

    @Override
    public void j(float f10) {
        if (this.f4579e == f10) {
            return;
        }
        this.f4575a |= 8;
        this.f4579e = f10;
    }

    @Override
    public void l(int i10) {
        if (w3.e(this.f4591q, i10)) {
            return;
        }
        this.f4575a |= 32768;
        this.f4591q = i10;
    }

    @Override
    public float m() {
        return this.f4585k;
    }

    public float n() {
        return this.f4578d;
    }

    @Override
    public float o() {
        return this.f4586l;
    }

    @Override
    public void p(long j10) {
        if (u1.m(this.f4582h, j10)) {
            return;
        }
        this.f4575a |= 64;
        this.f4582h = j10;
    }

    @Override
    public float q() {
        return this.f4587m;
    }

    @Override
    public void r(boolean z10) {
        if (this.f4590p != z10) {
            this.f4575a |= 16384;
            this.f4590p = z10;
        }
    }

    @Override
    public void s(long j10) {
        if (u1.m(this.f4583i, j10)) {
            return;
        }
        this.f4575a |= 128;
        this.f4583i = j10;
    }

    @Override
    public void setAlpha(float f10) {
        if (this.f4578d == f10) {
            return;
        }
        this.f4575a |= 4;
        this.f4578d = f10;
    }

    @Override
    public float t() {
        return this.f4576b;
    }

    @Override
    public void u(float f10) {
        if (this.f4581g == f10) {
            return;
        }
        this.f4575a |= 32;
        this.f4581g = f10;
    }

    public long v() {
        return this.f4582h;
    }

    @Override
    public float w() {
        return this.f4580f;
    }

    @Override
    public float x() {
        return this.f4579e;
    }

    @Override
    public float x0(float f10) {
        return o0.d.b(this, f10);
    }

    @Override
    public float y() {
        return this.f4584j;
    }

    public boolean z() {
        return this.f4590p;
    }

    @Override
    public void z0(a5 a5Var) {
        if (Intrinsics.c(this.f4589o, a5Var)) {
            return;
        }
        this.f4575a |= 8192;
        this.f4589o = a5Var;
    }
}
