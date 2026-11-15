package defpackage;

import android.animation.ArgbEvaluator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import kotlin.TypeCastException;

public abstract class yo8 extends da0 {
    public RectF h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yo8(rz4 rz4Var) {
        super(rz4Var);
        y45.k(rz4Var, "indicatorOptions");
        this.h = new RectF();
    }

    private final void r(Canvas canvas) {
        float fM = c().m();
        float fK = c().k();
        int iC = c().c();
        float fL = c().l() + c().f();
        float fB = tz4.a.b(c(), e(), iC);
        float f = 2;
        this.h.set((wn8.c(((fK - 0.5f) * fL) * 2.0f, 0.0f) + fB) - (c().f() / f), 0.0f, fB + wn8.f(fK * fL * 2.0f, fL) + (c().f() / f), fM);
        n(canvas, fM, fM);
    }

    @Override
    public void a(Canvas canvas) {
        y45.k(canvas, "canvas");
        int iH = c().h();
        if (iH > 1 || (c().i() && iH == 1)) {
            if (g() && c().j() != 0) {
                q(canvas, iH);
                k(canvas);
            } else {
                if (c().j() != 4) {
                    m(canvas, iH);
                    return;
                }
                for (int i = 0; i < iH; i++) {
                    o(canvas, i);
                }
            }
        }
    }

    public final void k(Canvas canvas) {
        d().setColor(c().a());
        int iJ = c().j();
        if (iJ == 2) {
            p(canvas);
        } else if (iJ == 3) {
            r(canvas);
        } else {
            if (iJ != 5) {
                return;
            }
            l(canvas);
        }
    }

    public final void l(Canvas canvas) {
        int iC = c().c();
        float fK = c().k();
        float f = iC;
        float f2 = (f() * f) + (f * c().l());
        if (b() == null) {
            j(new ArgbEvaluator());
        }
        if (fK < 0.99d) {
            ArgbEvaluator argbEvaluatorB = b();
            if (argbEvaluatorB != null) {
                Object objEvaluate = argbEvaluatorB.evaluate(fK, Integer.valueOf(c().a()), Integer.valueOf(c().e()));
                Paint paintD = d();
                if (objEvaluate == null) {
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.Int");
                }
                paintD.setColor(((Integer) objEvaluate).intValue());
            }
            this.h.set(f2, 0.0f, f() + f2, c().m());
            n(canvas, c().m(), c().m());
        }
        float fL = f2 + c().l() + c().f();
        if (iC == c().h() - 1) {
            fL = 0.0f;
        }
        ArgbEvaluator argbEvaluatorB2 = b();
        if (argbEvaluatorB2 != null) {
            Object objEvaluate2 = argbEvaluatorB2.evaluate(1 - fK, Integer.valueOf(c().a()), Integer.valueOf(c().e()));
            Paint paintD2 = d();
            if (objEvaluate2 == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Int");
            }
            paintD2.setColor(((Integer) objEvaluate2).intValue());
        }
        this.h.set(fL, 0.0f, f() + fL, c().m());
        n(canvas, c().m(), c().m());
    }

    public final void m(Canvas canvas, int i) {
        int i2 = 0;
        float fL = 0.0f;
        while (i2 < i) {
            float fE = i2 == c().c() ? e() : f();
            d().setColor(i2 == c().c() ? c().a() : c().e());
            this.h.set(fL, 0.0f, fL + fE, c().m());
            n(canvas, c().m(), c().m());
            fL += fE + c().l();
            i2++;
        }
    }

    public abstract void n(Canvas canvas, float f, float f2);

