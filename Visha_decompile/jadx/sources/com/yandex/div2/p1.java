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

public final class p1 implements pd9, w92 {
    public final JsonParserComponent a;

    public p1(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivIndicatorItemPlacementTemplate a(ex7 ex7Var, JSONObject jSONObject) {
        String strA;
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        za3 za3Var = ex7Var.a().get(strU);
        DivIndicatorItemPlacementTemplate divIndicatorItemPlacementTemplate = za3Var instanceof DivIndicatorItemPlacementTemplate ? (DivIndicatorItemPlacementTemplate) za3Var : null;
        if (divIndicatorItemPlacementTemplate != null && (strA = divIndicatorItemPlacementTemplate.a()) != null) {
            strU = strA;
        }
        if (y45.e(strU, Schema.DEFAULT_NAME)) {
            return new DivIndicatorItemPlacementTemplate.b(((x0.c) this.a.H2().getValue()).c(ex7Var, (DivDefaultIndicatorItemPlacementTemplate) (divIndicatorItemPlacementTemplate != null ? divIndicatorItemPlacementTemplate.b() : null), jSONObject));
        }
        if (y45.e(strU, "stretch")) {
            return new DivIndicatorItemPlacementTemplate.c(((y3.c) this.a.u7().getValue()).c(ex7Var, (DivStretchIndicatorItemPlacementTemplate) (divIndicatorItemPlacementTemplate != null ? divIndicatorItemPlacementTemplate.b() : null), jSONObject));
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivIndicatorItemPlacementTemplate divIndicatorItemPlacementTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divIndicatorItemPlacementTemplate, ES6Iterator.VALUE_PROPERTY);
        if (divIndicatorItemPlacementTemplate instanceof DivIndicatorItemPlacementTemplate.b) {
            return ((x0.c) this.a.H2().getValue()).b(ex7Var, ((DivIndicatorItemPlacementTemplate.b) divIndicatorItemPlacementTemplate).c());
        }
        if (divIndicatorItemPlacementTemplate instanceof DivIndicatorItemPlacementTemplate.c) {
            return ((y3.c) this.a.u7().getValue()).b(ex7Var, ((DivIndicatorItemPlacementTemplate.c) divIndicatorItemPlacementTemplate).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
