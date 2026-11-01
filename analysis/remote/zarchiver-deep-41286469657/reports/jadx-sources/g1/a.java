package g1;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.text.style.ReplacementSpan;
import z0.c;

public final class a extends ReplacementSpan {

    public static final float f1079c = c.a(8);

    public static final float f1080d = c.a(4);

    public final int f1081a;

    public final int f1082b = -1;

    public a(int i2) {
        this.f1081a = i2;
    }

    @Override
    public final void draw(Canvas canvas, CharSequence charSequence, int i2, int i3, float f2, int i4, int i5, int i6, Paint paint) {
        Paint paint2 = new Paint(paint);
        paint2.setColor(this.f1081a);
        float f3 = i4;
        float f4 = f1080d;
        float f5 = f3 + f4;
        float textSize = paint2.getTextSize() + f5 + f4;
        float fMeasureText = paint2.measureText(charSequence.subSequence(i2, i3).toString());
        float f6 = f1079c;
        float f7 = 2.0f * f6;
        canvas.drawRoundRect(new RectF(f2, f3, Math.round(fMeasureText + f6 + f6) + f2, textSize), f7, f7, paint2);
        paint2.setColor(this.f1082b);
        canvas.drawText(charSequence, i2, i3, f6 + f2, (paint2.getTextSize() * 0.9f) + f5, paint2);
    }

    @Override
    public final int getSize(Paint paint, CharSequence charSequence, int i2, int i3, Paint.FontMetricsInt fontMetricsInt) {
        float fMeasureText = paint.measureText(charSequence.subSequence(i2, i3).toString());
        float f2 = f1079c;
        return Math.round(fMeasureText + f2 + f2);
    }
}
