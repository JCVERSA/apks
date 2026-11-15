package com.yandex.div2;

import defpackage.er2;
import defpackage.ex7;
import defpackage.hr2;
import defpackage.mx7;
import defpackage.pd9;
import defpackage.tb5;
import defpackage.w92;
import defpackage.y45;
import defpackage.za3;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class z3 implements pd9, w92 {
    public final JsonParserComponent a;

    public z3(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivStrokeStyle a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        if (y45.e(strU, "solid")) {
            return new DivStrokeStyle.c(((hr2) this.a.F7().getValue()).a(ex7Var, jSONObject));
        }
        if (y45.e(strU, "dashed")) {
            return new DivStrokeStyle.b(((er2) this.a.z7().getValue()).a(ex7Var, jSONObject));
        }
        za3 za3VarA = ex7Var.a().a(strU, jSONObject);
        DivStrokeStyleTemplate divStrokeStyleTemplate = za3VarA instanceof DivStrokeStyleTemplate ? (DivStrokeStyleTemplate) za3VarA : null;
        if (divStrokeStyleTemplate != null) {
            return ((b4) this.a.E7().getValue()).a(ex7Var, divStrokeStyleTemplate, jSONObject);
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivStrokeStyle divStrokeStyle) {
        y45.j(ex7Var, "context");
        y45.j(divStrokeStyle, ES6Iterator.VALUE_PROPERTY);
        if (divStrokeStyle instanceof DivStrokeStyle.c) {
            return ((hr2) this.a.F7().getValue()).b(ex7Var, ((DivStrokeStyle.c) divStrokeStyle).c());
        }
        if (divStrokeStyle instanceof DivStrokeStyle.b) {
            return ((er2) this.a.z7().getValue()).b(ex7Var, ((DivStrokeStyle.b) divStrokeStyle).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
