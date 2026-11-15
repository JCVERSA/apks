package defpackage;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import com.yandex.div.internal.widget.indicator.b;

public final class dw0 implements dn9 {
    public final sz4 a;
    public final Paint b;
    public final RectF c;

    public dw0(sz4 sz4Var) {
        y45.j(sz4Var, "params");
        this.a = sz4Var;
        this.b = new Paint();
        this.c = new RectF();
    }

    @Override
    public void a(Canvas canvas, RectF rectF) {
        y45.j(canvas, "canvas");
        y45.j(rectF, "rect");
        this.b.setColor(this.a.a().c());
        canvas.drawCircle(rectF.centerX(), rectF.centerY(), rectF.width() / 2, this.b);
    }

    @Override
    public void b(Canvas canvas, float f, float f2, b bVar, int i, float f3, int i2) {
        y45.j(canvas, "canvas");
        y45.j(bVar, "itemSize");
        b.a aVar = (b.a) bVar;
        this.b.setColor(i);
        RectF rectF = this.c;
        rectF.left = f - aVar.d();
        rectF.top = f2 - aVar.d();
        rectF.right = f + aVar.d();
        rectF.bottom = f2 + aVar.d();
        canvas.drawCircle(this.c.centerX(), this.c.centerY(), aVar.d(), this.b);
    }
}
