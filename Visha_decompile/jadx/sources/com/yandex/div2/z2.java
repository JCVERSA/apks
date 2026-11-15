package com.yandex.div2;

import defpackage.ex7;
import defpackage.mx7;
import defpackage.pd9;
import defpackage.tb5;
import defpackage.vo2;
import defpackage.w92;
import defpackage.y45;
import defpackage.za3;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class z2 implements pd9, w92 {
    public final JsonParserComponent a;

    public z2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivRadialGradientCenter a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        if (y45.e(strU, "fixed")) {
            return new DivRadialGradientCenter.b(((DivRadialGradientFixedCenterJsonParser.b) this.a.f6().getValue()).a(ex7Var, jSONObject));
        }
        if (y45.e(strU, "relative")) {
            return new DivRadialGradientCenter.c(((vo2) this.a.o6().getValue()).a(ex7Var, jSONObject));
        }
        za3 za3VarA = ex7Var.a().a(strU, jSONObject);
        DivRadialGradientCenterTemplate divRadialGradientCenterTemplate = za3VarA instanceof DivRadialGradientCenterTemplate ? (DivRadialGradientCenterTemplate) za3VarA : null;
        if (divRadialGradientCenterTemplate != null) {
            return ((b3) this.a.b6().getValue()).a(ex7Var, divRadialGradientCenterTemplate, jSONObject);
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivRadialGradientCenter divRadialGradientCenter) {
        y45.j(ex7Var, "context");
        y45.j(divRadialGradientCenter, ES6Iterator.VALUE_PROPERTY);
        if (divRadialGradientCenter instanceof DivRadialGradientCenter.b) {
            return ((DivRadialGradientFixedCenterJsonParser.b) this.a.f6().getValue()).b(ex7Var, ((DivRadialGradientCenter.b) divRadialGradientCenter).c());
        }
        if (divRadialGradientCenter instanceof DivRadialGradientCenter.c) {
            return ((vo2) this.a.o6().getValue()).b(ex7Var, ((DivRadialGradientCenter.c) divRadialGradientCenter).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
