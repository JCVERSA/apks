package com.yandex.div2;

import defpackage.ex7;
import defpackage.kl2;
import defpackage.mx7;
import defpackage.nl2;
import defpackage.pd9;
import defpackage.tb5;
import defpackage.w92;
import defpackage.y45;
import defpackage.za3;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class s1 implements pd9, w92 {
    public final JsonParserComponent a;

    public s1(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivInputFilterTemplate a(ex7 ex7Var, JSONObject jSONObject) {
        String strA;
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        za3 za3Var = ex7Var.a().get(strU);
        DivInputFilterTemplate divInputFilterTemplate = za3Var instanceof DivInputFilterTemplate ? (DivInputFilterTemplate) za3Var : null;
        if (divInputFilterTemplate != null && (strA = divInputFilterTemplate.a()) != null) {
            strU = strA;
        }
        if (y45.e(strU, "regex")) {
            return new DivInputFilterTemplate.c(((nl2) this.a.n4().getValue()).c(ex7Var, (DivInputFilterRegexTemplate) (divInputFilterTemplate != null ? divInputFilterTemplate.b() : null), jSONObject));
        }
        if (y45.e(strU, "expression")) {
            return new DivInputFilterTemplate.b(((kl2) this.a.h4().getValue()).c(ex7Var, (DivInputFilterExpressionTemplate) (divInputFilterTemplate != null ? divInputFilterTemplate.b() : null), jSONObject));
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivInputFilterTemplate divInputFilterTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divInputFilterTemplate, ES6Iterator.VALUE_PROPERTY);
        if (divInputFilterTemplate instanceof DivInputFilterTemplate.c) {
            return ((nl2) this.a.n4().getValue()).b(ex7Var, ((DivInputFilterTemplate.c) divInputFilterTemplate).c());
        }
        if (divInputFilterTemplate instanceof DivInputFilterTemplate.b) {
            return ((kl2) this.a.h4().getValue()).b(ex7Var, ((DivInputFilterTemplate.b) divInputFilterTemplate).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
