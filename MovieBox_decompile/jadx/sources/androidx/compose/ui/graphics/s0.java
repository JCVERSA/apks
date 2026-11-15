package androidx.compose.ui.graphics;

import android.graphics.Paint;
import android.graphics.Shader;

public final class s0 implements m4 {

    private Paint f4323a;

    private int f4324b;

    private Shader f4325c;

    private v1 f4326d;

    public s0(Paint paint) {
        this.f4323a = paint;
        this.f4324b = c1.f3983a.B();
    }

    @Override
    public void A(float f10) {
        t0.t(this.f4323a, f10);
    }

    @Override
    public int B() {
        return t0.e(this.f4323a);
    }

    @Override
    public void C(int i10) {
        t0.v(this.f4323a, i10);
    }

    @Override
    public long a() {
        return t0.d(this.f4323a);
    }

    @Override
    public float getAlpha() {
        return t0.c(this.f4323a);
    }

    @Override
    public float getStrokeWidth() {
        return t0.i(this.f4323a);
    }

    @Override
    public v1 i() {
        return this.f4326d;
    }

    @Override
    public int l() {
        return this.f4324b;
    }

    @Override
    public void m(int i10) {
        t0.r(this.f4323a, i10);
    }

    @Override
    public void n(int i10) {
        if (c1.E(this.f4324b, i10)) {
            return;
        }
        this.f4324b = i10;
        t0.l(this.f4323a, i10);
    }

    @Override
    public void o(int i10) {
        t0.o(this.f4323a, i10);
    }

    @Override
    public int p() {
        return t0.f(this.f4323a);
    }

    @Override
    public void q(p4 p4Var) {
        t0.p(this.f4323a, p4Var);
    }

    @Override
    public void r(int i10) {
        t0.s(this.f4323a, i10);
    }

    @Override
    public void s(long j10) {
        t0.m(this.f4323a, j10);
    }

    @Override
    public void setAlpha(float f10) {
        t0.k(this.f4323a, f10);
    }

    @Override
    public void setStrokeWidth(float f10) {
        t0.u(this.f4323a, f10);
    }

    @Override
    public p4 t() {
        return null;
    }

    @Override
    public int u() {
        return t0.g(this.f4323a);
    }

    @Override
    public float v() {
        return t0.h(this.f4323a);
    }

    @Override
    public Paint w() {
        return this.f4323a;
    }

    @Override
    public void x(Shader shader) {
        this.f4325c = shader;
        t0.q(this.f4323a, shader);
    }

    @Override
    public Shader y() {
        return this.f4325c;
    }

    @Override
    public void z(v1 v1Var) {
        this.f4326d = v1Var;
        t0.n(this.f4323a, v1Var);
    }

    public s0() {
        this(t0.j());
    }
}
