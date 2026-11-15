package com.yandex.div2;

import defpackage.ex7;
import defpackage.hb0;
import defpackage.hq2;
import defpackage.mx7;
import defpackage.pd9;
import defpackage.tb5;
import defpackage.w92;
import defpackage.y45;
import defpackage.za3;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class n4 implements pd9, w92 {
    public final JsonParserComponent a;

    public n4(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivTextRangeBackground a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        if (y45.e(strU, "solid")) {
            return new DivTextRangeBackground.c(((hq2) this.a.k7().getValue()).a(ex7Var, jSONObject));
        }
        if (y45.e(strU, hb0.CLOUD)) {
            return new DivTextRangeBackground.a(((m0.b) this.a.X1().getValue()).a(ex7Var, jSONObject));
        }
        za3 za3VarA = ex7Var.a().a(strU, jSONObject);
        DivTextRangeBackgroundTemplate divTextRangeBackgroundTemplate = za3VarA instanceof DivTextRangeBackgroundTemplate ? (DivTextRangeBackgroundTemplate) za3VarA : null;
        if (divTextRangeBackgroundTemplate != null) {
            return ((p4) this.a.o8().getValue()).a(ex7Var, divTextRangeBackgroundTemplate, jSONObject);
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivTextRangeBackground divTextRangeBackground) {
        y45.j(ex7Var, "context");
        y45.j(divTextRangeBackground, ES6Iterator.VALUE_PROPERTY);
        if (divTextRangeBackground instanceof DivTextRangeBackground.c) {
            return ((hq2) this.a.k7().getValue()).b(ex7Var, ((DivTextRangeBackground.c) divTextRangeBackground).c());
        }
        if (divTextRangeBackground instanceof DivTextRangeBackground.a) {
            return ((m0.b) this.a.X1().getValue()).b(ex7Var, ((DivTextRangeBackground.a) divTextRangeBackground).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
