package com.yandex.div2;

import defpackage.ex7;
import defpackage.lga;
import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;

public final class k0 implements lga {
    public final JsonParserComponent a;

    public k0(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivChangeTransition a(ex7 ex7Var, DivChangeTransitionTemplate divChangeTransitionTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divChangeTransitionTemplate, "template");
        y45.j(jSONObject, "data");
        if (divChangeTransitionTemplate instanceof DivChangeTransitionTemplate.c) {
            return new DivChangeTransition.c(((h0.d) this.a.Q1().getValue()).a(ex7Var, ((DivChangeTransitionTemplate.c) divChangeTransitionTemplate).c(), jSONObject));
        }
        if (divChangeTransitionTemplate instanceof DivChangeTransitionTemplate.a) {
            return new DivChangeTransition.a(((DivChangeBoundsTransitionJsonParser.d) this.a.N1().getValue()).a(ex7Var, ((DivChangeTransitionTemplate.a) divChangeTransitionTemplate).c(), jSONObject));
        }
        throw new NoWhenBranchMatchedException();
    }
}
