package com.yandex.div2;

import defpackage.ex7;
import defpackage.jo2;
import defpackage.mx7;
import defpackage.pd9;
import defpackage.tb5;
import defpackage.w92;
import defpackage.y45;
import defpackage.za3;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class x2 implements pd9, w92 {
    public final JsonParserComponent a;

    public x2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivPivotTemplate a(ex7 ex7Var, JSONObject jSONObject) {
        String strA;
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strT = tb5.t(ex7Var, jSONObject, "type");
        if (strT == null) {
            strT = "pivot-fixed";
        }
        za3 za3Var = ex7Var.a().get(strT);
        DivPivotTemplate divPivotTemplate = za3Var instanceof DivPivotTemplate ? (DivPivotTemplate) za3Var : null;
        if (divPivotTemplate != null && (strA = divPivotTemplate.a()) != null) {
            strT = strA;
        }
        if (y45.e(strT, "pivot-fixed")) {
            return new DivPivotTemplate.b(((DivPivotFixedJsonParser.c) this.a.O5().getValue()).c(ex7Var, (DivPivotFixedTemplate) (divPivotTemplate != null ? divPivotTemplate.b() : null), jSONObject));
        }
        if (y45.e(strT, "pivot-percentage")) {
            return new DivPivotTemplate.c(((jo2) this.a.U5().getValue()).c(ex7Var, (DivPivotPercentageTemplate) (divPivotTemplate != null ? divPivotTemplate.b() : null), jSONObject));
        }
        throw mx7.x(jSONObject, "type", strT);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivPivotTemplate divPivotTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divPivotTemplate, ES6Iterator.VALUE_PROPERTY);
        if (divPivotTemplate instanceof DivPivotTemplate.b) {
            return ((DivPivotFixedJsonParser.c) this.a.O5().getValue()).b(ex7Var, ((DivPivotTemplate.b) divPivotTemplate).c());
        }
        if (divPivotTemplate instanceof DivPivotTemplate.c) {
            return ((jo2) this.a.U5().getValue()).b(ex7Var, ((DivPivotTemplate.c) divPivotTemplate).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
