package com.yandex.div2;

import defpackage.bn2;
import defpackage.en2;
import defpackage.ex7;
import defpackage.lga;
import defpackage.tm2;
import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;

public final class r2 implements lga {
    public final JsonParserComponent a;

    public r2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivPagerLayoutMode a(ex7 ex7Var, DivPagerLayoutModeTemplate divPagerLayoutModeTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divPagerLayoutModeTemplate, "template");
        y45.j(jSONObject, "data");
        if (divPagerLayoutModeTemplate instanceof DivPagerLayoutModeTemplate.d) {
            return new DivPagerLayoutMode.d(((en2) this.a.m5().getValue()).a(ex7Var, ((DivPagerLayoutModeTemplate.d) divPagerLayoutModeTemplate).c(), jSONObject));
        }
        if (divPagerLayoutModeTemplate instanceof DivPagerLayoutModeTemplate.b) {
            return new DivPagerLayoutMode.b(((tm2) this.a.a5().getValue()).a(ex7Var, ((DivPagerLayoutModeTemplate.b) divPagerLayoutModeTemplate).c(), jSONObject));
        }
        if (divPagerLayoutModeTemplate instanceof DivPagerLayoutModeTemplate.c) {
            return new DivPagerLayoutMode.c(((bn2) this.a.j5().getValue()).a(ex7Var, ((DivPagerLayoutModeTemplate.c) divPagerLayoutModeTemplate).c(), jSONObject));
        }
        throw new NoWhenBranchMatchedException();
    }
}
