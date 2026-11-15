package com.yandex.div2;

import defpackage.ew2;
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

public final class q3 implements pd9, w92 {
    public final JsonParserComponent a;

    public q3(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivSizeTemplate a(ex7 ex7Var, JSONObject jSONObject) {
        String strA;
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        za3 za3Var = ex7Var.a().get(strU);
        DivSizeTemplate divSizeTemplate = za3Var instanceof DivSizeTemplate ? (DivSizeTemplate) za3Var : null;
        if (divSizeTemplate != null && (strA = divSizeTemplate.a()) != null) {
            strU = strA;
        }
        int iHashCode = strU.hashCode();
        if (iHashCode != 97445748) {
            if (iHashCode != 343327108) {
                if (iHashCode == 1386124388 && strU.equals("match_parent")) {
                    return new DivSizeTemplate.c(((l2.c) this.a.W4().getValue()).c(ex7Var, (DivMatchParentSizeTemplate) (divSizeTemplate != null ? divSizeTemplate.b() : null), jSONObject));
                }
            } else if (strU.equals("wrap_content")) {
                return new DivSizeTemplate.d(((ew2) this.a.x9().getValue()).c(ex7Var, (DivWrapContentSizeTemplate) (divSizeTemplate != null ? divSizeTemplate.b() : null), jSONObject));
            }
        } else if (strU.equals("fixed")) {
            return new DivSizeTemplate.b(((DivFixedSizeJsonParser.c) this.a.u3().getValue()).c(ex7Var, (DivFixedSizeTemplate) (divSizeTemplate != null ? divSizeTemplate.b() : null), jSONObject));
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivSizeTemplate divSizeTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divSizeTemplate, ES6Iterator.VALUE_PROPERTY);
        if (divSizeTemplate instanceof DivSizeTemplate.b) {
            return ((DivFixedSizeJsonParser.c) this.a.u3().getValue()).b(ex7Var, ((DivSizeTemplate.b) divSizeTemplate).c());
        }
        if (divSizeTemplate instanceof DivSizeTemplate.c) {
            return ((l2.c) this.a.W4().getValue()).b(ex7Var, ((DivSizeTemplate.c) divSizeTemplate).c());
        }
        if (divSizeTemplate instanceof DivSizeTemplate.d) {
            return ((ew2) this.a.x9().getValue()).b(ex7Var, ((DivSizeTemplate.d) divSizeTemplate).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
