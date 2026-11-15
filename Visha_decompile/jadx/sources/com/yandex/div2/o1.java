package com.yandex.div2;

import defpackage.ex7;
import defpackage.mx7;
import defpackage.pd9;
import defpackage.tb5;
import defpackage.w92;
import defpackage.y45;
import defpackage.za3;
import kotlin.NoWhenBranchMatchedException;
import org.greenrobot.greendao.generator.Schema;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class o1 implements pd9, w92 {
    public final JsonParserComponent a;

    public o1(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivIndicatorItemPlacement a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        if (y45.e(strU, Schema.DEFAULT_NAME)) {
            return new DivIndicatorItemPlacement.b(((x0.b) this.a.G2().getValue()).a(ex7Var, jSONObject));
        }
        if (y45.e(strU, "stretch")) {
            return new DivIndicatorItemPlacement.c(((y3.b) this.a.t7().getValue()).a(ex7Var, jSONObject));
        }
        za3 za3VarA = ex7Var.a().a(strU, jSONObject);
        DivIndicatorItemPlacementTemplate divIndicatorItemPlacementTemplate = za3VarA instanceof DivIndicatorItemPlacementTemplate ? (DivIndicatorItemPlacementTemplate) za3VarA : null;
        if (divIndicatorItemPlacementTemplate != null) {
            return ((q1) this.a.Z3().getValue()).a(ex7Var, divIndicatorItemPlacementTemplate, jSONObject);
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivIndicatorItemPlacement divIndicatorItemPlacement) {
        y45.j(ex7Var, "context");
        y45.j(divIndicatorItemPlacement, ES6Iterator.VALUE_PROPERTY);
        if (divIndicatorItemPlacement instanceof DivIndicatorItemPlacement.b) {
            return ((x0.b) this.a.G2().getValue()).b(ex7Var, ((DivIndicatorItemPlacement.b) divIndicatorItemPlacement).c());
        }
        if (divIndicatorItemPlacement instanceof DivIndicatorItemPlacement.c) {
            return ((y3.b) this.a.t7().getValue()).b(ex7Var, ((DivIndicatorItemPlacement.c) divIndicatorItemPlacement).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
