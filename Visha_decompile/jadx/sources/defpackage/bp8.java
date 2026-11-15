package defpackage;

import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.model.layer.a;
import java.util.List;

public class bp8 implements ab0.b, vf5, by7 {
    public final String c;
    public final boolean d;
    public final LottieDrawable e;
    public final ab0 f;
    public final ab0 g;
    public final ab0 h;
    public boolean k;
    public final Path a = new Path();
    public final RectF b = new RectF();
    public final vd1 i = new vd1();
    public ab0 j = null;

    public bp8(LottieDrawable lottieDrawable, a aVar, cp8 cp8Var) {
        this.c = cp8Var.c();
        this.d = cp8Var.f();
        this.e = lottieDrawable;
        ab0 ab0VarH = cp8Var.d().h();
        this.f = ab0VarH;
        ab0 ab0VarH2 = cp8Var.e().h();
        this.g = ab0VarH2;
        xy3 xy3VarH = cp8Var.b().h();
        this.h = xy3VarH;
        aVar.i(ab0VarH);
        aVar.i(ab0VarH2);
        aVar.i(xy3VarH);
        ab0VarH.a(this);
        ab0VarH2.a(this);
        xy3VarH.a(this);
    }

    private void b() {
        this.k = false;
        this.e.invalidateSelf();
    }

    @Override
    public void c(tf5 tf5Var, int i, List list, tf5 tf5Var2) {
        xp6.k(tf5Var, i, list, tf5Var2, this);
    }

    @Override
    public void e() {
        b();
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0025  */
    /* JADX WARN: Code duplicated, block: B:12:0x0029  */
    /* JADX WARN: Code duplicated, block: B:18:0x0031 A[SYNTHETIC] */
    @Override
    public void f(List list, List list2) {
        for (int i = 0; i < list.size(); i++) {
            bg1 bg1Var = (bg1) list.get(i);
            if (bg1Var instanceof bab) {
                bab babVar = (bab) bg1Var;
                if (babVar.j() == ShapeTrimPath.Type.SIMULTANEOUSLY) {
                    this.i.a(babVar);
                    babVar.b(this);
                } else if (bg1Var instanceof dw8) {
                    this.j = ((dw8) bg1Var).h();
                }
            } else if (bg1Var instanceof dw8) {
                this.j = ((dw8) bg1Var).h();
            }
        }
    }

    @Override
    public String getName() {
        return this.c;
    }

    @Override
    public Path getPath() {
        ab0 ab0Var;
        if (this.k) {
            return this.a;
        }
        this.a.reset();
        if (this.d) {
            this.k = true;
            return this.a;
        }
        PointF pointF = (PointF) this.g.h();
        float f = pointF.x / 2.0f;
        float f2 = pointF.y / 2.0f;
        ab0 ab0Var2 = this.h;
        float fQ = ab0Var2 == null ? 0.0f : ((xy3) ab0Var2).q();
        if (fQ == 0.0f && (ab0Var = this.j) != null) {
            fQ = Math.min(((Float) ab0Var.h()).floatValue(), Math.min(f, f2));
        }
        float fMin = Math.min(f, f2);
        if (fQ > fMin) {
            fQ = fMin;
        }
        PointF pointF2 = (PointF) this.f.h();
        this.a.moveTo(pointF2.x + f, (pointF2.y - f2) + fQ);
        this.a.lineTo(pointF2.x + f, (pointF2.y + f2) - fQ);
        if (fQ > 0.0f) {
            RectF rectF = this.b;
            float f3 = pointF2.x;
            float f4 = fQ * 2.0f;
            float f5 = pointF2.y;
            rectF.set((f3 + f) - f4, (f5 + f2) - f4, f3 + f, f5 + f2);
            this.a.arcTo(this.b, 0.0f, 90.0f, false);
        }
        this.a.lineTo((pointF2.x - f) + fQ, pointF2.y + f2);
        if (fQ > 0.0f) {
            RectF rectF2 = this.b;
            float f6 = pointF2.x;
            float f7 = pointF2.y;
            float f8 = fQ * 2.0f;
            rectF2.set(f6 - f, (f7 + f2) - f8, (f6 - f) + f8, f7 + f2);
            this.a.arcTo(this.b, 90.0f, 90.0f, false);
        }
        this.a.lineTo(pointF2.x - f, (pointF2.y - f2) + fQ);
        if (fQ > 0.0f) {
            RectF rectF3 = this.b;
            float f9 = pointF2.x;
            float f10 = pointF2.y;
            float f11 = fQ * 2.0f;
            rectF3.set(f9 - f, f10 - f2, (f9 - f) + f11, (f10 - f2) + f11);
            this.a.arcTo(this.b, 180.0f, 90.0f, false);
        }
        this.a.lineTo((pointF2.x + f) - fQ, pointF2.y - f2);
        if (fQ > 0.0f) {
            RectF rectF4 = this.b;
            float f12 = pointF2.x;
            float f13 = fQ * 2.0f;
            float f14 = pointF2.y;
            rectF4.set((f12 + f) - f13, f14 - f2, f12 + f, (f14 - f2) + f13);
            this.a.arcTo(this.b, 270.0f, 90.0f, false);
        }
        this.a.close();
        this.i.b(this.a);
        this.k = true;
        return this.a;
    }

    @Override
    public void h(Object obj, iu5 iu5Var) {
        if (obj == it5.l) {
            this.g.o(iu5Var);
        } else if (obj == it5.n) {
            this.f.o(iu5Var);
        } else if (obj == it5.m) {
            this.h.o(iu5Var);
        }
    }
}
