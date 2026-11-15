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

public final class m3 implements pd9, w92 {
    public final JsonParserComponent a;

    public m3(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivShape a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        if (y45.e(strU, "rounded_rectangle")) {
            return new DivShape.c(((h3.b) this.a.u6().getValue()).a(ex7Var, jSONObject));
        }
        if (y45.e(strU, TtmlNode.TEXT_EMPHASIS_MARK_CIRCLE)) {
            return new DivShape.a(((l0.b) this.a.U1().getValue()).a(ex7Var, jSONObject));
        }
        za3 za3VarA = ex7Var.a().a(strU, jSONObject);
        DivShapeTemplate divShapeTemplate = za3VarA instanceof DivShapeTemplate ? (DivShapeTemplate) za3VarA : null;
        if (divShapeTemplate != null) {
            return ((o3) this.a.U6().getValue()).a(ex7Var, divShapeTemplate, jSONObject);
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivShape divShape) {
        y45.j(ex7Var, "context");
        y45.j(divShape, ES6Iterator.VALUE_PROPERTY);
        if (divShape instanceof DivShape.c) {
            return ((h3.b) this.a.u6().getValue()).b(ex7Var, ((DivShape.c) divShape).c());
        }
        if (divShape instanceof DivShape.a) {
            return ((l0.b) this.a.U1().getValue()).b(ex7Var, ((DivShape.a) divShape).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
