package com.yandex.div.core.expression;

import com.lzy.okgo.model.Progress;
import com.yandex.div.core.expression.ExpressionResolverImpl;
import com.yandex.div.core.expression.a;
import com.yandex.div.core.expression.local.RuntimeStore;
import com.yandex.div.core.expression.storedvalues.StoredValuesController;
import com.yandex.div.core.expression.variables.DivVariableController;
import com.yandex.div.core.expression.variables.VariableControllerImpl;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div.core.view2.divs.DivActionBinder;
import com.yandex.div.data.StoredValue;
import com.yandex.div.data.VariableDeclarationException;
import com.yandex.div.evaluable.Evaluator;
import com.yandex.div2.DivData;
import com.yandex.div2.DivVariable;
import defpackage.dy9;
import defpackage.ei2;
import defpackage.gd2;
import defpackage.hu2;
import defpackage.m84;
import defpackage.nd4;
import defpackage.pd3;
import defpackage.qgc;
import defpackage.qnb;
import defpackage.snb;
import defpackage.vj3;
import defpackage.wc3;
import defpackage.x9b;
import defpackage.xc3;
import defpackage.y45;
import defpackage.y71;
import defpackage.yj3;
import defpackage.z0a;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import kotlin.NoWhenBranchMatchedException;

public class a {
    public final DivVariableController a;
    public final DivActionBinder b;
    public final xc3 c;
    public final gd2 d;
    public final StoredValuesController e;
    public final Map f;
    public final WeakHashMap g;

    public static final class C0280a implements qgc {
        public final wc3 a;

        public C0280a(wc3 wc3Var) {
            this.a = wc3Var;
        }

        @Override
        public final void a(com.yandex.div.evaluable.a aVar, String str) {
            y45.j(aVar, "expressionContext");
            y45.j(str, "message");
            this.a.f(new Throwable("Warning occurred while evaluating '" + aVar.e() + "': " + str));
        }
    }

    public a(DivVariableController divVariableController, DivActionBinder divActionBinder, xc3 xc3Var, gd2 gd2Var, StoredValuesController storedValuesController) {
        y45.j(divVariableController, "divVariableController");
        y45.j(divActionBinder, "divActionBinder");
        y45.j(xc3Var, "errorCollectors");
        y45.j(gd2Var, "logger");
        y45.j(storedValuesController, "storedValuesController");
        this.a = divVariableController;
        this.b = divActionBinder;
        this.c = xc3Var;
        this.d = gd2Var;
        this.e = storedValuesController;
        this.f = Collections.synchronizedMap(new LinkedHashMap());
        this.g = new WeakHashMap();
    }

    public static final Object e(a aVar, wc3 wc3Var, String str) {
        y45.j(aVar, "this$0");
        y45.j(wc3Var, "$errorCollector");
        y45.j(str, "storedValueName");
        StoredValue storedValueC = aVar.e.c(str, wc3Var);
        if (storedValueC != null) {
            return storedValueC.c();
        }
        return null;
    }

    public static final void f(RuntimeStore runtimeStore, ExpressionResolverImpl expressionResolverImpl, snb snbVar, m84 m84Var) {
        y45.j(runtimeStore, "$runtimeStore");
        y45.j(expressionResolverImpl, "resolver");
        y45.j(snbVar, "variableController");
        y45.j(m84Var, "functionProvider");
        runtimeStore.m(new vj3(expressionResolverImpl, snbVar, null, m84Var, runtimeStore));
    }

