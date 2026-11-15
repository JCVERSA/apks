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

public final class j0 implements pd9, w92 {
    public final JsonParserComponent a;

    public j0(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivChangeTransitionTemplate a(ex7 ex7Var, JSONObject jSONObject) {
        String strA;
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        za3 za3Var = ex7Var.a().get(strU);
        DivChangeTransitionTemplate divChangeTransitionTemplate = za3Var instanceof DivChangeTransitionTemplate ? (DivChangeTransitionTemplate) za3Var : null;
        if (divChangeTransitionTemplate != null && (strA = divChangeTransitionTemplate.a()) != null) {
            strU = strA;
        }
        if (y45.e(strU, "set")) {
            return new DivChangeTransitionTemplate.c(((h0.c) this.a.P1().getValue()).c(ex7Var, (DivChangeSetTransitionTemplate) (divChangeTransitionTemplate != null ? divChangeTransitionTemplate.b() : null), jSONObject));
        }
        if (y45.e(strU, "change_bounds")) {
            return new DivChangeTransitionTemplate.a(((DivChangeBoundsTransitionJsonParser.c) this.a.M1().getValue()).c(ex7Var, (DivChangeBoundsTransitionTemplate) (divChangeTransitionTemplate != null ? divChangeTransitionTemplate.b() : null), jSONObject));
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivChangeTransitionTemplate divChangeTransitionTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divChangeTransitionTemplate, ES6Iterator.VALUE_PROPERTY);
        if (divChangeTransitionTemplate instanceof DivChangeTransitionTemplate.c) {
            return ((h0.c) this.a.P1().getValue()).b(ex7Var, ((DivChangeTransitionTemplate.c) divChangeTransitionTemplate).c());
        }
        if (divChangeTransitionTemplate instanceof DivChangeTransitionTemplate.a) {
            return ((DivChangeBoundsTransitionJsonParser.c) this.a.M1().getValue()).b(ex7Var, ((DivChangeTransitionTemplate.a) divChangeTransitionTemplate).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
