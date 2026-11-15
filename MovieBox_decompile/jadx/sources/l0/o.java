package l0;

import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;

public final class o extends MetricAffectingSpan {

    private final Typeface f65540a;

    public o(Typeface typeface) {
        this.f65540a = typeface;
    }

    private final void a(Paint paint) {
        paint.setTypeface(this.f65540a);
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
