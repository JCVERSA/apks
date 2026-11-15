package com.yandex.div.core.actions;

import com.yandex.div.core.view2.Div2View;
import defpackage.bob;
import defpackage.e74;
import defpackage.eg2;
import defpackage.i81;
import defpackage.oj3;
import defpackage.pc5;
import defpackage.qnb;
import defpackage.y45;
import java.util.Collection;
import java.util.List;
import org.json.JSONArray;

public abstract class DivActionTypedArrayMutationHandlerKt {
    public static final JSONArray c(JSONArray jSONArray, e74 e74Var) {
        List listE1 = i81.e1(pc5.a(jSONArray));
        e74Var.invoke(listE1);
        return new JSONArray((Collection) listE1);
    }

    public static final void d(final Div2View div2View, String str, oj3 oj3Var, final e74 e74Var) {
        bob.a.c(div2View, str, oj3Var, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public final qnb invoke(qnb qnbVar) {
                y45.j(qnbVar, "variable");
                if (!(qnbVar instanceof qnb.a)) {
                    eg2.e(div2View.getView(), new IllegalArgumentException("Action requires array variable"));
                    return qnbVar;
                }
                Object objC = qnbVar.c();
                JSONArray jSONArray = objC instanceof JSONArray ? (JSONArray) objC : null;
                if (jSONArray == null) {
                    eg2.e(div2View.getView(), new IllegalArgumentException("Invalid variable value"));
                    return qnbVar;
                }
                ((qnb.a) qnbVar).t((JSONArray) e74Var.invoke(jSONArray));
                return qnbVar;
            }
        });
    }
}
