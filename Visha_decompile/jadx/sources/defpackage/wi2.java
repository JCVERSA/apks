package defpackage;

import android.view.View;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.core.view2.Div2View;

public interface wi2 {
    default void beforeBindView(Div2View div2View, oj3 oj3Var, View view, og2 og2Var) {
        y45.j(div2View, "divView");
        y45.j(oj3Var, "expressionResolver");
        y45.j(view, "view");
        y45.j(og2Var, TtmlNode.TAG_DIV);
    }

    void bindView(Div2View div2View, oj3 oj3Var, View view, og2 og2Var);

    boolean matches(og2 og2Var);

    default void preprocess(og2 og2Var, oj3 oj3Var) {
        y45.j(og2Var, TtmlNode.TAG_DIV);
        y45.j(oj3Var, "expressionResolver");
    }

    void unbindView(Div2View div2View, oj3 oj3Var, View view, og2 og2Var);
}
