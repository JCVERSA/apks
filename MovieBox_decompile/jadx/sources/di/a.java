package di;

import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;
import kotlin.jvm.internal.Intrinsics;

public final class a extends MetricAffectingSpan {

    private final Typeface f59038a;

    public a(Typeface typeface) {
        Intrinsics.h(typeface, "typeface");
        this.f59038a = typeface;
    }

    private final void a(Paint paint) {
        Typeface typeface = paint.getTypeface();
        int style = (typeface != null ? typeface.getStyle() : 0) & (~this.f59038a.getStyle());
        if ((style & 1) != 0) {
            paint.setFakeBoldText(true);
        }
        if ((style & 2) != 0) {
            paint.setTextSkewX(-0.25f);
        }
        paint.setTypeface(this.f59038a);
    }

    @Override
    public void updateDrawState(TextPaint tp2) {
        Intrinsics.h(tp2, "tp");
        a(tp2);
    }

    @Override
    public void updateMeasureState(TextPaint tp2) {
        Intrinsics.h(tp2, "tp");
        a(tp2);
    }
}
