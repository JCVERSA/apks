package com.yandex.div2;

import defpackage.ex7;
import defpackage.lga;
import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;

public final class w implements lga {
    public final JsonParserComponent a;

    public w(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivAnimator a(ex7 ex7Var, DivAnimatorTemplate divAnimatorTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divAnimatorTemplate, "template");
        y45.j(jSONObject, "data");
        if (divAnimatorTemplate instanceof DivAnimatorTemplate.a) {
            return new DivAnimator.a(((DivColorAnimatorJsonParser.d) this.a.i2().getValue()).a(ex7Var, ((DivAnimatorTemplate.a) divAnimatorTemplate).c(), jSONObject));
        }
        if (divAnimatorTemplate instanceof DivAnimatorTemplate.c) {
            return new DivAnimator.c(((DivNumberAnimatorJsonParser.d) this.a.g5().getValue()).a(ex7Var, ((DivAnimatorTemplate.c) divAnimatorTemplate).c(), jSONObject));
        }
        throw new NoWhenBranchMatchedException();
    }
}
