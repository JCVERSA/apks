package defpackage;

import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;

public final class lk5 extends MetricAffectingSpan {
    public final float b;

    public lk5(float f) {
        this.b = f;
    }

    public final void a(TextPaint textPaint) {
        textPaint.setLetterSpacing(this.b);
    }

    @Override
    public void updateDrawState(TextPaint textPaint) {
        y45.j(textPaint, "paint");
        a(textPaint);
    }

    @Override
    public void updateMeasureState(TextPaint textPaint) {
        y45.j(textPaint, "paint");
        a(textPaint);
    }
}
