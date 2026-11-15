package defpackage;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.content.ShapeStroke;
import com.airbnb.lottie.model.layer.a;

public class m1a extends pc0 {
    public final a r;
    public final String s;
    public final boolean t;
    public final ab0 u;
    public ab0 v;

    public m1a(LottieDrawable lottieDrawable, a aVar, ShapeStroke shapeStroke) {
        super(lottieDrawable, aVar, shapeStroke.b().toPaintCap(), shapeStroke.e().toPaintJoin(), shapeStroke.g(), shapeStroke.i(), shapeStroke.j(), shapeStroke.f(), shapeStroke.d());
        this.r = aVar;
        this.s = shapeStroke.h();
        this.t = shapeStroke.k();
        ab0 ab0VarH = shapeStroke.c().h();
        this.u = ab0VarH;
        ab0VarH.a(this);
        aVar.i(ab0VarH);
    }

    @Override
    public void d(Canvas canvas, Matrix matrix, int i) {
        if (this.t) {
            return;
        }
        this.i.setColor(((x81) this.u).q());
        ab0 ab0Var = this.v;
        if (ab0Var != null) {
            this.i.setColorFilter((ColorFilter) ab0Var.h());
        }
        super.d(canvas, matrix, i);
    }

    @Override
    public String getName() {
        return this.s;
    }

    @Override
    public void h(Object obj, iu5 iu5Var) {
        super.h(obj, iu5Var);
        if (obj == it5.b) {
            this.u.o(iu5Var);
            return;
        }
        if (obj == it5.K) {
            ab0 ab0Var = this.v;
            if (ab0Var != null) {
                this.r.H(ab0Var);
            }
            if (iu5Var == null) {
                this.v = null;
                return;
            }
            hnb hnbVar = new hnb(iu5Var);
            this.v = hnbVar;
            hnbVar.a(this);
            this.r.i(this.u);
        }
    }
}
