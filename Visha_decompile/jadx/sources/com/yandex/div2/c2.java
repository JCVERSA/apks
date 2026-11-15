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

public final class c2 implements pd9, w92 {
    public final JsonParserComponent a;

    public c2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivInputValidator a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        if (y45.e(strU, "regex")) {
            return new DivInputValidator.c(((f2.b) this.a.G4().getValue()).a(ex7Var, jSONObject));
        }
        if (y45.e(strU, "expression")) {
            return new DivInputValidator.b(((b2.b) this.a.A4().getValue()).a(ex7Var, jSONObject));
        }
        za3 za3VarA = ex7Var.a().a(strU, jSONObject);
        DivInputValidatorTemplate divInputValidatorTemplate = za3VarA instanceof DivInputValidatorTemplate ? (DivInputValidatorTemplate) za3VarA : null;
        if (divInputValidatorTemplate != null) {
            return ((e2) this.a.F4().getValue()).a(ex7Var, divInputValidatorTemplate, jSONObject);
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivInputValidator divInputValidator) {
        y45.j(ex7Var, "context");
        y45.j(divInputValidator, ES6Iterator.VALUE_PROPERTY);
        if (divInputValidator instanceof DivInputValidator.c) {
            return ((f2.b) this.a.G4().getValue()).b(ex7Var, ((DivInputValidator.c) divInputValidator).c());
        }
        if (divInputValidator instanceof DivInputValidator.b) {
            return ((b2.b) this.a.A4().getValue()).b(ex7Var, ((DivInputValidator.b) divInputValidator).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
