package com.yandex.div.core.expression.local;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.core.expression.ExpressionResolverImpl;
import com.yandex.div.core.expression.variables.VariableControllerImpl;
import com.yandex.div.core.view2.divs.DivActionBinder;
import com.yandex.div.evaluable.Evaluator;
import com.yandex.div2.Div;
import defpackage.eu2;
import defpackage.gd2;
import defpackage.imb;
import defpackage.k84;
import defpackage.m84;
import defpackage.og2;
import defpackage.oj3;
import defpackage.pd3;
import defpackage.qd7;
import defpackage.qnb;
import defpackage.vj3;
import defpackage.wc3;
import defpackage.x9b;
import defpackage.xi;
import defpackage.y45;
import defpackage.yi5;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.b;
import org.apache.commons.io.IOUtils;

public final class RuntimeStore {
    public final Evaluator a;
    public final wc3 b;
    public final gd2 c;
    public final DivActionBinder d;
    public boolean e;
    public final Map f;
    public final qd7 g;
    public final RuntimeTree h;
    public vj3 i;
    public final yi5 j;

    public RuntimeStore(Evaluator evaluator, wc3 wc3Var, gd2 gd2Var, DivActionBinder divActionBinder) {
        y45.j(evaluator, "evaluator");
        y45.j(wc3Var, "errorCollector");
        y45.j(gd2Var, "div2Logger");
        y45.j(divActionBinder, "divActionBinder");
        this.a = evaluator;
        this.b = wc3Var;
        this.c = gd2Var;
        this.d = divActionBinder;
        this.f = new LinkedHashMap();
        this.g = new qd7();
        this.h = new RuntimeTree();
        this.j = b.a(new RuntimeStore$onCreateCallback$2(this));
    }

    public static vj3 f(RuntimeStore runtimeStore, String str, Div div, oj3 oj3Var, vj3 vj3Var, int i, Object obj) {
        if ((i & 4) != 0) {
            oj3Var = null;
        }
        if ((i & 8) != 0) {
            vj3Var = null;
        }
        return runtimeStore.e(str, div, oj3Var, vj3Var);
    }

    public static vj3 i(RuntimeStore runtimeStore, String str, Div div, vj3 vj3Var, oj3 oj3Var, vj3 vj3Var2, int i, Object obj) {
        return runtimeStore.h(str, div, (i & 4) != 0 ? null : vj3Var, (i & 8) != 0 ? null : oj3Var, (i & 16) != 0 ? null : vj3Var2);
    }

    public final void a() {
        this.e = false;
        Iterator it = this.g.iterator();
        while (it.hasNext()) {
            ((vj3) it.next()).a();
        }
    }

    public final void b() {
        Iterator it = this.g.iterator();
        while (it.hasNext()) {
            ((vj3) it.next()).b();
        }
    }

