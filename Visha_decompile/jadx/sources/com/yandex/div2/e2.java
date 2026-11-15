package com.yandex.div2;

import defpackage.ex7;
import defpackage.lga;
import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;

public final class e2 implements lga {
    public final JsonParserComponent a;

    public e2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivInputValidator a(ex7 ex7Var, DivInputValidatorTemplate divInputValidatorTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divInputValidatorTemplate, "template");
        y45.j(jSONObject, "data");
        if (divInputValidatorTemplate instanceof DivInputValidatorTemplate.c) {
            return new DivInputValidator.c(((f2.d) this.a.I4().getValue()).a(ex7Var, ((DivInputValidatorTemplate.c) divInputValidatorTemplate).c(), jSONObject));
        }
        if (divInputValidatorTemplate instanceof DivInputValidatorTemplate.b) {
            return new DivInputValidator.b(((b2.d) this.a.C4().getValue()).a(ex7Var, ((DivInputValidatorTemplate.b) divInputValidatorTemplate).c(), jSONObject));
        }
        throw new NoWhenBranchMatchedException();
    }
}
