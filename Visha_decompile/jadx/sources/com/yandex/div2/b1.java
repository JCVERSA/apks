package com.yandex.div2;

import defpackage.ex7;
import defpackage.lga;
import defpackage.vp2;
import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;

public final class b1 implements lga {
    public final JsonParserComponent a;

    public b1(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivDrawable a(ex7 ex7Var, DivDrawableTemplate divDrawableTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divDrawableTemplate, "template");
        y45.j(jSONObject, "data");
        if (divDrawableTemplate instanceof DivDrawableTemplate.b) {
            return new DivDrawable.b(((vp2) this.a.R6().getValue()).a(ex7Var, ((DivDrawableTemplate.b) divDrawableTemplate).c(), jSONObject));
        }
        throw new NoWhenBranchMatchedException();
    }
}
