package com.yandex.div2;

import defpackage.ex7;
import defpackage.lga;
import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;

public final class g3 implements lga {
    public final JsonParserComponent a;

    public g3(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivRadialGradientRadius a(ex7 ex7Var, DivRadialGradientRadiusTemplate divRadialGradientRadiusTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divRadialGradientRadiusTemplate, "template");
        y45.j(jSONObject, "data");
        if (divRadialGradientRadiusTemplate instanceof DivRadialGradientRadiusTemplate.b) {
            return new DivRadialGradientRadius.b(((DivFixedSizeJsonParser.d) this.a.v3().getValue()).a(ex7Var, ((DivRadialGradientRadiusTemplate.b) divRadialGradientRadiusTemplate).c(), jSONObject));
        }
        if (divRadialGradientRadiusTemplate instanceof DivRadialGradientRadiusTemplate.c) {
            return new DivRadialGradientRadius.c(((DivRadialGradientRelativeRadiusJsonParser.d) this.a.t6().getValue()).a(ex7Var, ((DivRadialGradientRadiusTemplate.c) divRadialGradientRadiusTemplate).c(), jSONObject));
        }
        throw new NoWhenBranchMatchedException();
    }
}
