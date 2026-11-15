package defpackage;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import com.yandex.div.internal.widget.indicator.b;
import com.yandex.div.internal.widget.indicator.c;

public final class gw8 implements dn9 {
    public final sz4 a;
    public final Paint b;
    public final Paint c;
    public final RectF d;

    public gw8(sz4 sz4Var) {
        y45.j(sz4Var, "params");
        this.a = sz4Var;
        this.b = new Paint();
        Paint paint = new Paint();
        paint.setStyle(Paint.Style.STROKE);
        this.c = paint;
        this.d = new RectF();
    }

    @Override
    public void a(Canvas canvas, RectF rectF) {
        y45.j(canvas, "canvas");
        y45.j(rectF, "rect");
        c cVarA = this.a.a();
        y45.h(cVarA, "null cannot be cast to non-null type com.yandex.div.internal.widget.indicator.IndicatorParams.Shape.RoundedRect");
        c.b bVar = (c.b) cVarA;
        b.C0303b c0303bD = bVar.d();
        this.b.setColor(this.a.a().c());
        canvas.drawRoundRect(rectF, c0303bD.e(), c0303bD.e(), this.b);
        if (bVar.f() == 0 || bVar.g() == 0.0f) {
            return;
        }
        Paint paint = this.c;
        paint.setColor(bVar.f());
        paint.setStrokeWidth(bVar.g());
        canvas.drawRoundRect(rectF, c0303bD.e(), c0303bD.e(), this.c);
    }

    @Override
    public void b(Canvas canvas, float f, float f2, b bVar, int i, float f3, int i2) {
        y45.j(canvas, "canvas");
        y45.j(bVar, "itemSize");
        b.C0303b c0303b = (b.C0303b) bVar;
        this.b.setColor(i);
        RectF rectF = this.d;
        rectF.left = (float) Math.ceil(f - (c0303b.g() / 2.0f));
        rectF.top = (float) Math.ceil(f2 - (c0303b.f() / 2.0f));
        rectF.right = (float) Math.ceil(f + (c0303b.g() / 2.0f));
        float fCeil = (float) Math.ceil(f2 + (c0303b.f() / 2.0f));
        rectF.bottom = fCeil;
        if (f3 > 0.0f) {
            float f4 = f3 / 2.0f;
            rectF.left += f4;
            rectF.top += f4;
            rectF.right -= f4;
            rectF.bottom = fCeil - f4;
        }
        canvas.drawRoundRect(this.d, c0303b.e(), c0303b.e(), this.b);
        if (i2 == 0 || f3 == 0.0f) {
            return;
        }
        Paint paint = this.c;
        paint.setColor(i2);
        paint.setStrokeWidth(f3);
        canvas.drawRoundRect(this.d, c0303b.e(), c0303b.e(), this.c);
    }
}
