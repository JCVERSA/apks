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

public final class d2 implements pd9, w92 {
    public final JsonParserComponent a;

    public d2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivInputValidatorTemplate a(ex7 ex7Var, JSONObject jSONObject) {
        String strA;
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        za3 za3Var = ex7Var.a().get(strU);
        DivInputValidatorTemplate divInputValidatorTemplate = za3Var instanceof DivInputValidatorTemplate ? (DivInputValidatorTemplate) za3Var : null;
        if (divInputValidatorTemplate != null && (strA = divInputValidatorTemplate.a()) != null) {
            strU = strA;
        }
        if (y45.e(strU, "regex")) {
            return new DivInputValidatorTemplate.c(((f2.c) this.a.H4().getValue()).c(ex7Var, (DivInputValidatorRegexTemplate) (divInputValidatorTemplate != null ? divInputValidatorTemplate.b() : null), jSONObject));
        }
        if (y45.e(strU, "expression")) {
            return new DivInputValidatorTemplate.b(((b2.c) this.a.B4().getValue()).c(ex7Var, (DivInputValidatorExpressionTemplate) (divInputValidatorTemplate != null ? divInputValidatorTemplate.b() : null), jSONObject));
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivInputValidatorTemplate divInputValidatorTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divInputValidatorTemplate, ES6Iterator.VALUE_PROPERTY);
        if (divInputValidatorTemplate instanceof DivInputValidatorTemplate.c) {
            return ((f2.c) this.a.H4().getValue()).b(ex7Var, ((DivInputValidatorTemplate.c) divInputValidatorTemplate).c());
        }
        if (divInputValidatorTemplate instanceof DivInputValidatorTemplate.b) {
            return ((b2.c) this.a.B4().getValue()).b(ex7Var, ((DivInputValidatorTemplate.b) divInputValidatorTemplate).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
