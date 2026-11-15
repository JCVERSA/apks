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

public final class u implements pd9, w92 {
    public final JsonParserComponent a;

    public u(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivAnimator a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        if (y45.e(strU, "color_animator")) {
            return new DivAnimator.a(((DivColorAnimatorJsonParser.b) this.a.g2().getValue()).a(ex7Var, jSONObject));
        }
        if (y45.e(strU, "number_animator")) {
            return new DivAnimator.c(((DivNumberAnimatorJsonParser.b) this.a.e5().getValue()).a(ex7Var, jSONObject));
        }
        za3 za3VarA = ex7Var.a().a(strU, jSONObject);
        DivAnimatorTemplate divAnimatorTemplate = za3VarA instanceof DivAnimatorTemplate ? (DivAnimatorTemplate) za3VarA : null;
        if (divAnimatorTemplate != null) {
            return ((w) this.a.s1().getValue()).a(ex7Var, divAnimatorTemplate, jSONObject);
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivAnimator divAnimator) {
        y45.j(ex7Var, "context");
        y45.j(divAnimator, ES6Iterator.VALUE_PROPERTY);
        if (divAnimator instanceof DivAnimator.a) {
            return ((DivColorAnimatorJsonParser.b) this.a.g2().getValue()).b(ex7Var, ((DivAnimator.a) divAnimator).c());
        }
        if (divAnimator instanceof DivAnimator.c) {
            return ((DivNumberAnimatorJsonParser.b) this.a.e5().getValue()).b(ex7Var, ((DivAnimator.c) divAnimator).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
