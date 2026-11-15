package com.yandex.div2;

import defpackage.b35;
import defpackage.bi;
import defpackage.ex7;
import defpackage.i47;
import defpackage.kjb;
import defpackage.lga;
import defpackage.ly9;
import defpackage.rb2;
import defpackage.th0;
import defpackage.x91;
import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;

public final class h5 implements lga {
    public final JsonParserComponent a;

    public h5(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivVariable a(ex7 ex7Var, DivVariableTemplate divVariableTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divVariableTemplate, "template");
        y45.j(jSONObject, "data");
        if (divVariableTemplate instanceof DivVariableTemplate.h) {
            return new DivVariable.h(((ly9) this.a.ca().getValue()).a(ex7Var, ((DivVariableTemplate.h) divVariableTemplate).c(), jSONObject));
        }
        if (divVariableTemplate instanceof DivVariableTemplate.g) {
            return new DivVariable.g(((i47) this.a.Q9().getValue()).a(ex7Var, ((DivVariableTemplate.g) divVariableTemplate).c(), jSONObject));
        }
        if (divVariableTemplate instanceof DivVariableTemplate.f) {
            return new DivVariable.f(((b35) this.a.K9().getValue()).a(ex7Var, ((DivVariableTemplate.f) divVariableTemplate).c(), jSONObject));
        }
        if (divVariableTemplate instanceof DivVariableTemplate.b) {
            return new DivVariable.b(((th0) this.a.l().getValue()).a(ex7Var, ((DivVariableTemplate.b) divVariableTemplate).c(), jSONObject));
        }
        if (divVariableTemplate instanceof DivVariableTemplate.c) {
            return new DivVariable.c(((x91) this.a.r().getValue()).a(ex7Var, ((DivVariableTemplate.c) divVariableTemplate).c(), jSONObject));
        }
        if (divVariableTemplate instanceof DivVariableTemplate.i) {
            return new DivVariable.i(((kjb) this.a.ia().getValue()).a(ex7Var, ((DivVariableTemplate.i) divVariableTemplate).c(), jSONObject));
        }
        if (divVariableTemplate instanceof DivVariableTemplate.e) {
            return new DivVariable.e(((rb2) this.a.D().getValue()).a(ex7Var, ((DivVariableTemplate.e) divVariableTemplate).c(), jSONObject));
        }
        if (divVariableTemplate instanceof DivVariableTemplate.a) {
            return new DivVariable.a(((bi) this.a.f().getValue()).a(ex7Var, ((DivVariableTemplate.a) divVariableTemplate).c(), jSONObject));
        }
        throw new NoWhenBranchMatchedException();
    }
}
