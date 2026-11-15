package com.yandex.div2;

import defpackage.ex7;
import defpackage.lga;
import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;

public final class a0 implements lga {
    public final JsonParserComponent a;

    public a0(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivAppearanceTransition a(ex7 ex7Var, DivAppearanceTransitionTemplate divAppearanceTransitionTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divAppearanceTransitionTemplate, "template");
        y45.j(jSONObject, "data");
        if (divAppearanceTransitionTemplate instanceof DivAppearanceTransitionTemplate.d) {
            return new DivAppearanceTransition.d(((x.d) this.a.v1().getValue()).a(ex7Var, ((DivAppearanceTransitionTemplate.d) divAppearanceTransitionTemplate).c(), jSONObject));
        }
        if (divAppearanceTransitionTemplate instanceof DivAppearanceTransitionTemplate.b) {
            return new DivAppearanceTransition.b(((DivFadeTransitionJsonParser.d) this.a.d3().getValue()).a(ex7Var, ((DivAppearanceTransitionTemplate.b) divAppearanceTransitionTemplate).c(), jSONObject));
        }
        if (divAppearanceTransitionTemplate instanceof DivAppearanceTransitionTemplate.c) {
            return new DivAppearanceTransition.c(((DivScaleTransitionJsonParser.d) this.a.z6().getValue()).a(ex7Var, ((DivAppearanceTransitionTemplate.c) divAppearanceTransitionTemplate).c(), jSONObject));
        }
        if (divAppearanceTransitionTemplate instanceof DivAppearanceTransitionTemplate.e) {
            return new DivAppearanceTransition.e(((DivSlideTransitionJsonParser.d) this.a.a7().getValue()).a(ex7Var, ((DivAppearanceTransitionTemplate.e) divAppearanceTransitionTemplate).c(), jSONObject));
        }
        throw new NoWhenBranchMatchedException();
    }
}
