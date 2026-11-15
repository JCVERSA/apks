package defpackage;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.layer.a;
import java.util.ArrayList;
import java.util.List;

public class gv3 implements u23, ab0.b, vf5 {
    public final Path a;
    public final Paint b;
    public final a c;
    public final String d;
    public final boolean e;
    public final List f;
    public final ab0 g;
    public final ab0 h;
    public ab0 i;
    public final LottieDrawable j;
    public ab0 k;
    public float l;
    public n33 m;

    public gv3(LottieDrawable lottieDrawable, a aVar, uf9 uf9Var) {
        Path path = new Path();
        this.a = path;
        this.b = new ni5(1);
        this.f = new ArrayList();
        this.c = aVar;
        this.d = uf9Var.d();
        this.e = uf9Var.f();
        this.j = lottieDrawable;
        if (aVar.w() != null) {
            xy3 xy3VarH = aVar.w().a().h();
            this.k = xy3VarH;
            xy3VarH.a(this);
            aVar.i(this.k);
        }
        if (aVar.y() != null) {
            this.m = new n33(this, aVar, aVar.y());
        }
        if (uf9Var.b() == null || uf9Var.e() == null) {
            this.g = null;
            this.h = null;
            return;
        }
        path.setFillType(uf9Var.c());
        ab0 ab0VarH = uf9Var.b().h();
        this.g = ab0VarH;
        ab0VarH.a(this);
        aVar.i(ab0VarH);
        ab0 ab0VarH2 = uf9Var.e().h();
        this.h = ab0VarH2;
        ab0VarH2.a(this);
        aVar.i(ab0VarH2);
    }

    @Override
    public void a(RectF rectF, Matrix matrix, boolean z) {
        this.a.reset();
        for (int i = 0; i < this.f.size(); i++) {
            this.a.addPath(((by7) this.f.get(i)).getPath(), matrix);
        }
        this.a.computeBounds(rectF, false);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
    }

    @Override
    public void c(tf5 tf5Var, int i, List list, tf5 tf5Var2) {
        xp6.k(tf5Var, i, list, tf5Var2, this);
    }

    @Override
    public void d(Canvas canvas, Matrix matrix, int i) {
        if (this.e) {
            return;
        }
        if (yh5.h()) {
            yh5.b("FillContent#draw");
        }
        int iQ = ((x81) this.g).q();
        int iIntValue = (int) ((((i / 255.0f) * ((Integer) this.h.h()).intValue()) / 100.0f) * 255.0f);
        this.b.setColor((iQ & 16777215) | (xp6.c(iIntValue, 0, 255) << 24));
        ab0 ab0Var = this.i;
        if (ab0Var != null) {
            this.b.setColorFilter((ColorFilter) ab0Var.h());
        }
        ab0 ab0Var2 = this.k;
        if (ab0Var2 != null) {
            float fFloatValue = ((Float) ab0Var2.h()).floatValue();
            if (fFloatValue == 0.0f) {
                this.b.setMaskFilter(null);
            } else if (fFloatValue != this.l) {
                this.b.setMaskFilter(this.c.x(fFloatValue));
            }
            this.l = fFloatValue;
        }
        n33 n33Var = this.m;
        if (n33Var != null) {
            n33Var.a(this.b, matrix, plb.l(i, iIntValue));
        }
        this.a.reset();
        for (int i2 = 0; i2 < this.f.size(); i2++) {
            this.a.addPath(((by7) this.f.get(i2)).getPath(), matrix);
        }
        canvas.drawPath(this.a, this.b);
        if (yh5.h()) {
            yh5.c("FillContent#draw");
        }
    }

    @Override
    public void e() {
        this.j.invalidateSelf();
    }

    @Override
    public void f(List list, List list2) {
        for (int i = 0; i < list2.size(); i++) {
            bg1 bg1Var = (bg1) list2.get(i);
            if (bg1Var instanceof by7) {
                this.f.add((by7) bg1Var);
            }
        }
    }

    @Override
    public String getName() {
        return this.d;
    }

    @Override
    public void h(Object obj, iu5 iu5Var) {
        n33 n33Var;
        n33 n33Var2;
        n33 n33Var3;
        n33 n33Var4;
        n33 n33Var5;
        if (obj == it5.a) {
            this.g.o(iu5Var);
            return;
        }
        if (obj == it5.d) {
            this.h.o(iu5Var);
            return;
        }
        if (obj == it5.K) {
            ab0 ab0Var = this.i;
            if (ab0Var != null) {
                this.c.H(ab0Var);
            }
            if (iu5Var == null) {
                this.i = null;
                return;
            }
            hnb hnbVar = new hnb(iu5Var);
            this.i = hnbVar;
            hnbVar.a(this);
            this.c.i(this.i);
            return;
        }
        if (obj == it5.j) {
            ab0 ab0Var2 = this.k;
            if (ab0Var2 != null) {
                ab0Var2.o(iu5Var);
                return;
            }
            hnb hnbVar2 = new hnb(iu5Var);
            this.k = hnbVar2;
            hnbVar2.a(this);
            this.c.i(this.k);
            return;
        }
        if (obj == it5.e && (n33Var5 = this.m) != null) {
            n33Var5.b(iu5Var);
            return;
        }
        if (obj == it5.G && (n33Var4 = this.m) != null) {
            n33Var4.f(iu5Var);
            return;
        }
        if (obj == it5.H && (n33Var3 = this.m) != null) {
            n33Var3.c(iu5Var);
            return;
        }
        if (obj == it5.I && (n33Var2 = this.m) != null) {
            n33Var2.d(iu5Var);
        } else {
            if (obj != it5.J || (n33Var = this.m) == null) {
                return;
            }
            n33Var.g(iu5Var);
        }
    }
}
