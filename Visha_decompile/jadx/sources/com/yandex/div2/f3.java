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

public final class f3 implements pd9, w92 {
    public final JsonParserComponent a;

    public f3(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivRadialGradientRadiusTemplate a(ex7 ex7Var, JSONObject jSONObject) {
        String strA;
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        za3 za3Var = ex7Var.a().get(strU);
        DivRadialGradientRadiusTemplate divRadialGradientRadiusTemplate = za3Var instanceof DivRadialGradientRadiusTemplate ? (DivRadialGradientRadiusTemplate) za3Var : null;
        if (divRadialGradientRadiusTemplate != null && (strA = divRadialGradientRadiusTemplate.a()) != null) {
            strU = strA;
        }
        if (y45.e(strU, "fixed")) {
            return new DivRadialGradientRadiusTemplate.b(((DivFixedSizeJsonParser.c) this.a.u3().getValue()).c(ex7Var, (DivFixedSizeTemplate) (divRadialGradientRadiusTemplate != null ? divRadialGradientRadiusTemplate.b() : null), jSONObject));
        }
        if (y45.e(strU, "relative")) {
            return new DivRadialGradientRadiusTemplate.c(((DivRadialGradientRelativeRadiusJsonParser.c) this.a.s6().getValue()).c(ex7Var, (DivRadialGradientRelativeRadiusTemplate) (divRadialGradientRadiusTemplate != null ? divRadialGradientRadiusTemplate.b() : null), jSONObject));
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivRadialGradientRadiusTemplate divRadialGradientRadiusTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divRadialGradientRadiusTemplate, ES6Iterator.VALUE_PROPERTY);
        if (divRadialGradientRadiusTemplate instanceof DivRadialGradientRadiusTemplate.b) {
            return ((DivFixedSizeJsonParser.c) this.a.u3().getValue()).b(ex7Var, ((DivRadialGradientRadiusTemplate.b) divRadialGradientRadiusTemplate).c());
        }
        if (divRadialGradientRadiusTemplate instanceof DivRadialGradientRadiusTemplate.c) {
            return ((DivRadialGradientRelativeRadiusJsonParser.c) this.a.s6().getValue()).b(ex7Var, ((DivRadialGradientRadiusTemplate.c) divRadialGradientRadiusTemplate).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
