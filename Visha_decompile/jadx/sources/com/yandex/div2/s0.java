package com.yandex.div2;

import defpackage.ex7;
import defpackage.hl2;
import defpackage.mx7;
import defpackage.pd9;
import defpackage.tb5;
import defpackage.w92;
import defpackage.y45;
import defpackage.za3;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class s0 implements pd9, w92 {
    public final JsonParserComponent a;

    public s0(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivCountTemplate a(ex7 ex7Var, JSONObject jSONObject) {
        String strA;
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        za3 za3Var = ex7Var.a().get(strU);
        DivCountTemplate divCountTemplate = za3Var instanceof DivCountTemplate ? (DivCountTemplate) za3Var : null;
        if (divCountTemplate != null && (strA = divCountTemplate.a()) != null) {
            strU = strA;
        }
        if (y45.e(strU, "infinity")) {
            return new DivCountTemplate.c(((hl2) this.a.e4().getValue()).c(ex7Var, (DivInfinityCountTemplate) (divCountTemplate != null ? divCountTemplate.b() : null), jSONObject));
        }
        if (y45.e(strU, "fixed")) {
            return new DivCountTemplate.b(((f1.c) this.a.l3().getValue()).c(ex7Var, (DivFixedCountTemplate) (divCountTemplate != null ? divCountTemplate.b() : null), jSONObject));
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivCountTemplate divCountTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divCountTemplate, ES6Iterator.VALUE_PROPERTY);
        if (divCountTemplate instanceof DivCountTemplate.c) {
            return ((hl2) this.a.e4().getValue()).b(ex7Var, ((DivCountTemplate.c) divCountTemplate).c());
        }
        if (divCountTemplate instanceof DivCountTemplate.b) {
            return ((f1.c) this.a.l3().getValue()).b(ex7Var, ((DivCountTemplate.b) divCountTemplate).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
