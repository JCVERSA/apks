package com.yandex.div2;

import defpackage.ex7;
import defpackage.mx7;
import defpackage.pd9;
import defpackage.tb5;
import defpackage.w92;
import defpackage.y45;
import defpackage.za3;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class i0 implements pd9, w92 {
    public final JsonParserComponent a;

    public i0(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivChangeTransition a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        if (y45.e(strU, "set")) {
            return new DivChangeTransition.c(((h0.b) this.a.O1().getValue()).a(ex7Var, jSONObject));
        }
        if (y45.e(strU, "change_bounds")) {
            return new DivChangeTransition.a(((DivChangeBoundsTransitionJsonParser.b) this.a.L1().getValue()).a(ex7Var, jSONObject));
        }
        za3 za3VarA = ex7Var.a().a(strU, jSONObject);
        DivChangeTransitionTemplate divChangeTransitionTemplate = za3VarA instanceof DivChangeTransitionTemplate ? (DivChangeTransitionTemplate) za3VarA : null;
        if (divChangeTransitionTemplate != null) {
            return ((k0) this.a.T1().getValue()).a(ex7Var, divChangeTransitionTemplate, jSONObject);
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivChangeTransition divChangeTransition) {
        y45.j(ex7Var, "context");
        y45.j(divChangeTransition, ES6Iterator.VALUE_PROPERTY);
        if (divChangeTransition instanceof DivChangeTransition.c) {
            return ((h0.b) this.a.O1().getValue()).b(ex7Var, ((DivChangeTransition.c) divChangeTransition).c());
        }
        if (divChangeTransition instanceof DivChangeTransition.a) {
            return ((DivChangeBoundsTransitionJsonParser.b) this.a.L1().getValue()).b(ex7Var, ((DivChangeTransition.a) divChangeTransition).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