    public void c(Div2View div2View) {
        RuntimeStore runtimeStoreE;
        y45.j(div2View, "view");
        Set set = (Set) this.g.get(div2View);
        if (set != null) {
            Iterator it = set.iterator();
            while (it.hasNext()) {
                vj3 vj3Var = (vj3) this.f.get((String) it.next());
                if (vj3Var != null && (runtimeStoreE = vj3Var.e()) != null) {
                    runtimeStoreE.a();
                }
            }
        }
        this.g.remove(div2View);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final vj3 d(DivData divData, ei2 ei2Var) {
        final wc3 wc3VarA = this.c.a(ei2Var, divData);
        VariableControllerImpl variableControllerImpl = new VariableControllerImpl(null, 1, 0 == true ? 1 : 0);
        List list = divData.g;
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                try {
                    variableControllerImpl.i(hu2.a((DivVariable) it.next()));
                } catch (VariableDeclarationException e) {
                    wc3VarA.e(e);
                }
            }
        }
        variableControllerImpl.q(this.a.f());
        m84 m84Var = new m84(nd4.a);
        Evaluator evaluator = new Evaluator(new pd3(variableControllerImpl, new dy9() {
            @Override
            public final Object get(String str) {
                return a.e(this.a, wc3VarA, str);
            }
        }, m84Var, new C0280a(wc3VarA)));
        final RuntimeStore runtimeStore = new RuntimeStore(evaluator, wc3VarA, this.d, this.b);
        ExpressionResolverImpl expressionResolverImpl = new ExpressionResolverImpl("dataTag: '" + ei2Var.a() + '\'', runtimeStore, variableControllerImpl, evaluator, wc3VarA, new ExpressionResolverImpl.a() {
            @Override
            public final void a(ExpressionResolverImpl expressionResolverImpl2, snb snbVar, m84 m84Var2) {
                a.f(runtimeStore, expressionResolverImpl2, snbVar, m84Var2);
            }
        });
        vj3 vj3Var = new vj3(expressionResolverImpl, variableControllerImpl, new x9b(variableControllerImpl, expressionResolverImpl, evaluator, wc3VarA, this.d, this.b), m84Var, runtimeStore);
        runtimeStore.q(vj3Var);
        return vj3Var;
    }

    public final void g(snb snbVar, DivData divData, wc3 wc3Var) {
        boolean z;
        List<DivVariable> list = divData.g;
        if (list != null) {
            for (DivVariable divVariable : list) {
                qnb qnbVarA = snbVar.a(yj3.a(divVariable));
                if (qnbVarA == null) {
                    try {
                        snbVar.i(hu2.a(divVariable));
                    } catch (VariableDeclarationException e) {
                        wc3Var.e(e);
                    }
                } else {
                    if (divVariable instanceof DivVariable.b) {
                        z = qnbVarA instanceof qnb.b;
                    } else if (divVariable instanceof DivVariable.f) {
                        z = qnbVarA instanceof qnb.f;
                    } else if (divVariable instanceof DivVariable.g) {
                        z = qnbVarA instanceof qnb.e;
                    } else if (divVariable instanceof DivVariable.h) {
                        z = qnbVarA instanceof qnb.g;
                    } else if (divVariable instanceof DivVariable.c) {
                        z = qnbVarA instanceof qnb.c;
                    } else if (divVariable instanceof DivVariable.i) {
                        z = qnbVarA instanceof qnb.h;
                    } else if (divVariable instanceof DivVariable.e) {
                        z = qnbVarA instanceof qnb.d;
                    } else {
                        if (!(divVariable instanceof DivVariable.a)) {
                            throw new NoWhenBranchMatchedException();
                        }
                        z = qnbVarA instanceof qnb.a;
                    }
                    if (!z) {
                        wc3Var.e(new IllegalArgumentException(z0a.j("\n                           Variable inconsistency detected!\n                           at DivData: " + yj3.a(divVariable) + " (" + divVariable + ")\n                           at VariableController: " + snbVar.a(yj3.a(divVariable)) + "\n                        ")));
                    }
                }
            }
        }
    }

    public vj3 h(ei2 ei2Var, DivData divData, Div2View div2View) {
        y45.j(ei2Var, Progress.TAG);
        y45.j(divData, "data");
        y45.j(div2View, "div2View");
        Map map = this.f;
        y45.i(map, "runtimes");
        String strA = ei2Var.a();
        Object objD = map.get(strA);
        if (objD == null) {
            objD = d(divData, ei2Var);
            map.put(strA, objD);
        }
        vj3 vj3Var = (vj3) objD;
        wc3 wc3VarA = this.c.a(ei2Var, divData);
        WeakHashMap weakHashMap = this.g;
        Object linkedHashSet = weakHashMap.get(div2View);
        if (linkedHashSet == null) {
            linkedHashSet = new LinkedHashSet();
            weakHashMap.put(div2View, linkedHashSet);
        }
        String strA2 = ei2Var.a();
        y45.i(strA2, "tag.id");
        ((Set) linkedHashSet).add(strA2);
        g(vj3Var.g(), divData, wc3VarA);
        x9b x9bVarF = vj3Var.f();
        if (x9bVarF != null) {
            List listK = divData.f;
            if (listK == null) {
                listK = y71.k();
            }
            x9bVarF.b(listK);
        }
        y45.i(vj3Var, "result");
        return vj3Var;
    }

    public void i(List list) {
        y45.j(list, "tags");
        if (list.isEmpty()) {
            this.f.clear();
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            this.f.remove(((ei2) it.next()).a());
        }
    }
}
