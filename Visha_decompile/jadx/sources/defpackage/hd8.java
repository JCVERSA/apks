package defpackage;

import android.graphics.Paint;
import android.text.style.ReplacementSpan;

public abstract class hd8 extends ReplacementSpan {
    public abstract int a(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt);

    public final void b(int i, Paint.FontMetricsInt fontMetricsInt) {
    }

    @Override
    public final int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
        y45.j(paint, "paint");
        y45.j(charSequence, "text");
        b(i, fontMetricsInt);
        return a(paint, charSequence, i, i2, fontMetricsInt);
    }
}
