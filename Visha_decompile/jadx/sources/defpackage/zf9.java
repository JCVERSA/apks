package defpackage;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.model.layer.a;
import com.airbnb.lottie.model.layer.b;
import java.util.Collections;
import java.util.List;

public class zf9 extends a {
    public final cg1 E;
    public final b F;

    public zf9(LottieDrawable lottieDrawable, Layer layer, b bVar, ur5 ur5Var) {
        super(lottieDrawable, layer);
        this.F = bVar;
        cg1 cg1Var = new cg1(lottieDrawable, this, new wf9("__container", layer.o(), false), ur5Var);
        this.E = cg1Var;
        cg1Var.f(Collections.emptyList(), Collections.emptyList());
    }

    @Override
    public void I(tf5 tf5Var, int i, List list, tf5 tf5Var2) {
        this.E.c(tf5Var, i, list, tf5Var2);
    }

    @Override
    public void a(RectF rectF, Matrix matrix, boolean z) {
        super.a(rectF, matrix, z);
        this.E.a(rectF, this.o, z);
    }

    @Override
    public void t(Canvas canvas, Matrix matrix, int i) {
        this.E.d(canvas, matrix, i);
    }

    @Override
    public ag0 w() {
        ag0 ag0VarW = super.w();
        return ag0VarW != null ? ag0VarW : this.F.w();
    }

    @Override
    public l33 y() {
        l33 l33VarY = super.y();
        return l33VarY != null ? l33VarY : this.F.y();
    }
}
