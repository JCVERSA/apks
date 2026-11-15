package com.yandex.div2;

import defpackage.ex7;
import defpackage.mx7;
import defpackage.pd9;
import defpackage.tb5;
import defpackage.tp2;
import defpackage.w92;
import defpackage.y45;
import defpackage.za3;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class z0 implements pd9, w92 {
    public final JsonParserComponent a;

    public z0(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivDrawable a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        if (y45.e(strU, "shape_drawable")) {
            return new DivDrawable.b(((tp2) this.a.P6().getValue()).a(ex7Var, jSONObject));
        }
        za3 za3VarA = ex7Var.a().a(strU, jSONObject);
        DivDrawableTemplate divDrawableTemplate = za3VarA instanceof DivDrawableTemplate ? (DivDrawableTemplate) za3VarA : null;
        if (divDrawableTemplate != null) {
            return ((b1) this.a.U2().getValue()).a(ex7Var, divDrawableTemplate, jSONObject);
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivDrawable divDrawable) {
        y45.j(ex7Var, "context");
        y45.j(divDrawable, ES6Iterator.VALUE_PROPERTY);
        if (divDrawable instanceof DivDrawable.b) {
            return ((tp2) this.a.P6().getValue()).b(ex7Var, ((DivDrawable.b) divDrawable).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
