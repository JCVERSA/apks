package defpackage;

import android.graphics.Canvas;

public final class t23 implements yu4 {
    public yu4 a;

    public t23(rz4 rz4Var) {
        y45.k(rz4Var, "indicatorOptions");
        b(rz4Var);
    }

    @Override
    public void a(Canvas canvas) {
        y45.k(canvas, "canvas");
        yu4 yu4Var = this.a;
        if (yu4Var == null) {
            y45.B("mIDrawer");
        }
        yu4Var.a(canvas);
    }

    public final void b(rz4 rz4Var) {
        this.a = r23.a.a(rz4Var);
    }

    public void c(boolean z, int i, int i2, int i3, int i4) {
    }

    public final void d(rz4 rz4Var) {
        y45.k(rz4Var, "indicatorOptions");
        b(rz4Var);
    }

    @Override
    public da0.b onMeasure(int i, int i2) {
        yu4 yu4Var = this.a;
        if (yu4Var == null) {
            y45.B("mIDrawer");
        }
        return yu4Var.onMeasure(i, i2);
    }
}
