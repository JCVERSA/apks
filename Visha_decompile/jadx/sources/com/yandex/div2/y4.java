package com.yandex.div2;

import defpackage.ex7;
import defpackage.kt2;
import defpackage.mx7;
import defpackage.nt2;
import defpackage.pd9;
import defpackage.tb5;
import defpackage.w92;
import defpackage.y45;
import defpackage.za3;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class y4 implements pd9, w92 {
    public final JsonParserComponent a;

    public y4(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivTooltipMode a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        if (y45.e(strU, "non_modal")) {
            return new DivTooltipMode.c(((nt2) this.a.S8().getValue()).a(ex7Var, jSONObject));
        }
        if (y45.e(strU, "modal")) {
            return new DivTooltipMode.b(((kt2) this.a.P8().getValue()).a(ex7Var, jSONObject));
        }
        za3 za3VarA = ex7Var.a().a(strU, jSONObject);
        DivTooltipModeTemplate divTooltipModeTemplate = za3VarA instanceof DivTooltipModeTemplate ? (DivTooltipModeTemplate) za3VarA : null;
        if (divTooltipModeTemplate != null) {
            return ((a5) this.a.O8().getValue()).a(ex7Var, divTooltipModeTemplate, jSONObject);
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivTooltipMode divTooltipMode) {
        y45.j(ex7Var, "context");
        y45.j(divTooltipMode, ES6Iterator.VALUE_PROPERTY);
        if (divTooltipMode instanceof DivTooltipMode.c) {
            return ((nt2) this.a.S8().getValue()).b(ex7Var, ((DivTooltipMode.c) divTooltipMode).c());
        }
        if (divTooltipMode instanceof DivTooltipMode.b) {
            return ((kt2) this.a.P8().getValue()).b(ex7Var, ((DivTooltipMode.b) divTooltipMode).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
