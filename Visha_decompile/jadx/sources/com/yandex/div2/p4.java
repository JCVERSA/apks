package com.yandex.div2;

import defpackage.ex7;
import defpackage.jq2;
import defpackage.lga;
import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;

public final class p4 implements lga {
    public final JsonParserComponent a;

    public p4(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivTextRangeBackground a(ex7 ex7Var, DivTextRangeBackgroundTemplate divTextRangeBackgroundTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divTextRangeBackgroundTemplate, "template");
        y45.j(jSONObject, "data");
        if (divTextRangeBackgroundTemplate instanceof DivTextRangeBackgroundTemplate.c) {
            return new DivTextRangeBackground.c(((jq2) this.a.m7().getValue()).a(ex7Var, ((DivTextRangeBackgroundTemplate.c) divTextRangeBackgroundTemplate).c(), jSONObject));
        }
        if (divTextRangeBackgroundTemplate instanceof DivTextRangeBackgroundTemplate.a) {
            return new DivTextRangeBackground.a(((m0.d) this.a.Z1().getValue()).a(ex7Var, ((DivTextRangeBackgroundTemplate.a) divTextRangeBackgroundTemplate).c(), jSONObject));
        }
        throw new NoWhenBranchMatchedException();
    }
}
