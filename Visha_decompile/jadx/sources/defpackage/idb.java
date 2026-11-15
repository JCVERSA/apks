package defpackage;

import android.graphics.Typeface;
import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;

public final class idb extends MetricAffectingSpan {
    public final Typeface b;

    public idb(Typeface typeface) {
        y45.j(typeface, "typeface");
        this.b = typeface;
    }

    public final void a(TextPaint textPaint) {
        textPaint.setTypeface(this.b);
    }

    @Override
    public void updateDrawState(TextPaint textPaint) {
        y45.j(textPaint, "ds");
        a(textPaint);
    }

    @Override
    public void updateMeasureState(TextPaint textPaint) {
        y45.j(textPaint, "paint");
        a(textPaint);
    }
}
