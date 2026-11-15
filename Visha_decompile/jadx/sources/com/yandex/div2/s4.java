package com.yandex.div2;

import defpackage.ex7;
import defpackage.mx7;
import defpackage.pd9;
import defpackage.tb5;
import defpackage.w92;
import defpackage.y45;
import defpackage.za3;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class s4 implements pd9, w92 {
    public final JsonParserComponent a;

    public s4(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivTextRangeMask a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        if (y45.e(strU, "particles")) {
            return new DivTextRangeMask.b(((v4.b) this.a.A8().getValue()).a(ex7Var, jSONObject));
        }
        if (y45.e(strU, "solid")) {
            return new DivTextRangeMask.c(((w4.b) this.a.D8().getValue()).a(ex7Var, jSONObject));
        }
        za3 za3VarA = ex7Var.a().a(strU, jSONObject);
        DivTextRangeMaskTemplate divTextRangeMaskTemplate = za3VarA instanceof DivTextRangeMaskTemplate ? (DivTextRangeMaskTemplate) za3VarA : null;
        if (divTextRangeMaskTemplate != null) {
            return ((u4) this.a.z8().getValue()).a(ex7Var, divTextRangeMaskTemplate, jSONObject);
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivTextRangeMask divTextRangeMask) {
        y45.j(ex7Var, "context");
        y45.j(divTextRangeMask, ES6Iterator.VALUE_PROPERTY);
        if (divTextRangeMask instanceof DivTextRangeMask.b) {
            return ((v4.b) this.a.A8().getValue()).b(ex7Var, ((DivTextRangeMask.b) divTextRangeMask).c());
        }
        if (divTextRangeMask instanceof DivTextRangeMask.c) {
            return ((w4.b) this.a.D8().getValue()).b(ex7Var, ((DivTextRangeMask.c) divTextRangeMask).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
