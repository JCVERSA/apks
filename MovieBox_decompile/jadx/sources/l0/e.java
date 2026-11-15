package l0;

import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;

public final class e extends MetricAffectingSpan {

    private final float f65506a;

    public e(float f10) {
        this.f65506a = f10;
    }

    @Override
    public void updateDrawState(TextPaint textPaint) {
        textPaint.setLetterSpacing(this.f65506a);
    }

    @Override
    public void updateMeasureState(TextPaint textPaint) {
        textPaint.setLetterSpacing(this.f65506a);
    }
}
