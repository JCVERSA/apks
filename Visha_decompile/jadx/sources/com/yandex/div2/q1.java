package com.yandex.div2;

import defpackage.ex7;
import defpackage.lga;
import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;

public final class q1 implements lga {
    public final JsonParserComponent a;

    public q1(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivIndicatorItemPlacement a(ex7 ex7Var, DivIndicatorItemPlacementTemplate divIndicatorItemPlacementTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divIndicatorItemPlacementTemplate, "template");
        y45.j(jSONObject, "data");
        if (divIndicatorItemPlacementTemplate instanceof DivIndicatorItemPlacementTemplate.b) {
            return new DivIndicatorItemPlacement.b(((x0.d) this.a.I2().getValue()).a(ex7Var, ((DivIndicatorItemPlacementTemplate.b) divIndicatorItemPlacementTemplate).c(), jSONObject));
        }
        if (divIndicatorItemPlacementTemplate instanceof DivIndicatorItemPlacementTemplate.c) {
            return new DivIndicatorItemPlacement.c(((y3.d) this.a.v7().getValue()).a(ex7Var, ((DivIndicatorItemPlacementTemplate.c) divIndicatorItemPlacementTemplate).c(), jSONObject));
        }
        throw new NoWhenBranchMatchedException();
    }
}
