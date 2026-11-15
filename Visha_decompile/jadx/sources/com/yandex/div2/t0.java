package com.yandex.div2;

import defpackage.ex7;
import defpackage.il2;
import defpackage.lga;
import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;

public final class t0 implements lga {
    public final JsonParserComponent a;

    public t0(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivCount a(ex7 ex7Var, DivCountTemplate divCountTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divCountTemplate, "template");
        y45.j(jSONObject, "data");
        if (divCountTemplate instanceof DivCountTemplate.c) {
            return new DivCount.c(((il2) this.a.f4().getValue()).a(ex7Var, ((DivCountTemplate.c) divCountTemplate).c(), jSONObject));
        }
        if (divCountTemplate instanceof DivCountTemplate.b) {
            return new DivCount.b(((f1.d) this.a.m3().getValue()).a(ex7Var, ((DivCountTemplate.b) divCountTemplate).c(), jSONObject));
        }
        throw new NoWhenBranchMatchedException();
    }
}
