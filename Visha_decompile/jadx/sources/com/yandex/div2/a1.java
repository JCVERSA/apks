package com.yandex.div2;

import defpackage.ex7;
import defpackage.mx7;
import defpackage.pd9;
import defpackage.tb5;
import defpackage.up2;
import defpackage.w92;
import defpackage.y45;
import defpackage.za3;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class a1 implements pd9, w92 {
    public final JsonParserComponent a;

    public a1(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivDrawableTemplate a(ex7 ex7Var, JSONObject jSONObject) {
        String strA;
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        za3 za3Var = ex7Var.a().get(strU);
        DivDrawableTemplate divDrawableTemplate = za3Var instanceof DivDrawableTemplate ? (DivDrawableTemplate) za3Var : null;
        if (divDrawableTemplate != null && (strA = divDrawableTemplate.a()) != null) {
            strU = strA;
        }
        if (y45.e(strU, "shape_drawable")) {
            return new DivDrawableTemplate.b(((up2) this.a.Q6().getValue()).c(ex7Var, (DivShapeDrawableTemplate) (divDrawableTemplate != null ? divDrawableTemplate.b() : null), jSONObject));
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivDrawableTemplate divDrawableTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divDrawableTemplate, ES6Iterator.VALUE_PROPERTY);
        if (divDrawableTemplate instanceof DivDrawableTemplate.b) {
            return ((up2) this.a.Q6().getValue()).b(ex7Var, ((DivDrawableTemplate.b) divDrawableTemplate).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
