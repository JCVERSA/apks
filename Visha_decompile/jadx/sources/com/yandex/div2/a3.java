package com.yandex.div2;

import defpackage.ex7;
import defpackage.mx7;
import defpackage.pd9;
import defpackage.tb5;
import defpackage.w92;
import defpackage.wo2;
import defpackage.y45;
import defpackage.za3;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class a3 implements pd9, w92 {
    public final JsonParserComponent a;

    public a3(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivRadialGradientCenterTemplate a(ex7 ex7Var, JSONObject jSONObject) {
        String strA;
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        za3 za3Var = ex7Var.a().get(strU);
        DivRadialGradientCenterTemplate divRadialGradientCenterTemplate = za3Var instanceof DivRadialGradientCenterTemplate ? (DivRadialGradientCenterTemplate) za3Var : null;
        if (divRadialGradientCenterTemplate != null && (strA = divRadialGradientCenterTemplate.a()) != null) {
            strU = strA;
        }
        if (y45.e(strU, "fixed")) {
            return new DivRadialGradientCenterTemplate.b(((DivRadialGradientFixedCenterJsonParser.c) this.a.g6().getValue()).c(ex7Var, (DivRadialGradientFixedCenterTemplate) (divRadialGradientCenterTemplate != null ? divRadialGradientCenterTemplate.b() : null), jSONObject));
        }
        if (y45.e(strU, "relative")) {
            return new DivRadialGradientCenterTemplate.c(((wo2) this.a.p6().getValue()).c(ex7Var, (DivRadialGradientRelativeCenterTemplate) (divRadialGradientCenterTemplate != null ? divRadialGradientCenterTemplate.b() : null), jSONObject));
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivRadialGradientCenterTemplate divRadialGradientCenterTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divRadialGradientCenterTemplate, ES6Iterator.VALUE_PROPERTY);
        if (divRadialGradientCenterTemplate instanceof DivRadialGradientCenterTemplate.b) {
            return ((DivRadialGradientFixedCenterJsonParser.c) this.a.g6().getValue()).b(ex7Var, ((DivRadialGradientCenterTemplate.b) divRadialGradientCenterTemplate).c());
        }
        if (divRadialGradientCenterTemplate instanceof DivRadialGradientCenterTemplate.c) {
            return ((wo2) this.a.p6().getValue()).b(ex7Var, ((DivRadialGradientCenterTemplate.c) divRadialGradientCenterTemplate).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
