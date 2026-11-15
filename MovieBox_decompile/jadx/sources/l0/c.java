package l0;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.Layout;
import android.text.style.LeadingMarginSpan;
import k0.f1;
import kotlin.jvm.internal.Intrinsics;

public final class c implements LeadingMarginSpan {
    @Override
    public void drawLeadingMargin(Canvas canvas, Paint paint, int i10, int i11, int i12, int i13, int i14, CharSequence charSequence, int i15, int i16, boolean z10, Layout layout) {
        int lineForOffset;
        if (layout == null || paint == null || (lineForOffset = layout.getLineForOffset(i15)) != layout.getLineCount() - 1 || !f1.m(layout, lineForOffset)) {
            return;
        }
        float fA = d.a(layout, lineForOffset, paint) + d.c(layout, lineForOffset, paint);
        if (fA == 0.0f) {
            return;
        }
        Intrinsics.e(canvas);
        canvas.translate(fA, 0.0f);
    }

    @Override
    public int getLeadingMargin(boolean z10) {
        return 0;
    }
}
