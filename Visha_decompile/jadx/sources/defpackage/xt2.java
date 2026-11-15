package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.core.expression.local.RuntimeStore;
import com.yandex.div.core.state.DivStatePath;
import com.yandex.div.core.view2.a;
import com.yandex.div2.Div;

public abstract class xt2 {
    public static final a a(a aVar, Div div, DivStatePath divStatePath) {
        oj3 oj3VarB;
        vj3 vj3VarF;
        y45.j(aVar, "<this>");
        y45.j(div, TtmlNode.TAG_DIV);
        y45.j(divStatePath, "path");
        if (!imb.a(div)) {
            return aVar;
        }
        RuntimeStore runtimeStoreE = aVar.e();
        if (runtimeStoreE == null || (vj3VarF = RuntimeStore.f(runtimeStoreE, divStatePath.e(), div, aVar.b(), null, 8, null)) == null || (oj3VarB = vj3VarF.c()) == null) {
            oj3VarB = aVar.b();
        }
        return aVar.c(oj3VarB);
    }
}
