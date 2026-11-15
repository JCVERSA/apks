package com.yandex.div2;

import defpackage.ex7;
import defpackage.lga;
import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;

public final class o2 implements lga {
    public final JsonParserComponent a;

    public o2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivPageTransformation a(ex7 ex7Var, DivPageTransformationTemplate divPageTransformationTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divPageTransformationTemplate, "template");
        y45.j(jSONObject, "data");
        if (divPageTransformationTemplate instanceof DivPageTransformationTemplate.c) {
            return new DivPageTransformation.c(((DivPageTransformationSlideJsonParser.d) this.a.v5().getValue()).a(ex7Var, ((DivPageTransformationTemplate.c) divPageTransformationTemplate).c(), jSONObject));
        }
        if (divPageTransformationTemplate instanceof DivPageTransformationTemplate.b) {
            return new DivPageTransformation.b(((DivPageTransformationOverlapJsonParser.d) this.a.s5().getValue()).a(ex7Var, ((DivPageTransformationTemplate.b) divPageTransformationTemplate).c(), jSONObject));
        }
        throw new NoWhenBranchMatchedException();
    }
}
