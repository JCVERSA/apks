package com.yandex.div2;

import defpackage.ex7;
import defpackage.io2;
import defpackage.mx7;
import defpackage.pd9;
import defpackage.tb5;
import defpackage.w92;
import defpackage.y45;
import defpackage.za3;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class w2 implements pd9, w92 {
    public final JsonParserComponent a;

    public w2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivPivot a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strT = tb5.t(ex7Var, jSONObject, "type");
        if (strT == null) {
            strT = "pivot-fixed";
        }
        if (y45.e(strT, "pivot-fixed")) {
            return new DivPivot.b(((DivPivotFixedJsonParser.b) this.a.N5().getValue()).a(ex7Var, jSONObject));
        }
        if (y45.e(strT, "pivot-percentage")) {
            return new DivPivot.c(((io2) this.a.T5().getValue()).a(ex7Var, jSONObject));
        }
        za3 za3VarA = ex7Var.a().a(strT, jSONObject);
        DivPivotTemplate divPivotTemplate = za3VarA instanceof DivPivotTemplate ? (DivPivotTemplate) za3VarA : null;
        if (divPivotTemplate != null) {
            return ((y2) this.a.S5().getValue()).a(ex7Var, divPivotTemplate, jSONObject);
        }
        throw mx7.x(jSONObject, "type", strT);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivPivot divPivot) {
        y45.j(ex7Var, "context");
        y45.j(divPivot, ES6Iterator.VALUE_PROPERTY);
        if (divPivot instanceof DivPivot.b) {
            return ((DivPivotFixedJsonParser.b) this.a.N5().getValue()).b(ex7Var, ((DivPivot.b) divPivot).c());
        }
        if (divPivot instanceof DivPivot.c) {
            return ((io2) this.a.T5().getValue()).b(ex7Var, ((DivPivot.c) divPivot).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
