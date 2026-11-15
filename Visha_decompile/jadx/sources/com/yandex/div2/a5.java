package com.yandex.div2;

import defpackage.ex7;
import defpackage.lga;
import defpackage.mt2;
import defpackage.pt2;
import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;

public final class a5 implements lga {
    public final JsonParserComponent a;

    public a5(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivTooltipMode a(ex7 ex7Var, DivTooltipModeTemplate divTooltipModeTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divTooltipModeTemplate, "template");
        y45.j(jSONObject, "data");
        if (divTooltipModeTemplate instanceof DivTooltipModeTemplate.c) {
            return new DivTooltipMode.c(((pt2) this.a.U8().getValue()).a(ex7Var, ((DivTooltipModeTemplate.c) divTooltipModeTemplate).c(), jSONObject));
        }
        if (divTooltipModeTemplate instanceof DivTooltipModeTemplate.b) {
            return new DivTooltipMode.b(((mt2) this.a.R8().getValue()).a(ex7Var, ((DivTooltipModeTemplate.b) divTooltipModeTemplate).c(), jSONObject));
        }
        throw new NoWhenBranchMatchedException();
    }
}
