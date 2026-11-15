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

public final class j4 implements pd9, w92 {
    public final JsonParserComponent a;

    public j4(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivTextGradient a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        if (y45.e(strU, "gradient")) {
            return new DivTextGradient.b(((k2.b) this.a.S4().getValue()).a(ex7Var, jSONObject));
        }
        if (y45.e(strU, "radial_gradient")) {
            return new DivTextGradient.c(((d3.b) this.a.i6().getValue()).a(ex7Var, jSONObject));
        }
        za3 za3VarA = ex7Var.a().a(strU, jSONObject);
        DivTextGradientTemplate divTextGradientTemplate = za3VarA instanceof DivTextGradientTemplate ? (DivTextGradientTemplate) za3VarA : null;
        if (divTextGradientTemplate != null) {
            return ((l4) this.a.c8().getValue()).a(ex7Var, divTextGradientTemplate, jSONObject);
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivTextGradient divTextGradient) {
        y45.j(ex7Var, "context");
        y45.j(divTextGradient, ES6Iterator.VALUE_PROPERTY);
        if (divTextGradient instanceof DivTextGradient.b) {
            return ((k2.b) this.a.S4().getValue()).b(ex7Var, ((DivTextGradient.b) divTextGradient).c());
        }
        if (divTextGradient instanceof DivTextGradient.c) {
            return ((d3.b) this.a.i6().getValue()).b(ex7Var, ((DivTextGradient.c) divTextGradient).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
