package defpackage;

import android.view.View;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.core.state.DivStatePath;
import com.yandex.div.core.view2.a;
import com.yandex.div.core.view2.divs.DivBaseBinder;
import com.yandex.div2.Div;

public abstract class wu2 {
    public final DivBaseBinder a;

    public wu2(DivBaseBinder divBaseBinder) {
        y45.j(divBaseBinder, "baseBinder");
        this.a = divBaseBinder;
    }

    public void a(View view, a aVar, og2 og2Var, og2 og2Var2) {
        y45.j(view, "<this>");
        y45.j(aVar, "bindingContext");
        y45.j(og2Var, TtmlNode.TAG_DIV);
    }

    public void b(View view, a aVar, og2 og2Var, og2 og2Var2, DivStatePath divStatePath) {
        y45.j(view, "<this>");
        y45.j(aVar, "bindingContext");
        y45.j(og2Var, TtmlNode.TAG_DIV);
        y45.j(divStatePath, "path");
        a(view, aVar, og2Var, og2Var2);
    }

    public void c(a aVar, View view, Div div) {
        y45.j(aVar, "context");
        y45.j(view, "view");
        y45.j(div, TtmlNode.TAG_DIV);
        e(aVar, view, div, null);
    }

    public void d(a aVar, View view, Div div, DivStatePath divStatePath) {
        y45.j(aVar, "context");
        y45.j(view, "view");
        y45.j(div, TtmlNode.TAG_DIV);
        y45.j(divStatePath, "path");
        e(aVar, view, div, divStatePath);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void e(a aVar, View view, Div div, DivStatePath divStatePath) {
        zfb zfbVar;
        y45.h(view, "null cannot be cast to non-null type com.yandex.div.core.view2.divs.widgets.DivHolderView<TData of com.yandex.div.core.view2.DivViewBinder>");
        Div div2 = ((mk2) view).getDiv();
        if (div == div2) {
            return;
        }
        this.a.N(aVar, view, div, div2);
        if (divStatePath != null) {
            og2 og2VarB = div.b();
            y45.h(og2VarB, "null cannot be cast to non-null type TDataValue of com.yandex.div.core.view2.DivViewBinder.bindViewInternal$lambda$0");
            b(view, aVar, og2VarB, div2 != null ? div2.b() : null, divStatePath);
            zfbVar = zfb.a;
        } else {
            zfbVar = null;
        }
        if (zfbVar == null) {
            og2 og2VarB2 = div.b();
            y45.h(og2VarB2, "null cannot be cast to non-null type TDataValue of com.yandex.div.core.view2.DivViewBinder");
            a(view, aVar, og2VarB2, div2 != null ? div2.b() : null);
        }
    }
}
