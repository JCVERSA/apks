package defpackage;

import android.graphics.Canvas;
import android.text.Layout;
import android.util.DisplayMetrics;
import android.view.View;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div2.DivTextRangeBackground;
import com.yandex.div2.DivTextRangeBorder;

public final class gn9 extends zs2 {
    public final View a;
    public final oj3 b;

    public gn9(View view, oj3 oj3Var) {
        y45.j(view, "view");
        y45.j(oj3Var, "resolver");
        this.a = view;
        this.b = oj3Var;
    }

    @Override
    public void a(Canvas canvas, Layout layout, int i, int i2, int i3, int i4, DivTextRangeBorder divTextRangeBorder, DivTextRangeBackground divTextRangeBackground) {
        y45.j(canvas, "canvas");
        y45.j(layout, TtmlNode.TAG_LAYOUT);
        int iE = e(layout, i);
        int iB = b(layout, i);
        int iMin = Math.min(i3, i4);
        int iMax = Math.max(i3, i4);
        DisplayMetrics displayMetrics = this.a.getResources().getDisplayMetrics();
        y45.i(displayMetrics, "view.resources.displayMetrics");
        new e50(displayMetrics, divTextRangeBorder, divTextRangeBackground, canvas, this.b).a(iMin, iE, iMax, iB);
    }
}
