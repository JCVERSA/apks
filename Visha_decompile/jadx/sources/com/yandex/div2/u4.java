package com.yandex.div2;

import defpackage.ex7;
import defpackage.lga;
import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;

public final class u4 implements lga {
    public final JsonParserComponent a;

    public u4(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivTextRangeMask a(ex7 ex7Var, DivTextRangeMaskTemplate divTextRangeMaskTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divTextRangeMaskTemplate, "template");
        y45.j(jSONObject, "data");
        if (divTextRangeMaskTemplate instanceof DivTextRangeMaskTemplate.b) {
            return new DivTextRangeMask.b(((v4.d) this.a.C8().getValue()).a(ex7Var, ((DivTextRangeMaskTemplate.b) divTextRangeMaskTemplate).c(), jSONObject));
        }
        if (divTextRangeMaskTemplate instanceof DivTextRangeMaskTemplate.c) {
            return new DivTextRangeMask.c(((w4.d) this.a.F8().getValue()).a(ex7Var, ((DivTextRangeMaskTemplate.c) divTextRangeMaskTemplate).c(), jSONObject));
        }
        throw new NoWhenBranchMatchedException();
    }
}
