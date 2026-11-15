package com.yandex.div2;

import defpackage.dj2;
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

public final class c1 implements pd9, w92 {
    public final JsonParserComponent a;

    public c1(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivFilter a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        if (y45.e(strU, "blur")) {
            return new DivFilter.a(((f0.b) this.a.F1().getValue()).a(ex7Var, jSONObject));
        }
        if (y45.e(strU, "rtl_mirror")) {
            return new DivFilter.c(((dj2) this.a.h3().getValue()).a(ex7Var, jSONObject));
        }
        za3 za3VarA = ex7Var.a().a(strU, jSONObject);
        DivFilterTemplate divFilterTemplate = za3VarA instanceof DivFilterTemplate ? (DivFilterTemplate) za3VarA : null;
        if (divFilterTemplate != null) {
            return ((e1) this.a.g3().getValue()).a(ex7Var, divFilterTemplate, jSONObject);
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivFilter divFilter) {
        y45.j(ex7Var, "context");
        y45.j(divFilter, ES6Iterator.VALUE_PROPERTY);
        if (divFilter instanceof DivFilter.a) {
            return ((f0.b) this.a.F1().getValue()).b(ex7Var, ((DivFilter.a) divFilter).c());
        }
        if (divFilter instanceof DivFilter.c) {
            return ((dj2) this.a.h3().getValue()).b(ex7Var, ((DivFilter.c) divFilter).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
