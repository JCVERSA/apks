package com.yandex.div2;

import defpackage.e47;
import defpackage.ex7;
import defpackage.hjb;
import defpackage.iy9;
import defpackage.lga;
import defpackage.ob2;
import defpackage.qh0;
import defpackage.u91;
import defpackage.x25;
import defpackage.y45;
import defpackage.yh;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;

public final class e5 implements lga {
    public final JsonParserComponent a;

    public e5(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivTypedValue a(ex7 ex7Var, DivTypedValueTemplate divTypedValueTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divTypedValueTemplate, "template");
        y45.j(jSONObject, "data");
        if (divTypedValueTemplate instanceof DivTypedValueTemplate.h) {
            return new DivTypedValue.h(((iy9) this.a.Z9().getValue()).a(ex7Var, ((DivTypedValueTemplate.h) divTypedValueTemplate).c(), jSONObject));
        }
        if (divTypedValueTemplate instanceof DivTypedValueTemplate.f) {
            return new DivTypedValue.f(((x25) this.a.H9().getValue()).a(ex7Var, ((DivTypedValueTemplate.f) divTypedValueTemplate).c(), jSONObject));
        }
        if (divTypedValueTemplate instanceof DivTypedValueTemplate.g) {
            return new DivTypedValue.g(((e47) this.a.N9().getValue()).a(ex7Var, ((DivTypedValueTemplate.g) divTypedValueTemplate).c(), jSONObject));
        }
        if (divTypedValueTemplate instanceof DivTypedValueTemplate.c) {
            return new DivTypedValue.c(((u91) this.a.o().getValue()).a(ex7Var, ((DivTypedValueTemplate.c) divTypedValueTemplate).c(), jSONObject));
        }
        if (divTypedValueTemplate instanceof DivTypedValueTemplate.b) {
            return new DivTypedValue.b(((qh0) this.a.i().getValue()).a(ex7Var, ((DivTypedValueTemplate.b) divTypedValueTemplate).c(), jSONObject));
        }
        if (divTypedValueTemplate instanceof DivTypedValueTemplate.i) {
            return new DivTypedValue.i(((hjb) this.a.fa().getValue()).a(ex7Var, ((DivTypedValueTemplate.i) divTypedValueTemplate).c(), jSONObject));
        }
        if (divTypedValueTemplate instanceof DivTypedValueTemplate.e) {
            return new DivTypedValue.e(((ob2) this.a.A().getValue()).a(ex7Var, ((DivTypedValueTemplate.e) divTypedValueTemplate).c(), jSONObject));
        }
        if (divTypedValueTemplate instanceof DivTypedValueTemplate.a) {
            return new DivTypedValue.a(((yh) this.a.c().getValue()).a(ex7Var, ((DivTypedValueTemplate.a) divTypedValueTemplate).c(), jSONObject));
        }
        throw new NoWhenBranchMatchedException();
    }
}
