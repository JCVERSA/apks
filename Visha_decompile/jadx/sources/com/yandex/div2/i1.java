package com.yandex.div2;

import defpackage.ex7;
import defpackage.pd9;
import defpackage.tb5;
import defpackage.w92;
import defpackage.y45;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class i1 implements pd9, w92 {
    public final JsonParserComponent a;

    public i1(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivFocus a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        return new DivFocus(tb5.r(ex7Var, jSONObject, "background", this.a.C1()), (DivBorder) tb5.n(ex7Var, jSONObject, "border", this.a.I1()), (DivFocus.NextFocusIds) tb5.n(ex7Var, jSONObject, "next_focus_ids", this.a.z3()), tb5.r(ex7Var, jSONObject, "on_blur", this.a.u0()), tb5.r(ex7Var, jSONObject, "on_focus", this.a.u0()));
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivFocus divFocus) {
        y45.j(ex7Var, "context");
        y45.j(divFocus, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.z(ex7Var, jSONObject, "background", divFocus.a, this.a.C1());
        tb5.x(ex7Var, jSONObject, "border", divFocus.b, this.a.I1());
        tb5.x(ex7Var, jSONObject, "next_focus_ids", divFocus.c, this.a.z3());
        tb5.z(ex7Var, jSONObject, "on_blur", divFocus.d, this.a.u0());
        tb5.z(ex7Var, jSONObject, "on_focus", divFocus.e, this.a.u0());
        return jSONObject;
    }
}
