package l0;

import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;

public final class b extends MetricAffectingSpan {

    private final String f65504a;

    public b(String str) {
        this.f65504a = str;
    }

    @Override
    public void updateDrawState(TextPaint textPaint) {
        textPaint.setFontFeatureSettings(this.f65504a);
    }

    @Override
    public void updateMeasureState(TextPaint textPaint) {
        textPaint.setFontFeatureSettings(this.f65504a);
    }
}
