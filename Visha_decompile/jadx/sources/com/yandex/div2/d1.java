package com.yandex.div2;

import defpackage.ej2;
import defpackage.ex7;
import defpackage.mx7;
import defpackage.pd9;
import defpackage.tb5;
import defpackage.w92;
import defpackage.y45;
import defpackage.za3;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class d1 implements pd9, w92 {
    public final JsonParserComponent a;

    public d1(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivFilterTemplate a(ex7 ex7Var, JSONObject jSONObject) {
        String strA;
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        za3 za3Var = ex7Var.a().get(strU);
        DivFilterTemplate divFilterTemplate = za3Var instanceof DivFilterTemplate ? (DivFilterTemplate) za3Var : null;
        if (divFilterTemplate != null && (strA = divFilterTemplate.a()) != null) {
            strU = strA;
        }
        if (y45.e(strU, "blur")) {
            return new DivFilterTemplate.a(((f0.c) this.a.G1().getValue()).c(ex7Var, (DivBlurTemplate) (divFilterTemplate != null ? divFilterTemplate.b() : null), jSONObject));
        }
        if (y45.e(strU, "rtl_mirror")) {
            return new DivFilterTemplate.c(((ej2) this.a.i3().getValue()).c(ex7Var, (DivFilterRtlMirrorTemplate) (divFilterTemplate != null ? divFilterTemplate.b() : null), jSONObject));
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivFilterTemplate divFilterTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divFilterTemplate, ES6Iterator.VALUE_PROPERTY);
        if (divFilterTemplate instanceof DivFilterTemplate.a) {
            return ((f0.c) this.a.G1().getValue()).b(ex7Var, ((DivFilterTemplate.a) divFilterTemplate).c());
        }
        if (divFilterTemplate instanceof DivFilterTemplate.c) {
            return ((ej2) this.a.i3().getValue()).b(ex7Var, ((DivFilterTemplate.c) divFilterTemplate).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
