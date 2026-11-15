package com.yandex.div2;

import defpackage.ex7;
import defpackage.jl2;
import defpackage.ml2;
import defpackage.mx7;
import defpackage.pd9;
import defpackage.tb5;
import defpackage.w92;
import defpackage.y45;
import defpackage.za3;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class r1 implements pd9, w92 {
    public final JsonParserComponent a;

    public r1(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivInputFilter a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        if (y45.e(strU, "regex")) {
            return new DivInputFilter.c(((ml2) this.a.m4().getValue()).a(ex7Var, jSONObject));
        }
        if (y45.e(strU, "expression")) {
            return new DivInputFilter.b(((jl2) this.a.g4().getValue()).a(ex7Var, jSONObject));
        }
        za3 za3VarA = ex7Var.a().a(strU, jSONObject);
        DivInputFilterTemplate divInputFilterTemplate = za3VarA instanceof DivInputFilterTemplate ? (DivInputFilterTemplate) za3VarA : null;
        if (divInputFilterTemplate != null) {
            return ((t1) this.a.l4().getValue()).a(ex7Var, divInputFilterTemplate, jSONObject);
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivInputFilter divInputFilter) {
        y45.j(ex7Var, "context");
        y45.j(divInputFilter, ES6Iterator.VALUE_PROPERTY);
        if (divInputFilter instanceof DivInputFilter.c) {
            return ((ml2) this.a.m4().getValue()).b(ex7Var, ((DivInputFilter.c) divInputFilter).c());
        }
        if (divInputFilter instanceof DivInputFilter.b) {
            return ((jl2) this.a.g4().getValue()).b(ex7Var, ((DivInputFilter.b) divInputFilter).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
