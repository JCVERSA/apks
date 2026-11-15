package defpackage;

import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;
import android.text.style.ParagraphStyle;

public final class fd0 extends MetricAffectingSpan implements ParagraphStyle {
    public final int b;
    public final int c;

    public fd0(int i, int i2) {
        this.b = i;
        this.c = i2;
    }

    @Override
    public void updateDrawState(TextPaint textPaint) {
        y45.j(textPaint, "paint");
        textPaint.baselineShift -= this.b;
    }

    @Override
    public void updateMeasureState(TextPaint textPaint) {
        y45.j(textPaint, "paint");
        if (this.c == 0) {
            textPaint.baselineShift -= this.b;
        }
    }
}
