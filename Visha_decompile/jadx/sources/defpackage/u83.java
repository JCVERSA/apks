package defpackage;

import android.graphics.Path;
import android.graphics.PointF;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.model.layer.a;
import java.util.List;

public class u83 implements by7, ab0.b, vf5 {
    public final String b;
    public final LottieDrawable c;
    public final ab0 d;
    public final ab0 e;
    public final hw0 f;
    public boolean h;
    public final Path a = new Path();
    public final vd1 g = new vd1();

    public u83(LottieDrawable lottieDrawable, a aVar, hw0 hw0Var) {
        this.b = hw0Var.b();
        this.c = lottieDrawable;
        ab0 ab0VarH = hw0Var.d().h();
        this.d = ab0VarH;
        ab0 ab0VarH2 = hw0Var.c().h();
        this.e = ab0VarH2;
        this.f = hw0Var;
        aVar.i(ab0VarH);
        aVar.i(ab0VarH2);
        ab0VarH.a(this);
        ab0VarH2.a(this);
    }

    public final void b() {
        this.h = false;
        this.c.invalidateSelf();
    }

    @Override
    public void c(tf5 tf5Var, int i, List list, tf5 tf5Var2) {
        xp6.k(tf5Var, i, list, tf5Var2, this);
    }

    @Override
    public void e() {
        b();
    }

    @Override
    public void f(List list, List list2) {
        for (int i = 0; i < list.size(); i++) {
            bg1 bg1Var = (bg1) list.get(i);
            if (bg1Var instanceof bab) {
                bab babVar = (bab) bg1Var;
                if (babVar.j() == ShapeTrimPath.Type.SIMULTANEOUSLY) {
                    this.g.a(babVar);
                    babVar.b(this);
                }
            }
        }
    }

    @Override
    public String getName() {
        return this.b;
    }

    @Override
    public Path getPath() {
        if (this.h) {
            return this.a;
        }
        this.a.reset();
        if (this.f.e()) {
            this.h = true;
            return this.a;
        }
        PointF pointF = (PointF) this.d.h();
        float f = pointF.x / 2.0f;
        float f2 = pointF.y / 2.0f;
        float f3 = f * 0.55228f;
        float f4 = 0.55228f * f2;
        this.a.reset();
        if (this.f.f()) {
            float f5 = -f2;
            this.a.moveTo(0.0f, f5);
            float f6 = 0.0f - f3;
            float f7 = -f;
            float f8 = 0.0f - f4;
            this.a.cubicTo(f6, f5, f7, f8, f7, 0.0f);
            float f9 = f4 + 0.0f;
            this.a.cubicTo(f7, f9, f6, f2, 0.0f, f2);
            float f10 = f3 + 0.0f;
            this.a.cubicTo(f10, f2, f, f9, f, 0.0f);
            this.a.cubicTo(f, f8, f10, f5, 0.0f, f5);
        } else {
            float f11 = -f2;
            this.a.moveTo(0.0f, f11);
            float f12 = f3 + 0.0f;
            float f13 = 0.0f - f4;
            this.a.cubicTo(f12, f11, f, f13, f, 0.0f);
            float f14 = f4 + 0.0f;
            this.a.cubicTo(f, f14, f12, f2, 0.0f, f2);
            float f15 = 0.0f - f3;
            float f16 = -f;
            this.a.cubicTo(f15, f2, f16, f14, f16, 0.0f);
            this.a.cubicTo(f16, f13, f15, f11, 0.0f, f11);
        }
        PointF pointF2 = (PointF) this.e.h();
        this.a.offset(pointF2.x, pointF2.y);
        this.a.close();
        this.g.b(this.a);
        this.h = true;
        return this.a;
    }

    @Override
    public void h(Object obj, iu5 iu5Var) {
        if (obj == it5.k) {
            this.d.o(iu5Var);
        } else if (obj == it5.n) {
            this.e.o(iu5Var);
        }
    }
}
