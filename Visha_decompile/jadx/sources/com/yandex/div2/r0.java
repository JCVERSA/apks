package com.yandex.div2;

import defpackage.ex7;
import defpackage.gl2;
import defpackage.mx7;
import defpackage.pd9;
import defpackage.tb5;
import defpackage.w92;
import defpackage.y45;
import defpackage.za3;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class r0 implements pd9, w92 {
    public final JsonParserComponent a;

    public r0(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivCount a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        if (y45.e(strU, "infinity")) {
            return new DivCount.c(((gl2) this.a.d4().getValue()).a(ex7Var, jSONObject));
        }
        if (y45.e(strU, "fixed")) {
            return new DivCount.b(((f1.b) this.a.k3().getValue()).a(ex7Var, jSONObject));
        }
        za3 za3VarA = ex7Var.a().a(strU, jSONObject);
        DivCountTemplate divCountTemplate = za3VarA instanceof DivCountTemplate ? (DivCountTemplate) za3VarA : null;
        if (divCountTemplate != null) {
            return ((t0) this.a.u2().getValue()).a(ex7Var, divCountTemplate, jSONObject);
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivCount divCount) {
        y45.j(ex7Var, "context");
        y45.j(divCount, ES6Iterator.VALUE_PROPERTY);
        if (divCount instanceof DivCount.c) {
            return ((gl2) this.a.d4().getValue()).b(ex7Var, ((DivCount.c) divCount).c());
        }
        if (divCount instanceof DivCount.b) {
            return ((f1.b) this.a.k3().getValue()).b(ex7Var, ((DivCount.b) divCount).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
