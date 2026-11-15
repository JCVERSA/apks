package l0;

import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;

public class m extends MetricAffectingSpan {

    private final float f65537a;

    public m(float f10) {
        this.f65537a = f10;
    }

    @Override
    public void updateDrawState(TextPaint textPaint) {
        textPaint.setTextSkewX(this.f65537a + textPaint.getTextSkewX());
    }

    @Override
    public void updateMeasureState(TextPaint textPaint) {
        textPaint.setTextSkewX(this.f65537a + textPaint.getTextSkewX());
    }
}
