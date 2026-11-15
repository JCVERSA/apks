package com.yandex.div2;

import defpackage.ex7;
import defpackage.lga;
import defpackage.xo2;
import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;

public final class b3 implements lga {
    public final JsonParserComponent a;

    public b3(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivRadialGradientCenter a(ex7 ex7Var, DivRadialGradientCenterTemplate divRadialGradientCenterTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divRadialGradientCenterTemplate, "template");
        y45.j(jSONObject, "data");
        if (divRadialGradientCenterTemplate instanceof DivRadialGradientCenterTemplate.b) {
            return new DivRadialGradientCenter.b(((DivRadialGradientFixedCenterJsonParser.d) this.a.h6().getValue()).a(ex7Var, ((DivRadialGradientCenterTemplate.b) divRadialGradientCenterTemplate).c(), jSONObject));
        }
        if (divRadialGradientCenterTemplate instanceof DivRadialGradientCenterTemplate.c) {
            return new DivRadialGradientCenter.c(((xo2) this.a.q6().getValue()).a(ex7Var, ((DivRadialGradientCenterTemplate.c) divRadialGradientCenterTemplate).c(), jSONObject));
        }
        throw new NoWhenBranchMatchedException();
    }
}
