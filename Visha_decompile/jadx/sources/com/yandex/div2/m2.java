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

public final class m2 implements pd9, w92 {
    public final JsonParserComponent a;

    public m2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivPageTransformation a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        if (y45.e(strU, "slide")) {
            return new DivPageTransformation.c(((DivPageTransformationSlideJsonParser.b) this.a.t5().getValue()).a(ex7Var, jSONObject));
        }
        if (y45.e(strU, "overlap")) {
            return new DivPageTransformation.b(((DivPageTransformationOverlapJsonParser.b) this.a.q5().getValue()).a(ex7Var, jSONObject));
        }
        za3 za3VarA = ex7Var.a().a(strU, jSONObject);
        DivPageTransformationTemplate divPageTransformationTemplate = za3VarA instanceof DivPageTransformationTemplate ? (DivPageTransformationTemplate) za3VarA : null;
        if (divPageTransformationTemplate != null) {
            return ((o2) this.a.p5().getValue()).a(ex7Var, divPageTransformationTemplate, jSONObject);
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivPageTransformation divPageTransformation) {
        y45.j(ex7Var, "context");
        y45.j(divPageTransformation, ES6Iterator.VALUE_PROPERTY);
        if (divPageTransformation instanceof DivPageTransformation.c) {
            return ((DivPageTransformationSlideJsonParser.b) this.a.t5().getValue()).b(ex7Var, ((DivPageTransformation.c) divPageTransformation).c());
        }
        if (divPageTransformation instanceof DivPageTransformation.b) {
            return ((DivPageTransformationOverlapJsonParser.b) this.a.q5().getValue()).b(ex7Var, ((DivPageTransformation.b) divPageTransformation).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
