package com.yandex.div2;

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

public final class n2 implements pd9, w92 {
    public final JsonParserComponent a;

    public n2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivPageTransformationTemplate a(ex7 ex7Var, JSONObject jSONObject) {
        String strA;
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        za3 za3Var = ex7Var.a().get(strU);
        DivPageTransformationTemplate divPageTransformationTemplate = za3Var instanceof DivPageTransformationTemplate ? (DivPageTransformationTemplate) za3Var : null;
        if (divPageTransformationTemplate != null && (strA = divPageTransformationTemplate.a()) != null) {
            strU = strA;
        }
        if (y45.e(strU, "slide")) {
            return new DivPageTransformationTemplate.c(((DivPageTransformationSlideJsonParser.c) this.a.u5().getValue()).c(ex7Var, (DivPageTransformationSlideTemplate) (divPageTransformationTemplate != null ? divPageTransformationTemplate.b() : null), jSONObject));
        }
        if (y45.e(strU, "overlap")) {
            return new DivPageTransformationTemplate.b(((DivPageTransformationOverlapJsonParser.c) this.a.r5().getValue()).c(ex7Var, (DivPageTransformationOverlapTemplate) (divPageTransformationTemplate != null ? divPageTransformationTemplate.b() : null), jSONObject));
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivPageTransformationTemplate divPageTransformationTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divPageTransformationTemplate, ES6Iterator.VALUE_PROPERTY);
        if (divPageTransformationTemplate instanceof DivPageTransformationTemplate.c) {
            return ((DivPageTransformationSlideJsonParser.c) this.a.u5().getValue()).b(ex7Var, ((DivPageTransformationTemplate.c) divPageTransformationTemplate).c());
        }
        if (divPageTransformationTemplate instanceof DivPageTransformationTemplate.b) {
            return ((DivPageTransformationOverlapJsonParser.c) this.a.r5().getValue()).b(ex7Var, ((DivPageTransformationTemplate.b) divPageTransformationTemplate).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
