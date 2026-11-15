package androidx.emoji2.text;

import android.graphics.Paint;
import android.text.style.ReplacementSpan;

public abstract class i extends ReplacementSpan {

    private final p f8796b;

    private final Paint.FontMetricsInt f8795a = new Paint.FontMetricsInt();

    private short f8797c = -1;

    private short f8798d = -1;

    private float f8799e = 1.0f;

    i(p pVar) {
        androidx.core.util.i.h(pVar, "rasterizer cannot be null");
        this.f8796b = pVar;
    }

    public final p a() {
        return this.f8796b;
    }

    final int b() {
        return this.f8797c;
    }

    @Override
    public int getSize(Paint paint, CharSequence charSequence, int i10, int i11, Paint.FontMetricsInt fontMetricsInt) {
        paint.getFontMetricsInt(this.f8795a);
        Paint.FontMetricsInt fontMetricsInt2 = this.f8795a;
        this.f8799e = (Math.abs(fontMetricsInt2.descent - fontMetricsInt2.ascent) * 1.0f) / this.f8796b.e();
        this.f8798d = (short) (this.f8796b.e() * this.f8799e);
        short sI = (short) (this.f8796b.i() * this.f8799e);
        this.f8797c = sI;
        if (fontMetricsInt != null) {
            Paint.FontMetricsInt fontMetricsInt3 = this.f8795a;
            fontMetricsInt.ascent = fontMetricsInt3.ascent;
            fontMetricsInt.descent = fontMetricsInt3.descent;
            fontMetricsInt.top = fontMetricsInt3.top;
            fontMetricsInt.bottom = fontMetricsInt3.bottom;
        }
        return sI;
    }
}
