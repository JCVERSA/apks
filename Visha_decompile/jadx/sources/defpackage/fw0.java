package defpackage;

import android.animation.ArgbEvaluator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import kotlin.TypeCastException;

public final class fw0 extends da0 {
    public final RectF h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fw0(rz4 rz4Var) {
        super(rz4Var);
        y45.k(rz4Var, "indicatorOptions");
        this.h = new RectF();
    }

    @Override
    public void a(Canvas canvas) {
        y45.k(canvas, "canvas");
        int iH = c().h();
        if (iH > 1 || (c().i() && iH == 1)) {
            n(canvas);
            p(canvas);
        }
    }

    @Override
    public int h() {
        return ((int) e()) + 6;
    }

    public final void k(Canvas canvas, float f, float f2, float f3) {
        float f4 = 3;
        canvas.drawCircle(f + f4, f2 + f4, f3, d());
    }

    public final void l(Canvas canvas) {
        int iC = c().c();
        tz4 tz4Var = tz4.a;
        float fB = tz4Var.b(c(), e(), iC);
        k(canvas, fB + ((tz4Var.b(c(), e(), (iC + 1) % c().h()) - fB) * c().k()), tz4Var.c(e()), c().b() / 2);
    }

    public final void m(Canvas canvas) {
        float f;
        if (b() == null) {
            j(new ArgbEvaluator());
        }
        int iC = c().c();
        float fK = c().k();
        tz4 tz4Var = tz4.a;
        float fB = tz4Var.b(c(), e(), iC);
        float fC = tz4Var.c(e());
        ArgbEvaluator argbEvaluatorB = b();
        if (argbEvaluatorB != null) {
            Object objEvaluate = argbEvaluatorB.evaluate(fK, Integer.valueOf(c().a()), Integer.valueOf(c().e()));
            Paint paintD = d();
            if (objEvaluate == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Int");
            }
            paintD.setColor(((Integer) objEvaluate).intValue());
        }
        float f2 = 2;
        k(canvas, fB, fC, c().f() / f2);
        ArgbEvaluator argbEvaluatorB2 = b();
        if (argbEvaluatorB2 != null) {
            Object objEvaluate2 = argbEvaluatorB2.evaluate(1 - fK, Integer.valueOf(c().a()), Integer.valueOf(c().e()));
            Paint paintD2 = d();
            if (objEvaluate2 == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Int");
            }
            paintD2.setColor(((Integer) objEvaluate2).intValue());
        }
        if (iC == c().h() - 1) {
            f = tz4Var.b(c(), e(), 0);
        } else {
            f = c().f() + fB + c().l();
        }
        k(canvas, f, fC, c().b() / f2);
    }

    public final void n(Canvas canvas) {
        float f = c().f();
        d().setColor(c().e());
        int iH = c().h();
        for (int i = 0; i < iH; i++) {
            tz4 tz4Var = tz4.a;
            k(canvas, tz4Var.b(c(), e(), i), tz4Var.c(e()), f / 2);
        }
    }

    public final void o(Canvas canvas) {
        Object objEvaluate;
        int iC = c().c();
        float fK = c().k();
        tz4 tz4Var = tz4.a;
        float fB = tz4Var.b(c(), e(), iC);
        float fC = tz4Var.c(e());
        if (b() == null) {
            j(new ArgbEvaluator());
        }
        if (fK < 1) {
            ArgbEvaluator argbEvaluatorB = b();
            if (argbEvaluatorB != null) {
                Object objEvaluate2 = argbEvaluatorB.evaluate(fK, Integer.valueOf(c().a()), Integer.valueOf(c().e()));
                Paint paintD = d();
                if (objEvaluate2 == null) {
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.Int");
                }
                paintD.setColor(((Integer) objEvaluate2).intValue());
            }
            float f = 2;
            k(canvas, fB, fC, (c().b() / f) - (((c().b() / f) - (c().f() / f)) * fK));
        }
        if (iC == c().h() - 1) {
            ArgbEvaluator argbEvaluatorB2 = b();
            objEvaluate = argbEvaluatorB2 != null ? argbEvaluatorB2.evaluate(fK, Integer.valueOf(c().e()), Integer.valueOf(c().a())) : null;
            Paint paintD2 = d();
            if (objEvaluate == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Int");
            }
            paintD2.setColor(((Integer) objEvaluate).intValue());
            float f2 = 2;
            k(canvas, e() / f2, fC, (f() / f2) + (((e() / f2) - (f() / f2)) * fK));
            return;
        }
        if (fK > 0) {
            ArgbEvaluator argbEvaluatorB3 = b();
            objEvaluate = argbEvaluatorB3 != null ? argbEvaluatorB3.evaluate(fK, Integer.valueOf(c().e()), Integer.valueOf(c().a())) : null;
            Paint paintD3 = d();
            if (objEvaluate == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Int");
            }
            paintD3.setColor(((Integer) objEvaluate).intValue());
            float f3 = 2;
            k(canvas, fB + c().l() + c().f(), fC, (c().f() / f3) + (((c().b() / f3) - (c().f() / f3)) * fK));
        }
    }

    public final void p(Canvas canvas) {
        d().setColor(c().a());
        int iJ = c().j();
        if (iJ == 0 || iJ == 2) {
            l(canvas);
            return;
        }
        if (iJ == 3) {
            q(canvas);
        } else if (iJ == 4) {
            o(canvas);
        } else {
            if (iJ != 5) {
                return;
            }
            m(canvas);
        }
    }

    public final void q(Canvas canvas) {
        float f = c().f();
        float fK = c().k();
        int iC = c().c();
        float fL = c().l() + c().f();
        float fB = tz4.a.b(c(), e(), iC);
        float f2 = 2;
        float fC = (wn8.c(((fK - 0.5f) * fL) * 2.0f, 0.0f) + fB) - (c().f() / f2);
        float f3 = 3;
        this.h.set(fC + f3, f3, fB + wn8.f(fK * fL * 2.0f, fL) + (c().f() / f2) + f3, f + f3);
        canvas.drawRoundRect(this.h, f, f, d());
    }
}
