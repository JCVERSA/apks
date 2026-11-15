package defpackage;

import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;
import android.text.style.ParagraphStyle;

public final class a34 extends MetricAffectingSpan implements ParagraphStyle {
    public final int b;
    public final int c;

    public a34(int i, int i2) {
        this.b = i;
        this.c = i2;
    }

    @Override
    public void updateDrawState(TextPaint textPaint) {
        y45.j(textPaint, "paint");
        textPaint.setTextSize(this.b);
    }

    @Override
    public void updateMeasureState(TextPaint textPaint) {
        y45.j(textPaint, "paint");
        int i = this.c;
        if (i == 0) {
            textPaint.setTextSize(this.b);
        } else if (i >= textPaint.getTextSize()) {
            textPaint.setTextScaleX(this.b / textPaint.getTextSize());
        } else {
            textPaint.setTextScaleX(this.b / this.c);
            textPaint.setTextSize(this.c);
        }
    }
}
