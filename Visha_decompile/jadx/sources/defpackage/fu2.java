package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div2.Div;

public class fu2 extends cw2 {
    @Override
    public Boolean a(Div div, oj3 oj3Var) {
        y45.j(div, "data");
        y45.j(oj3Var, "resolver");
        return Boolean.TRUE;
    }

    public boolean u(Div div, oj3 oj3Var) {
        y45.j(div, TtmlNode.TAG_DIV);
        y45.j(oj3Var, "resolver");
        return ((Boolean) s(div, oj3Var)).booleanValue();
    }
}
