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

public final class p3 implements pd9, w92 {
    public final JsonParserComponent a;

    public p3(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivSize a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        int iHashCode = strU.hashCode();
        if (iHashCode != 97445748) {
            if (iHashCode != 343327108) {
                if (iHashCode == 1386124388 && strU.equals("match_parent")) {
                    return new DivSize.c(((l2.b) this.a.V4().getValue()).a(ex7Var, jSONObject));
                }
            } else if (strU.equals("wrap_content")) {
                return new DivSize.d(((m5) this.a.w9().getValue()).a(ex7Var, jSONObject));
            }
        } else if (strU.equals("fixed")) {
            return new DivSize.b(((DivFixedSizeJsonParser.b) this.a.t3().getValue()).a(ex7Var, jSONObject));
        }
        za3 za3VarA = ex7Var.a().a(strU, jSONObject);
        DivSizeTemplate divSizeTemplate = za3VarA instanceof DivSizeTemplate ? (DivSizeTemplate) za3VarA : null;
        if (divSizeTemplate != null) {
            return ((r3) this.a.X6().getValue()).a(ex7Var, divSizeTemplate, jSONObject);
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivSize divSize) {
        y45.j(ex7Var, "context");
        y45.j(divSize, ES6Iterator.VALUE_PROPERTY);
        if (divSize instanceof DivSize.b) {
            return ((DivFixedSizeJsonParser.b) this.a.t3().getValue()).b(ex7Var, ((DivSize.b) divSize).c());
        }
        if (divSize instanceof DivSize.c) {
            return ((l2.b) this.a.V4().getValue()).b(ex7Var, ((DivSize.c) divSize).c());
        }
        if (divSize instanceof DivSize.d) {
            return ((m5) this.a.w9().getValue()).b(ex7Var, ((DivSize.d) divSize).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
