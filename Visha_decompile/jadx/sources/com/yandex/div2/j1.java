package com.yandex.div2;

import defpackage.ex7;
import defpackage.lga;
import defpackage.sa5;
import defpackage.y45;
import org.json.JSONObject;

public final class j1 implements lga {
    public final JsonParserComponent a;

    public j1(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivFocus a(ex7 ex7Var, DivFocusTemplate divFocusTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divFocusTemplate, "template");
        y45.j(jSONObject, "data");
        return new DivFocus(sa5.B(ex7Var, divFocusTemplate.a, jSONObject, "background", this.a.E1(), this.a.C1()), (DivBorder) sa5.p(ex7Var, divFocusTemplate.b, jSONObject, "border", this.a.K1(), this.a.I1()), (DivFocus.NextFocusIds) sa5.p(ex7Var, divFocusTemplate.c, jSONObject, "next_focus_ids", this.a.B3(), this.a.z3()), sa5.B(ex7Var, divFocusTemplate.d, jSONObject, "on_blur", this.a.w0(), this.a.u0()), sa5.B(ex7Var, divFocusTemplate.e, jSONObject, "on_focus", this.a.w0(), this.a.u0()));
    }
}
