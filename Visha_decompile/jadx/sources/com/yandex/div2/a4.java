package com.yandex.div2;

import defpackage.ex7;
import defpackage.fr2;
import defpackage.ir2;
import defpackage.mx7;
import defpackage.pd9;
import defpackage.tb5;
import defpackage.w92;
import defpackage.y45;
import defpackage.za3;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class a4 implements pd9, w92 {
    public final JsonParserComponent a;

    public a4(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivStrokeStyleTemplate a(ex7 ex7Var, JSONObject jSONObject) {
        String strA;
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        za3 za3Var = ex7Var.a().get(strU);
        DivStrokeStyleTemplate divStrokeStyleTemplate = za3Var instanceof DivStrokeStyleTemplate ? (DivStrokeStyleTemplate) za3Var : null;
        if (divStrokeStyleTemplate != null && (strA = divStrokeStyleTemplate.a()) != null) {
            strU = strA;
        }
        if (y45.e(strU, "solid")) {
            return new DivStrokeStyleTemplate.c(((ir2) this.a.G7().getValue()).c(ex7Var, (DivStrokeStyleSolidTemplate) (divStrokeStyleTemplate != null ? divStrokeStyleTemplate.b() : null), jSONObject));
        }
        if (y45.e(strU, "dashed")) {
            return new DivStrokeStyleTemplate.b(((fr2) this.a.A7().getValue()).c(ex7Var, (DivStrokeStyleDashedTemplate) (divStrokeStyleTemplate != null ? divStrokeStyleTemplate.b() : null), jSONObject));
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivStrokeStyleTemplate divStrokeStyleTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divStrokeStyleTemplate, ES6Iterator.VALUE_PROPERTY);
        if (divStrokeStyleTemplate instanceof DivStrokeStyleTemplate.c) {
            return ((ir2) this.a.G7().getValue()).b(ex7Var, ((DivStrokeStyleTemplate.c) divStrokeStyleTemplate).c());
        }
        if (divStrokeStyleTemplate instanceof DivStrokeStyleTemplate.b) {
            return ((fr2) this.a.A7().getValue()).b(ex7Var, ((DivStrokeStyleTemplate.b) divStrokeStyleTemplate).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