    public final vj3 c(vj3 vj3Var, vj3 vj3Var2, String str, List list, List list2, List list3) {
        VariableControllerImpl variableControllerImpl = new VariableControllerImpl(vj3Var.g());
        List list4 = list;
        if (list4 != null && !list4.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                variableControllerImpl.i((qnb) it.next());
            }
        }
        m84 m84VarD = vj3Var.d();
        List list5 = list3;
        if (list5 != null && !list5.isEmpty()) {
            m84VarD = m84VarD.d(k84.b(list3));
        }
        m84 m84Var = m84VarD;
        Evaluator evaluator = new Evaluator(new pd3(variableControllerImpl, this.a.r().b(), m84Var, this.a.r().d()));
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(IOUtils.DIR_SEPARATOR_UNIX);
        ExpressionResolverImpl expressionResolverImplC = vj3Var.c();
        x9b x9bVar = null;
        if (expressionResolverImplC == null) {
            expressionResolverImplC = null;
        }
        sb.append(expressionResolverImplC != null ? expressionResolverImplC.i() : null);
        ExpressionResolverImpl expressionResolverImpl = new ExpressionResolverImpl(sb.toString(), this, variableControllerImpl, evaluator, this.b, d());
        List list6 = list2;
        if (list6 != null && !list6.isEmpty()) {
            x9bVar = new x9b(variableControllerImpl, expressionResolverImpl, evaluator, this.b, this.c, this.d);
            x9bVar.b(list2);
        }
        vj3 vj3Var3 = new vj3(expressionResolverImpl, variableControllerImpl, x9bVar, m84Var, this);
        n(vj3Var3, str, vj3Var2);
        return vj3Var3;
    }

    public final ExpressionResolverImpl.a d() {
        return (ExpressionResolverImpl.a) this.j.getValue();
    }

    public final vj3 e(String str, Div div, oj3 oj3Var, vj3 vj3Var) {
        vj3 vj3VarC;
        y45.j(str, "path");
        y45.j(div, TtmlNode.TAG_DIV);
        RuntimeTree.a aVarC = this.h.c(str);
        return (aVarC == null || (vj3VarC = aVarC.c()) == null) ? h(str, div, null, oj3Var, vj3Var) : vj3VarC;
    }

    public final vj3 g() {
        return this.i;
    }

    public final vj3 h(String str, Div div, vj3 vj3Var, oj3 oj3Var, vj3 vj3Var2) {
        vj3 vj3Var3;
        vj3 vj3Var4;
        og2 og2VarB;
        og2 og2VarB2;
        og2 og2VarB3;
        List listC;
        List listY = null;
        if (vj3Var != null) {
            vj3Var3 = vj3Var;
        } else if (vj3Var2 == null) {
            vj3Var = oj3Var != null ? j(oj3Var) : null;
            if (vj3Var == null && (vj3Var = this.i) == null) {
                o("Root runtime is not specified.");
                return null;
            }
            vj3Var3 = vj3Var;
        } else {
            vj3Var3 = vj3Var2;
        }
        if (vj3Var2 != null) {
            vj3Var4 = vj3Var2;
        } else if (oj3Var != null) {
            vj3Var2 = j(oj3Var);
            vj3Var4 = vj3Var2;
        } else {
            vj3Var4 = null;
        }
        List listL = (div == null || (og2VarB3 = div.b()) == null || (listC = og2VarB3.c()) == null) ? null : eu2.l(listC);
        List listW = (div == null || (og2VarB2 = div.b()) == null) ? null : og2VarB2.w();
        if (div != null && (og2VarB = div.b()) != null) {
            listY = og2VarB.y();
        }
        List list = listY;
        if (imb.b(listL, listW, list)) {
            return c(vj3Var3, vj3Var4, str, listL, listW, list);
        }
        this.h.h(vj3Var3, vj3Var4, str);
        vj3Var3.i();
        return vj3Var3;
    }

    public final vj3 j(oj3 oj3Var) {
        y45.j(oj3Var, "resolver");
        return (vj3) this.f.get(oj3Var);
    }

    public final RuntimeTree k() {
        return this.h;
    }

    public final Map l() {
        return this.h.d();
    }

    public final void m(vj3 vj3Var) {
        y45.j(vj3Var, "runtime");
        this.f.put(vj3Var.c(), vj3Var);
        this.g.j(vj3Var);
    }

    public final void n(vj3 vj3Var, String str, vj3 vj3Var2) {
        y45.j(vj3Var, "runtime");
        y45.j(str, "path");
        m(vj3Var);
        this.h.h(vj3Var, vj3Var2, str);
        vj3Var.i();
    }

    public final void o(String str) {
        xi.i(str);
        this.b.e(new AssertionError(str));
    }

    public final vj3 p(String str, Div div, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(str, "path");
        y45.j(oj3Var, "resolver");
        RuntimeTree.a aVarC = this.h.c(str);
        vj3 vj3VarC = aVarC != null ? aVarC.c() : null;
        if (y45.e(oj3Var, vj3VarC != null ? vj3VarC.c() : null)) {
            return vj3VarC;
        }
        vj3 vj3VarJ = j(oj3Var);
        if (vj3VarJ == null) {
            o("ExpressionResolverImpl didn't call RuntimeStore#putRuntime on create.");
            return null;
        }
        if (vj3VarC != null) {
            this.h.g(vj3VarC, str);
        }
        return i(this, str, div, vj3VarJ, oj3Var2, null, 16, null);
    }

    public final void q(vj3 vj3Var) {
        this.i = vj3Var;
        if (vj3Var != null) {
            n(vj3Var, "", null);
        }
    }

    public final void r(og2 og2Var) {
        y45.j(og2Var, "child");
        if (this.e || og2Var.c() == null) {
            return;
        }
        this.e = true;
        this.b.f(new Throwable("You are using local variables. Please ensure that all elements that use local variables and all of their parents recursively have an 'id' attribute."));
    }

    public final void s() {
        Iterator it = this.g.iterator();
        while (it.hasNext()) {
            ((vj3) it.next()).i();
        }
    }
}
