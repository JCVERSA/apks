package com.yandex.div2;

import defpackage.ex7;
import defpackage.jq2;
import defpackage.lga;
import defpackage.wm2;
import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;

public final class e0 implements lga {
    public final JsonParserComponent a;

    public e0(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivBackground a(ex7 ex7Var, DivBackgroundTemplate divBackgroundTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divBackgroundTemplate, "template");
        y45.j(jSONObject, "data");
        if (divBackgroundTemplate instanceof DivBackgroundTemplate.c) {
            return new DivBackground.c(((k2.d) this.a.U4().getValue()).a(ex7Var, ((DivBackgroundTemplate.c) divBackgroundTemplate).c(), jSONObject));
        }
        if (divBackgroundTemplate instanceof DivBackgroundTemplate.e) {
            return new DivBackground.e(((d3.d) this.a.k6().getValue()).a(ex7Var, ((DivBackgroundTemplate.e) divBackgroundTemplate).c(), jSONObject));
        }
        if (divBackgroundTemplate instanceof DivBackgroundTemplate.b) {
            return new DivBackground.b(((DivImageBackgroundJsonParser.d) this.a.T3().getValue()).a(ex7Var, ((DivBackgroundTemplate.b) divBackgroundTemplate).c(), jSONObject));
        }
        if (divBackgroundTemplate instanceof DivBackgroundTemplate.f) {
            return new DivBackground.f(((jq2) this.a.m7().getValue()).a(ex7Var, ((DivBackgroundTemplate.f) divBackgroundTemplate).c(), jSONObject));
        }
        if (divBackgroundTemplate instanceof DivBackgroundTemplate.d) {
            return new DivBackground.d(((wm2) this.a.d5().getValue()).a(ex7Var, ((DivBackgroundTemplate.d) divBackgroundTemplate).c(), jSONObject));
        }
        throw new NoWhenBranchMatchedException();
    }
}
