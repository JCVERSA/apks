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

public final class v implements pd9, w92 {
    public final JsonParserComponent a;

    public v(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivAnimatorTemplate a(ex7 ex7Var, JSONObject jSONObject) {
        String strA;
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        za3 za3Var = ex7Var.a().get(strU);
        DivAnimatorTemplate divAnimatorTemplate = za3Var instanceof DivAnimatorTemplate ? (DivAnimatorTemplate) za3Var : null;
        if (divAnimatorTemplate != null && (strA = divAnimatorTemplate.a()) != null) {
            strU = strA;
        }
        if (y45.e(strU, "color_animator")) {
            return new DivAnimatorTemplate.a(((DivColorAnimatorJsonParser.c) this.a.h2().getValue()).c(ex7Var, (DivColorAnimatorTemplate) (divAnimatorTemplate != null ? divAnimatorTemplate.b() : null), jSONObject));
        }
        if (y45.e(strU, "number_animator")) {
            return new DivAnimatorTemplate.c(((DivNumberAnimatorJsonParser.c) this.a.f5().getValue()).c(ex7Var, (DivNumberAnimatorTemplate) (divAnimatorTemplate != null ? divAnimatorTemplate.b() : null), jSONObject));
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivAnimatorTemplate divAnimatorTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divAnimatorTemplate, ES6Iterator.VALUE_PROPERTY);
        if (divAnimatorTemplate instanceof DivAnimatorTemplate.a) {
            return ((DivColorAnimatorJsonParser.c) this.a.h2().getValue()).b(ex7Var, ((DivAnimatorTemplate.a) divAnimatorTemplate).c());
        }
        if (divAnimatorTemplate instanceof DivAnimatorTemplate.c) {
            return ((DivNumberAnimatorJsonParser.c) this.a.f5().getValue()).b(ex7Var, ((DivAnimatorTemplate.c) divAnimatorTemplate).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
