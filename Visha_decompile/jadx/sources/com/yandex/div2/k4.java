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

public final class k4 implements pd9, w92 {
    public final JsonParserComponent a;

    public k4(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivTextGradientTemplate a(ex7 ex7Var, JSONObject jSONObject) {
        String strA;
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        za3 za3Var = ex7Var.a().get(strU);
        DivTextGradientTemplate divTextGradientTemplate = za3Var instanceof DivTextGradientTemplate ? (DivTextGradientTemplate) za3Var : null;
        if (divTextGradientTemplate != null && (strA = divTextGradientTemplate.a()) != null) {
            strU = strA;
        }
        if (y45.e(strU, "gradient")) {
            return new DivTextGradientTemplate.b(((k2.c) this.a.T4().getValue()).c(ex7Var, (DivLinearGradientTemplate) (divTextGradientTemplate != null ? divTextGradientTemplate.b() : null), jSONObject));
        }
        if (y45.e(strU, "radial_gradient")) {
            return new DivTextGradientTemplate.c(((d3.c) this.a.j6().getValue()).c(ex7Var, (DivRadialGradientTemplate) (divTextGradientTemplate != null ? divTextGradientTemplate.b() : null), jSONObject));
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivTextGradientTemplate divTextGradientTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divTextGradientTemplate, ES6Iterator.VALUE_PROPERTY);
        if (divTextGradientTemplate instanceof DivTextGradientTemplate.b) {
            return ((k2.c) this.a.T4().getValue()).b(ex7Var, ((DivTextGradientTemplate.b) divTextGradientTemplate).c());
        }
        if (divTextGradientTemplate instanceof DivTextGradientTemplate.c) {
            return ((d3.c) this.a.j6().getValue()).b(ex7Var, ((DivTextGradientTemplate.c) divTextGradientTemplate).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
