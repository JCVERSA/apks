package defpackage;

import com.yandex.div.core.expression.triggers.TriggerExecutor;
import com.yandex.div.core.view2.divs.DivActionBinder;
import com.yandex.div.evaluable.EvaluableException;
import com.yandex.div.evaluable.Evaluator;
import com.yandex.div.evaluable.a;
import com.yandex.div2.DivTrigger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class x9b {
    public final snb a;
    public final oj3 b;
    public final Evaluator c;
    public final wc3 d;
    public final gd2 e;
    public final DivActionBinder f;
    public final Map g;
    public sv2 h;
    public List i;

    public x9b(snb snbVar, oj3 oj3Var, Evaluator evaluator, wc3 wc3Var, gd2 gd2Var, DivActionBinder divActionBinder) {
        y45.j(snbVar, "variableController");
        y45.j(oj3Var, "expressionResolver");
        y45.j(evaluator, "evaluator");
        y45.j(wc3Var, "errorCollector");
        y45.j(gd2Var, "logger");
        y45.j(divActionBinder, "divActionBinder");
        this.a = snbVar;
        this.b = oj3Var;
        this.c = evaluator;
        this.d = wc3Var;
        this.e = gd2Var;
        this.f = divActionBinder;
        this.g = new LinkedHashMap();
    }

    public void a() {
        this.h = null;
        Iterator it = this.g.entrySet().iterator();
        while (it.hasNext()) {
            Iterator it2 = ((List) ((Map.Entry) it.next()).getValue()).iterator();
            while (it2.hasNext()) {
                ((TriggerExecutor) it2.next()).f(null);
            }
        }
    }

    public void b(List list) {
        y45.j(list, "divTriggers");
        if (this.i == list) {
            return;
        }
        this.i = list;
        sv2 sv2Var = this.h;
        Map map = this.g;
        Object arrayList = map.get(list);
        if (arrayList == null) {
            arrayList = new ArrayList();
            map.put(list, arrayList);
        }
        List list2 = (List) arrayList;
        a();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            DivTrigger divTrigger = (DivTrigger) it.next();
            String string = divTrigger.b.c().toString();
            try {
                a aVarA = a.d.a(string);
                Throwable thC = c(aVarA.f());
                if (thC != null) {
                    this.d.e(new IllegalStateException("Invalid condition: '" + divTrigger.b + '\'', thC));
                } else {
                    list2.add(new TriggerExecutor(string, aVarA, this.c, divTrigger.a, divTrigger.c, this.b, this.a, this.d, this.e, this.f));
                }
            } catch (EvaluableException unused) {
            }
        }
        if (sv2Var != null) {
            d(sv2Var);
        }
    }

    public final Throwable c(List list) {
        if (list.isEmpty()) {
            return new RuntimeException("No variables defined!");
        }
        return null;
    }

    public void d(sv2 sv2Var) {
        List list;
        y45.j(sv2Var, "view");
        if (y45.e(this.h, sv2Var)) {
            return;
        }
        this.h = sv2Var;
        List list2 = this.i;
        if (list2 == null || (list = (List) this.g.get(list2)) == null) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((TriggerExecutor) it.next()).f(sv2Var);
        }
    }
}
