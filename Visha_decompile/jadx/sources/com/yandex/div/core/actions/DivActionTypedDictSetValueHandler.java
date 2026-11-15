package com.yandex.div.core.actions;

import com.yandex.div.core.view2.Div2View;
import com.yandex.div2.DivActionDictSetValue;
import com.yandex.div2.DivActionTyped;
import com.yandex.div2.DivTypedValue;
import defpackage.bob;
import defpackage.e74;
import defpackage.eg2;
import defpackage.oj3;
import defpackage.qnb;
import defpackage.sf2;
import defpackage.uf2;
import defpackage.y45;
import org.json.JSONException;
import org.json.JSONObject;

public final class DivActionTypedDictSetValueHandler implements uf2 {
    @Override
    public boolean a(String str, DivActionTyped divActionTyped, Div2View div2View, oj3 oj3Var) {
        y45.j(divActionTyped, "action");
        y45.j(div2View, "view");
        y45.j(oj3Var, "resolver");
        if (!(divActionTyped instanceof DivActionTyped.i)) {
            return false;
        }
        b(((DivActionTyped.i) divActionTyped).c(), div2View, oj3Var);
        return true;
    }

    public final void b(DivActionDictSetValue divActionDictSetValue, final Div2View div2View, oj3 oj3Var) {
        String str = (String) divActionDictSetValue.c.b(oj3Var);
        final String str2 = (String) divActionDictSetValue.a.b(oj3Var);
        DivTypedValue divTypedValue = divActionDictSetValue.b;
        final Object objD = divTypedValue != null ? eg2.d(divTypedValue, oj3Var) : null;
        bob.a.c(div2View, str, oj3Var, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public final qnb invoke(qnb qnbVar) throws JSONException {
                y45.j(qnbVar, "variable");
                if (!(qnbVar instanceof qnb.d)) {
                    eg2.e(div2View, new IllegalArgumentException("dict_set_value action requires dict variable"));
                    return qnbVar;
                }
                Object objC = qnbVar.c();
                JSONObject jSONObject = objC instanceof JSONObject ? (JSONObject) objC : null;
                if (jSONObject == null) {
                    eg2.e(div2View, new IllegalArgumentException("Invalid variable value"));
                    return qnbVar;
                }
                JSONObject jSONObjectB = sf2.b(jSONObject);
                Object obj = objD;
                if (obj == null) {
                    jSONObjectB.remove(str2);
                    ((qnb.d) qnbVar).t(jSONObjectB);
                } else {
                    JSONObject jSONObjectPut = jSONObjectB.put(str2, obj);
                    y45.i(jSONObjectPut, "newDict.put(key, newValue)");
                    ((qnb.d) qnbVar).t(jSONObjectPut);
                }
                return qnbVar;
            }
        });
    }
}
