package l0;

import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;

public final class f extends MetricAffectingSpan {

    private final float f65507a;

    public f(float f10) {
        this.f65507a = f10;
    }

    private final void a(TextPaint textPaint) {
        float textSize = textPaint.getTextSize() * textPaint.getTextScaleX();
        if (textSize == 0.0f) {
            return;
        }
        textPaint.setLetterSpacing(this.f65507a / textSize);
    }

    @Override
    public void updateDrawState(TextPaint textPaint) {
        a(textPaint);
    }

    @Override
    public void updateMeasureState(TextPaint textPaint) {
        a(textPaint);
    }
}
