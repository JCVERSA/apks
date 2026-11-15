package l0;

import android.graphics.Paint;
import android.text.style.LineHeightSpan;

public final class g implements LineHeightSpan {

    private final float f65508a;

    public g(float f10) {
        this.f65508a = f10;
    }

    @Override
    public void chooseHeight(CharSequence charSequence, int i10, int i11, int i12, int i13, Paint.FontMetricsInt fontMetricsInt) {
        int iA = i.a(fontMetricsInt);
        if (iA <= 0) {
            return;
        }
        int iCeil = (int) Math.ceil(this.f65508a);
        int iCeil2 = (int) Math.ceil(((double) fontMetricsInt.descent) * ((double) ((iCeil * 1.0f) / iA)));
        fontMetricsInt.descent = iCeil2;
        fontMetricsInt.ascent = iCeil2 - iCeil;
    }
}