    public final void o(Canvas canvas, int i) {
        float fK;
        int iA = c().a();
        float fL = c().l();
        float fM = c().m();
        int iC = c().c();
        float f = c().f();
        float fB = c().b();
        if (b() == null) {
            j(new ArgbEvaluator());
        }
        if (i < iC) {
            d().setColor(c().e());
            if (iC == c().h() - 1) {
                float f2 = i;
                fK = (f2 * f) + (f2 * fL) + ((fB - f) * c().k());
            } else {
                float f3 = i;
                fK = (f3 * f) + (f3 * fL);
            }
            this.h.set(fK, 0.0f, f + fK, fM);
            n(canvas, fM, fM);
            return;
        }
        if (i != iC) {
            if (iC + 1 != i || c().k() == 0.0f) {
                d().setColor(c().e());
                float f4 = i;
                float f5 = (f() * f4) + (f4 * fL) + (fB - f());
                this.h.set(f5, 0.0f, f() + f5, fM);
                n(canvas, fM, fM);
                return;
            }
            return;
        }
        d().setColor(iA);
        float fK2 = c().k();
        if (iC == c().h() - 1) {
            ArgbEvaluator argbEvaluatorB = b();
            if (argbEvaluatorB != null) {
                Object objEvaluate = argbEvaluatorB.evaluate(fK2, Integer.valueOf(iA), Integer.valueOf(c().e()));
                Paint paintD = d();
                if (objEvaluate == null) {
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.Int");
                }
                paintD.setColor(((Integer) objEvaluate).intValue());
            }
            float fH = ((c().h() - 1) * (c().l() + f)) + fB;
            this.h.set((fH - fB) + ((fB - f) * fK2), 0.0f, fH, fM);
            n(canvas, fM, fM);
        } else {
            float f6 = 1;
            if (fK2 < f6) {
                ArgbEvaluator argbEvaluatorB2 = b();
                if (argbEvaluatorB2 != null) {
                    Object objEvaluate2 = argbEvaluatorB2.evaluate(fK2, Integer.valueOf(iA), Integer.valueOf(c().e()));
                    Paint paintD2 = d();
                    if (objEvaluate2 == null) {
                        throw new TypeCastException("null cannot be cast to non-null type kotlin.Int");
                    }
                    paintD2.setColor(((Integer) objEvaluate2).intValue());
                }
                float f7 = i;
                float f8 = (f7 * f) + (f7 * fL);
                this.h.set(f8, 0.0f, f8 + f + ((fB - f) * (f6 - fK2)), fM);
                n(canvas, fM, fM);
            }
        }
        if (iC == c().h() - 1) {
            if (fK2 > 0) {
                ArgbEvaluator argbEvaluatorB3 = b();
                if (argbEvaluatorB3 != null) {
                    Object objEvaluate3 = argbEvaluatorB3.evaluate(1 - fK2, Integer.valueOf(iA), Integer.valueOf(c().e()));
                    Paint paintD3 = d();
                    if (objEvaluate3 == null) {
                        throw new TypeCastException("null cannot be cast to non-null type kotlin.Int");
                    }
                    paintD3.setColor(((Integer) objEvaluate3).intValue());
                }
                this.h.set(0.0f, 0.0f, f + 0.0f + ((fB - f) * fK2), fM);
                n(canvas, fM, fM);
                return;
            }
            return;
        }
        if (fK2 > 0) {
            ArgbEvaluator argbEvaluatorB4 = b();
            if (argbEvaluatorB4 != null) {
                Object objEvaluate4 = argbEvaluatorB4.evaluate(1 - fK2, Integer.valueOf(iA), Integer.valueOf(c().e()));
                Paint paintD4 = d();
                if (objEvaluate4 == null) {
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.Int");
                }
                paintD4.setColor(((Integer) objEvaluate4).intValue());
            }
            float f9 = i;
            float f10 = (f9 * f) + (f9 * fL) + f + fL + fB;
            this.h.set((f10 - f) - ((fB - f) * fK2), 0.0f, f10, fM);
            n(canvas, fM, fM);
        }
    }

    public final void p(Canvas canvas) {
        int iC = c().c();
        float fL = c().l();
        float fM = c().m();
        float f = iC;
        float fE = (e() * f) + (f * fL) + ((e() + fL) * c().k());
        this.h.set(fE, 0.0f, e() + fE, fM);
        n(canvas, fM, fM);
    }

    public final void q(Canvas canvas, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            d().setColor(c().e());
            float f = i2;
            float fE = (e() * f) + (f * c().l()) + (e() - f());
            this.h.set(fE, 0.0f, f() + fE, c().m());
            n(canvas, c().m(), c().m());
        }
    }

    public final RectF s() {
        return this.h;
    }
}
