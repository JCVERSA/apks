package defpackage;

import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.text.style.LineBackgroundSpan;

public final class el5 implements LineBackgroundSpan {
    public final Paint b;

    public el5() {
        Paint paint = new Paint();
        paint.setStyle(Paint.Style.STROKE);
        paint.setAntiAlias(false);
        paint.setStrokeWidth(0.0f);
        this.b = paint;
    }

    @Override
    public void drawBackground(Canvas canvas, Paint paint, int i, int i2, int i3, int i4, int i5, CharSequence charSequence, int i6, int i7, int i8) {
        y45.j(canvas, "canvas");
        y45.j(paint, "paint");
        y45.j(charSequence, "text");
        this.b.setColor(-16764855);
        float f = i3;
        float f2 = i;
        float f3 = i2;
        canvas.drawLine(f2, f, f3, f, this.b);
        this.b.setColor(-557312);
        this.b.setPathEffect(new DashPathEffect(new float[]{8.0f, 4.0f, 1.0f, 4.0f}, 0.0f));
        float f4 = f + ((i5 - i3) / 2.0f);
        canvas.drawLine(f2, f4, f3, f4, this.b);
        this.b.setColor(-2742232);
        this.b.setPathEffect(null);
        float f5 = i4 - 1;
        canvas.drawLine(f2, f5, f3, f5, this.b);
        this.b.setColor(-213175);
        float f6 = i5 - 1;
        canvas.drawLine(f2, f6, f3, f6, this.b);
    }
}
