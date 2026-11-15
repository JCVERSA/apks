package com.yandex.div2;

import defpackage.ex7;
import defpackage.lga;
import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;

public final class l4 implements lga {
    public final JsonParserComponent a;

    public l4(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivTextGradient a(ex7 ex7Var, DivTextGradientTemplate divTextGradientTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divTextGradientTemplate, "template");
        y45.j(jSONObject, "data");
        if (divTextGradientTemplate instanceof DivTextGradientTemplate.b) {
            return new DivTextGradient.b(((k2.d) this.a.U4().getValue()).a(ex7Var, ((DivTextGradientTemplate.b) divTextGradientTemplate).c(), jSONObject));
        }
        if (divTextGradientTemplate instanceof DivTextGradientTemplate.c) {
            return new DivTextGradient.c(((d3.d) this.a.k6().getValue()).a(ex7Var, ((DivTextGradientTemplate.c) divTextGradientTemplate).c(), jSONObject));
        }
        throw new NoWhenBranchMatchedException();
    }
}
