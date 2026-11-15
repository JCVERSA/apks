package com.yandex.div2;

import defpackage.ex7;
import defpackage.ho2;
import defpackage.lga;
import defpackage.vh2;
import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;

public final class w1 implements lga {
    public final JsonParserComponent a;

    public w1(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivInputMask a(ex7 ex7Var, DivInputMaskTemplate divInputMaskTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divInputMaskTemplate, "template");
        y45.j(jSONObject, "data");
        if (divInputMaskTemplate instanceof DivInputMaskTemplate.c) {
            return new DivInputMask.c(((g1.d) this.a.p3().getValue()).a(ex7Var, ((DivInputMaskTemplate.c) divInputMaskTemplate).c(), jSONObject));
        }
        if (divInputMaskTemplate instanceof DivInputMaskTemplate.b) {
            return new DivInputMask.b(((vh2) this.a.x2().getValue()).a(ex7Var, ((DivInputMaskTemplate.b) divInputMaskTemplate).c(), jSONObject));
        }
        if (divInputMaskTemplate instanceof DivInputMaskTemplate.d) {
            return new DivInputMask.d(((ho2) this.a.M5().getValue()).a(ex7Var, ((DivInputMaskTemplate.d) divInputMaskTemplate).c(), jSONObject));
        }
        throw new NoWhenBranchMatchedException();
    }
}
