package com.yandex.div2;

import defpackage.ex7;
import defpackage.hb0;
import defpackage.iq2;
import defpackage.mx7;
import defpackage.pd9;
import defpackage.tb5;
import defpackage.w92;
import defpackage.y45;
import defpackage.za3;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class o4 implements pd9, w92 {
    public final JsonParserComponent a;

    public o4(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivTextRangeBackgroundTemplate a(ex7 ex7Var, JSONObject jSONObject) {
        String strA;
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        za3 za3Var = ex7Var.a().get(strU);
        DivTextRangeBackgroundTemplate divTextRangeBackgroundTemplate = za3Var instanceof DivTextRangeBackgroundTemplate ? (DivTextRangeBackgroundTemplate) za3Var : null;
        if (divTextRangeBackgroundTemplate != null && (strA = divTextRangeBackgroundTemplate.a()) != null) {
            strU = strA;
        }
        if (y45.e(strU, "solid")) {
            return new DivTextRangeBackgroundTemplate.c(((iq2) this.a.l7().getValue()).c(ex7Var, (DivSolidBackgroundTemplate) (divTextRangeBackgroundTemplate != null ? divTextRangeBackgroundTemplate.b() : null), jSONObject));
        }
        if (y45.e(strU, hb0.CLOUD)) {
            return new DivTextRangeBackgroundTemplate.a(((m0.c) this.a.Y1().getValue()).c(ex7Var, (DivCloudBackgroundTemplate) (divTextRangeBackgroundTemplate != null ? divTextRangeBackgroundTemplate.b() : null), jSONObject));
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivTextRangeBackgroundTemplate divTextRangeBackgroundTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divTextRangeBackgroundTemplate, ES6Iterator.VALUE_PROPERTY);
        if (divTextRangeBackgroundTemplate instanceof DivTextRangeBackgroundTemplate.c) {
            return ((iq2) this.a.l7().getValue()).b(ex7Var, ((DivTextRangeBackgroundTemplate.c) divTextRangeBackgroundTemplate).c());
        }
        if (divTextRangeBackgroundTemplate instanceof DivTextRangeBackgroundTemplate.a) {
            return ((m0.c) this.a.Y1().getValue()).b(ex7Var, ((DivTextRangeBackgroundTemplate.a) divTextRangeBackgroundTemplate).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
