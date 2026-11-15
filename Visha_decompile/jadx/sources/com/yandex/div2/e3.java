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

public final class e3 implements pd9, w92 {
    public final JsonParserComponent a;

    public e3(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivRadialGradientRadius a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        if (y45.e(strU, "fixed")) {
            return new DivRadialGradientRadius.b(((DivFixedSizeJsonParser.b) this.a.t3().getValue()).a(ex7Var, jSONObject));
        }
        if (y45.e(strU, "relative")) {
            return new DivRadialGradientRadius.c(((DivRadialGradientRelativeRadiusJsonParser.b) this.a.r6().getValue()).a(ex7Var, jSONObject));
        }
        za3 za3VarA = ex7Var.a().a(strU, jSONObject);
        DivRadialGradientRadiusTemplate divRadialGradientRadiusTemplate = za3VarA instanceof DivRadialGradientRadiusTemplate ? (DivRadialGradientRadiusTemplate) za3VarA : null;
        if (divRadialGradientRadiusTemplate != null) {
            return ((g3) this.a.n6().getValue()).a(ex7Var, divRadialGradientRadiusTemplate, jSONObject);
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivRadialGradientRadius divRadialGradientRadius) {
        y45.j(ex7Var, "context");
        y45.j(divRadialGradientRadius, ES6Iterator.VALUE_PROPERTY);
        if (divRadialGradientRadius instanceof DivRadialGradientRadius.b) {
            return ((DivFixedSizeJsonParser.b) this.a.t3().getValue()).b(ex7Var, ((DivRadialGradientRadius.b) divRadialGradientRadius).c());
        }
        if (divRadialGradientRadius instanceof DivRadialGradientRadius.c) {
            return ((DivRadialGradientRelativeRadiusJsonParser.b) this.a.r6().getValue()).b(ex7Var, ((DivRadialGradientRadius.c) divRadialGradientRadius).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
