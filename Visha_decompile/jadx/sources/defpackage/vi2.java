package defpackage;

import android.view.View;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.core.view2.Div2View;
import java.util.List;

public class vi2 {
    public final List a;

    public vi2(List list) {
        y45.j(list, "extensionHandlers");
        this.a = list;
    }

    public void a(Div2View div2View, oj3 oj3Var, View view, og2 og2Var) {
        y45.j(div2View, "divView");
        y45.j(oj3Var, "resolver");
        y45.j(view, "view");
        y45.j(og2Var, TtmlNode.TAG_DIV);
        if (c(og2Var)) {
            for (wi2 wi2Var : this.a) {
                if (wi2Var.matches(og2Var)) {
                    wi2Var.beforeBindView(div2View, oj3Var, view, og2Var);
                }
            }
        }
    }

    public void b(Div2View div2View, oj3 oj3Var, View view, og2 og2Var) {
        y45.j(div2View, "divView");
        y45.j(oj3Var, "resolver");
        y45.j(view, "view");
        y45.j(og2Var, TtmlNode.TAG_DIV);
        if (c(og2Var)) {
            for (wi2 wi2Var : this.a) {
                if (wi2Var.matches(og2Var)) {
                    wi2Var.bindView(div2View, oj3Var, view, og2Var);
                }
            }
        }
    }

    public final boolean c(og2 og2Var) {
        List extensions = og2Var.getExtensions();
        return (extensions == null || extensions.isEmpty() || this.a.isEmpty()) ? false : true;
    }

    public void d(og2 og2Var, oj3 oj3Var) {
        y45.j(og2Var, TtmlNode.TAG_DIV);
        y45.j(oj3Var, "resolver");
        if (c(og2Var)) {
            for (wi2 wi2Var : this.a) {
                if (wi2Var.matches(og2Var)) {
                    wi2Var.preprocess(og2Var, oj3Var);
                }
            }
        }
    }

    public void e(Div2View div2View, oj3 oj3Var, View view, og2 og2Var) {
        y45.j(div2View, "divView");
        y45.j(oj3Var, "resolver");
        y45.j(view, "view");
        y45.j(og2Var, TtmlNode.TAG_DIV);
        if (c(og2Var)) {
            for (wi2 wi2Var : this.a) {
                if (wi2Var.matches(og2Var)) {
                    wi2Var.unbindView(div2View, oj3Var, view, og2Var);
                }
            }
        }
    }
}
