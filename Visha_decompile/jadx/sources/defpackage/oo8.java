package defpackage;

import android.view.View;
import android.view.ViewGroup;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div.core.view2.DivViewCreator;
import com.yandex.div2.Div;
import java.util.Iterator;
import java.util.List;

public abstract class oo8 {
    public static final boolean a(ViewGroup viewGroup, Div2View div2View, List list, oj8 oj8Var) {
        y45.j(viewGroup, "<this>");
        y45.j(div2View, "divView");
        y45.j(list, "items");
        y45.j(oj8Var, "divViewCreator");
        xu8 currentRebindReusableList$div_release = div2View.getCurrentRebindReusableList$div_release();
        if (currentRebindReusableList$div_release == null) {
            return false;
        }
        viewGroup.removeAllViews();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zl2 zl2Var = (zl2) it.next();
            View viewC = currentRebindReusableList$div_release.c(zl2Var.c());
            if (viewC == null) {
                viewC = ((DivViewCreator) oj8Var.get()).L(zl2Var.c(), zl2Var.d());
            }
            viewGroup.addView(viewC);
        }
        return true;
    }

    public static final boolean b(ViewGroup viewGroup, Div2View div2View, Div div) {
        View viewC;
        y45.j(viewGroup, "<this>");
        y45.j(div2View, "div2View");
        y45.j(div, TtmlNode.TAG_DIV);
        xu8 currentRebindReusableList$div_release = div2View.getCurrentRebindReusableList$div_release();
        if (currentRebindReusableList$div_release == null || (viewC = currentRebindReusableList$div_release.c(div)) == null) {
            return false;
        }
        viewGroup.addView(viewC);
        return true;
    }
}
