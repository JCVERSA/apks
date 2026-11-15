package com.yandex.div2;

import defpackage.ex7;
import defpackage.lga;
import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;

public final class r3 implements lga {
    public final JsonParserComponent a;

    public r3(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivSize a(ex7 ex7Var, DivSizeTemplate divSizeTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divSizeTemplate, "template");
        y45.j(jSONObject, "data");
        if (divSizeTemplate instanceof DivSizeTemplate.b) {
            return new DivSize.b(((DivFixedSizeJsonParser.d) this.a.v3().getValue()).a(ex7Var, ((DivSizeTemplate.b) divSizeTemplate).c(), jSONObject));
        }
        if (divSizeTemplate instanceof DivSizeTemplate.c) {
            return new DivSize.c(((l2.d) this.a.X4().getValue()).a(ex7Var, ((DivSizeTemplate.c) divSizeTemplate).c(), jSONObject));
        }
        if (divSizeTemplate instanceof DivSizeTemplate.d) {
            return new DivSize.d(((n5) this.a.y9().getValue()).a(ex7Var, ((DivSizeTemplate.d) divSizeTemplate).c(), jSONObject));
        }
        throw new NoWhenBranchMatchedException();
    }
}
