package defpackage;

import android.graphics.Canvas;
import android.text.Layout;
import android.util.DisplayMetrics;
import android.view.View;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div2.DivTextRangeBackground;
import com.yandex.div2.DivTextRangeBorder;

public final class ps6 extends zs2 {
    public final View a;
    public final oj3 b;

    public ps6(View view, oj3 oj3Var) {
        y45.j(view, "view");
        y45.j(oj3Var, "resolver");
        this.a = view;
        this.b = oj3Var;
    }

    @Override
    public void a(Canvas canvas, Layout layout, int i, int i2, int i3, int i4, DivTextRangeBorder divTextRangeBorder, DivTextRangeBackground divTextRangeBackground) {
        y45.j(canvas, "canvas");
        y45.j(layout, TtmlNode.TAG_LAYOUT);
        int paragraphDirection = layout.getParagraphDirection(i);
        int lineLeft = (int) (paragraphDirection == -1 ? layout.getLineLeft(i) : layout.getLineRight(i));
        int iB = b(layout, i);
        int iE = e(layout, i);
        DisplayMetrics displayMetrics = this.a.getResources().getDisplayMetrics();
        y45.i(displayMetrics, "view.resources.displayMetrics");
        e50 e50Var = new e50(displayMetrics, divTextRangeBorder, divTextRangeBackground, canvas, this.b);
        e50Var.e(i3, iE, lineLeft, iB);
        for (int i5 = i + 1; i5 < i2; i5++) {
            e50Var.d((int) layout.getLineLeft(i5), e(layout, i5), (int) layout.getLineRight(i5), b(layout, i5));
        }
        e50Var.c((int) (paragraphDirection == -1 ? layout.getLineRight(i) : layout.getLineLeft(i)), e(layout, i2), i4, b(layout, i2));
    }
}
