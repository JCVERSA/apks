package com.yandex.div2;

import defpackage.ex7;
import defpackage.lt2;
import defpackage.mx7;
import defpackage.ot2;
import defpackage.pd9;
import defpackage.tb5;
import defpackage.w92;
import defpackage.y45;
import defpackage.za3;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class z4 implements pd9, w92 {
    public final JsonParserComponent a;

    public z4(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivTooltipModeTemplate a(ex7 ex7Var, JSONObject jSONObject) {
        String strA;
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        za3 za3Var = ex7Var.a().get(strU);
        DivTooltipModeTemplate divTooltipModeTemplate = za3Var instanceof DivTooltipModeTemplate ? (DivTooltipModeTemplate) za3Var : null;
        if (divTooltipModeTemplate != null && (strA = divTooltipModeTemplate.a()) != null) {
            strU = strA;
        }
        if (y45.e(strU, "non_modal")) {
            return new DivTooltipModeTemplate.c(((ot2) this.a.T8().getValue()).c(ex7Var, (DivTooltipModeNonModalTemplate) (divTooltipModeTemplate != null ? divTooltipModeTemplate.b() : null), jSONObject));
        }
        if (y45.e(strU, "modal")) {
            return new DivTooltipModeTemplate.b(((lt2) this.a.Q8().getValue()).c(ex7Var, (DivTooltipModeModalTemplate) (divTooltipModeTemplate != null ? divTooltipModeTemplate.b() : null), jSONObject));
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivTooltipModeTemplate divTooltipModeTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divTooltipModeTemplate, ES6Iterator.VALUE_PROPERTY);
        if (divTooltipModeTemplate instanceof DivTooltipModeTemplate.c) {
            return ((ot2) this.a.T8().getValue()).b(ex7Var, ((DivTooltipModeTemplate.c) divTooltipModeTemplate).c());
        }
        if (divTooltipModeTemplate instanceof DivTooltipModeTemplate.b) {
            return ((lt2) this.a.Q8().getValue()).b(ex7Var, ((DivTooltipModeTemplate.b) divTooltipModeTemplate).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
