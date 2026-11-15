package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
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

public final class n3 implements pd9, w92 {
    public final JsonParserComponent a;

    public n3(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivShapeTemplate a(ex7 ex7Var, JSONObject jSONObject) {
        String strA;
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        za3 za3Var = ex7Var.a().get(strU);
        DivShapeTemplate divShapeTemplate = za3Var instanceof DivShapeTemplate ? (DivShapeTemplate) za3Var : null;
        if (divShapeTemplate != null && (strA = divShapeTemplate.a()) != null) {
            strU = strA;
        }
        if (y45.e(strU, "rounded_rectangle")) {
            return new DivShapeTemplate.c(((h3.c) this.a.v6().getValue()).c(ex7Var, (DivRoundedRectangleShapeTemplate) (divShapeTemplate != null ? divShapeTemplate.b() : null), jSONObject));
        }
        if (y45.e(strU, TtmlNode.TEXT_EMPHASIS_MARK_CIRCLE)) {
            return new DivShapeTemplate.a(((l0.c) this.a.V1().getValue()).c(ex7Var, (DivCircleShapeTemplate) (divShapeTemplate != null ? divShapeTemplate.b() : null), jSONObject));
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivShapeTemplate divShapeTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divShapeTemplate, ES6Iterator.VALUE_PROPERTY);
        if (divShapeTemplate instanceof DivShapeTemplate.c) {
            return ((h3.c) this.a.v6().getValue()).b(ex7Var, ((DivShapeTemplate.c) divShapeTemplate).c());
        }
        if (divShapeTemplate instanceof DivShapeTemplate.a) {
            return ((l0.c) this.a.V1().getValue()).b(ex7Var, ((DivShapeTemplate.a) divShapeTemplate).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
