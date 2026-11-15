package defpackage;

import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;

public final class v24 extends MetricAffectingSpan {
    public final String b;

    public v24(String str) {
        y45.j(str, "settings");
        this.b = str;
    }

    @Override
    public void updateDrawState(TextPaint textPaint) {
        y45.j(textPaint, "textPaint");
        textPaint.setFontFeatureSettings(this.b);
    }

    @Override
    public void updateMeasureState(TextPaint textPaint) {
        y45.j(textPaint, "textPaint");
        textPaint.setFontFeatureSettings(this.b);
    }
}
