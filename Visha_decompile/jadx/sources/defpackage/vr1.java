package defpackage;

import android.graphics.Canvas;

public final class vr1 extends yo8 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vr1(rz4 rz4Var) {
        super(rz4Var);
        y45.k(rz4Var, "indicatorOptions");
    }

    @Override
    public void n(Canvas canvas, float f, float f2) {
        y45.k(canvas, "canvas");
        canvas.drawRect(s(), d());
    }
}
