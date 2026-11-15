package defpackage;

import android.view.View;
import com.yandex.div.core.expression.local.DivRuntimeVisitor;
import com.yandex.div.core.state.DivStatePath;
import com.yandex.div.core.view2.DivViewCreator;
import com.yandex.div.core.view2.a;
import com.yandex.div.internal.widget.DivLayoutParams;
import com.yandex.div2.Div;

public class dd2 {
    public final DivViewCreator a;
    public final rg2 b;
    public final DivRuntimeVisitor c;

    public dd2(DivViewCreator divViewCreator, rg2 rg2Var, DivRuntimeVisitor divRuntimeVisitor) {
        y45.j(divViewCreator, "viewCreator");
        y45.j(rg2Var, "viewBinder");
        y45.j(divRuntimeVisitor, "runtimeVisitor");
        this.a = divViewCreator;
        this.b = rg2Var;
        this.c = divRuntimeVisitor;
    }

    public View a(Div div, a aVar, DivStatePath divStatePath) {
        y45.j(div, "data");
        y45.j(aVar, "context");
        y45.j(divStatePath, "path");
        View viewB = b(div, aVar, divStatePath);
        this.b.b(aVar, viewB, div, divStatePath);
        return viewB;
    }

    public View b(Div div, a aVar, DivStatePath divStatePath) {
        y45.j(div, "data");
        y45.j(aVar, "context");
        y45.j(divStatePath, "path");
        oj3 oj3VarB = aVar.b();
        this.c.b(div, divStatePath, aVar.a());
        View viewL = this.a.L(div, oj3VarB);
        viewL.setLayoutParams(new DivLayoutParams(-1, -2));
        return viewL;
    }
}
