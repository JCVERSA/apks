package com.yandex.div2;

import defpackage.ex7;
import defpackage.ko2;
import defpackage.lga;
import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;

public final class y2 implements lga {
    public final JsonParserComponent a;

    public y2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivPivot a(ex7 ex7Var, DivPivotTemplate divPivotTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divPivotTemplate, "template");
        y45.j(jSONObject, "data");
        if (divPivotTemplate instanceof DivPivotTemplate.b) {
            return new DivPivot.b(((DivPivotFixedJsonParser.d) this.a.P5().getValue()).a(ex7Var, ((DivPivotTemplate.b) divPivotTemplate).c(), jSONObject));
        }
        if (divPivotTemplate instanceof DivPivotTemplate.c) {
            return new DivPivot.c(((ko2) this.a.V5().getValue()).a(ex7Var, ((DivPivotTemplate.c) divPivotTemplate).c(), jSONObject));
        }
        throw new NoWhenBranchMatchedException();
    }
}
