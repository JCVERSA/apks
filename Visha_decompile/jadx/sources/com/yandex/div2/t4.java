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

public final class t4 implements pd9, w92 {
    public final JsonParserComponent a;

    public t4(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivTextRangeMaskTemplate a(ex7 ex7Var, JSONObject jSONObject) {
        String strA;
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        za3 za3Var = ex7Var.a().get(strU);
        DivTextRangeMaskTemplate divTextRangeMaskTemplate = za3Var instanceof DivTextRangeMaskTemplate ? (DivTextRangeMaskTemplate) za3Var : null;
        if (divTextRangeMaskTemplate != null && (strA = divTextRangeMaskTemplate.a()) != null) {
            strU = strA;
        }
        if (y45.e(strU, "particles")) {
            return new DivTextRangeMaskTemplate.b(((v4.c) this.a.B8().getValue()).c(ex7Var, (DivTextRangeMaskParticlesTemplate) (divTextRangeMaskTemplate != null ? divTextRangeMaskTemplate.b() : null), jSONObject));
        }
        if (y45.e(strU, "solid")) {
            return new DivTextRangeMaskTemplate.c(((w4.c) this.a.E8().getValue()).c(ex7Var, (DivTextRangeMaskSolidTemplate) (divTextRangeMaskTemplate != null ? divTextRangeMaskTemplate.b() : null), jSONObject));
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivTextRangeMaskTemplate divTextRangeMaskTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divTextRangeMaskTemplate, ES6Iterator.VALUE_PROPERTY);
        if (divTextRangeMaskTemplate instanceof DivTextRangeMaskTemplate.b) {
            return ((v4.c) this.a.B8().getValue()).b(ex7Var, ((DivTextRangeMaskTemplate.b) divTextRangeMaskTemplate).c());
        }
        if (divTextRangeMaskTemplate instanceof DivTextRangeMaskTemplate.c) {
            return ((w4.c) this.a.E8().getValue()).b(ex7Var, ((DivTextRangeMaskTemplate.c) divTextRangeMaskTemplate).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
