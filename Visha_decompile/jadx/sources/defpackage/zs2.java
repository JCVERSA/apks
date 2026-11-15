package defpackage;

import android.graphics.Canvas;
import android.text.Layout;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div2.DivTextRangeBackground;
import com.yandex.div2.DivTextRangeBorder;

public abstract class zs2 {
    public abstract void a(Canvas canvas, Layout layout, int i, int i2, int i3, int i4, DivTextRangeBorder divTextRangeBorder, DivTextRangeBackground divTextRangeBackground);

    public final int b(Layout layout, int i) {
        y45.j(layout, TtmlNode.TAG_LAYOUT);
        int iC = c(layout, i);
        return i == layout.getLineCount() + (-1) ? iC - layout.getBottomPadding() : iC;
    }

    public final int c(Layout layout, int i) {
        int lineBottom = layout.getLineBottom(i);
        boolean z = i == layout.getLineCount() - 1;
        float spacingAdd = layout.getSpacingAdd();
        float spacingMultiplier = layout.getSpacingMultiplier();
        if ((spacingAdd == 0.0f && spacingMultiplier == 1.0f) || z) {
            return lineBottom;
        }
        if (Float.compare(spacingMultiplier, 1.0f) != 0) {
            float fD = d(layout, i);
            spacingAdd = fD - ((fD - spacingAdd) / spacingMultiplier);
        }
        return (int) (lineBottom - spacingAdd);
    }

    public final int d(Layout layout, int i) {
        return layout.getLineTop(i + 1) - layout.getLineTop(i);
    }

    public final int e(Layout layout, int i) {
        y45.j(layout, TtmlNode.TAG_LAYOUT);
        int lineTop = layout.getLineTop(i);
        return i == 0 ? lineTop - layout.getTopPadding() : lineTop;
    }
}
