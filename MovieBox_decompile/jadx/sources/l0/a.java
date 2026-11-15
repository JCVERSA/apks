package l0;

import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;

public class a extends MetricAffectingSpan {

    private final float f65503a;

    public a(float f10) {
        this.f65503a = f10;
    }

    @Override
    public void updateDrawState(TextPaint textPaint) {
        textPaint.baselineShift += (int) Math.ceil(textPaint.ascent() * this.f65503a);
    }

    @Override
    public void updateMeasureState(TextPaint textPaint) {
        textPaint.baselineShift += (int) Math.ceil(textPaint.ascent() * this.f65503a);
    }
}
