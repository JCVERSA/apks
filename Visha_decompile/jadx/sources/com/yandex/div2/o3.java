package com.yandex.div2;

import defpackage.ex7;
import defpackage.lga;
import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;

public final class o3 implements lga {
    public final JsonParserComponent a;

    public o3(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivShape a(ex7 ex7Var, DivShapeTemplate divShapeTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divShapeTemplate, "template");
        y45.j(jSONObject, "data");
        if (divShapeTemplate instanceof DivShapeTemplate.c) {
            return new DivShape.c(((h3.d) this.a.w6().getValue()).a(ex7Var, ((DivShapeTemplate.c) divShapeTemplate).c(), jSONObject));
        }
        if (divShapeTemplate instanceof DivShapeTemplate.a) {
            return new DivShape.a(((l0.d) this.a.W1().getValue()).a(ex7Var, ((DivShapeTemplate.a) divShapeTemplate).c(), jSONObject));
        }
        throw new NoWhenBranchMatchedException();
    }
}
