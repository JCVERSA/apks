package com.yandex.div2;

import defpackage.ex7;
import defpackage.fj2;
import defpackage.lga;
import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;

public final class e1 implements lga {
    public final JsonParserComponent a;

    public e1(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivFilter a(ex7 ex7Var, DivFilterTemplate divFilterTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divFilterTemplate, "template");
        y45.j(jSONObject, "data");
        if (divFilterTemplate instanceof DivFilterTemplate.a) {
            return new DivFilter.a(((f0.d) this.a.H1().getValue()).a(ex7Var, ((DivFilterTemplate.a) divFilterTemplate).c(), jSONObject));
        }
        if (divFilterTemplate instanceof DivFilterTemplate.c) {
            return new DivFilter.c(((fj2) this.a.j3().getValue()).a(ex7Var, ((DivFilterTemplate.c) divFilterTemplate).c(), jSONObject));
        }
        throw new NoWhenBranchMatchedException();
    }
}
