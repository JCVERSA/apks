package defpackage;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.core.state.DivStatePath;
import com.yandex.div.core.tooltip.DivTooltipContainer;
import com.yandex.div.core.view2.a;
import com.yandex.div.core.view2.divs.BaseDivViewExtensionsKt;
import com.yandex.div2.Div;
import com.yandex.div2.DivSize;

public class st2 {
    public final oj8 a;

    public st2(oj8 oj8Var) {
        y45.j(oj8Var, "div2Builder");
        this.a = oj8Var;
    }

    public DivTooltipContainer a(a aVar, Div div, int i, int i2) {
        y45.j(aVar, "context");
        y45.j(div, TtmlNode.TAG_DIV);
        View viewB = b(aVar, div);
        Context context = aVar.a().getContext();
        y45.i(context, "context.divView.getContext()");
        DivTooltipContainer divTooltipContainer = new DivTooltipContainer(context, null, 0, 6, null);
        divTooltipContainer.addView(viewB);
        divTooltipContainer.setLayoutParams(new ViewGroup.LayoutParams(i, i2));
        return divTooltipContainer;
    }

    public final View b(a aVar, Div div) {
        og2 og2VarB = div.b();
        View viewA = ((dd2) this.a.get()).a(div, aVar, DivStatePath.f.h(0L, div));
        oj3 oj3VarB = aVar.b();
        DisplayMetrics displayMetrics = viewA.getContext().getResources().getDisplayMetrics();
        DivSize width = og2VarB.getWidth();
        y45.i(displayMetrics, "displayMetrics");
        viewA.setLayoutParams(new RelativeLayout.LayoutParams(BaseDivViewExtensionsKt.D0(width, displayMetrics, oj3VarB, null, 4, null), BaseDivViewExtensionsKt.D0(og2VarB.getHeight(), displayMetrics, oj3VarB, null, 4, null)));
        viewA.setFocusable(true);
        return viewA;
    }
}
