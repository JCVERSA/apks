package com.yandex.div2;

import defpackage.an2;
import defpackage.dn2;
import defpackage.ex7;
import defpackage.mx7;
import defpackage.pd9;
import defpackage.sm2;
import defpackage.tb5;
import defpackage.w92;
import defpackage.y45;
import defpackage.za3;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class q2 implements pd9, w92 {
    public final JsonParserComponent a;

    public q2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivPagerLayoutModeTemplate a(ex7 ex7Var, JSONObject jSONObject) {
        String strA;
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        za3 za3Var = ex7Var.a().get(strU);
        DivPagerLayoutModeTemplate divPagerLayoutModeTemplate = za3Var instanceof DivPagerLayoutModeTemplate ? (DivPagerLayoutModeTemplate) za3Var : null;
        if (divPagerLayoutModeTemplate != null && (strA = divPagerLayoutModeTemplate.a()) != null) {
            strU = strA;
        }
        int iHashCode = strU.hashCode();
        if (iHashCode != -921832806) {
            if (iHashCode != 97445748) {
                if (iHashCode == 343327108 && strU.equals("wrap_content")) {
                    return new DivPagerLayoutModeTemplate.c(((an2) this.a.i5().getValue()).c(ex7Var, (DivPageContentSizeTemplate) (divPagerLayoutModeTemplate != null ? divPagerLayoutModeTemplate.b() : null), jSONObject));
                }
            } else if (strU.equals("fixed")) {
                return new DivPagerLayoutModeTemplate.b(((sm2) this.a.Z4().getValue()).c(ex7Var, (DivNeighbourPageSizeTemplate) (divPagerLayoutModeTemplate != null ? divPagerLayoutModeTemplate.b() : null), jSONObject));
            }
        } else if (strU.equals("percentage")) {
            return new DivPagerLayoutModeTemplate.d(((dn2) this.a.l5().getValue()).c(ex7Var, (DivPageSizeTemplate) (divPagerLayoutModeTemplate != null ? divPagerLayoutModeTemplate.b() : null), jSONObject));
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivPagerLayoutModeTemplate divPagerLayoutModeTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divPagerLayoutModeTemplate, ES6Iterator.VALUE_PROPERTY);
        if (divPagerLayoutModeTemplate instanceof DivPagerLayoutModeTemplate.d) {
            return ((dn2) this.a.l5().getValue()).b(ex7Var, ((DivPagerLayoutModeTemplate.d) divPagerLayoutModeTemplate).c());
        }
        if (divPagerLayoutModeTemplate instanceof DivPagerLayoutModeTemplate.b) {
            return ((sm2) this.a.Z4().getValue()).b(ex7Var, ((DivPagerLayoutModeTemplate.b) divPagerLayoutModeTemplate).c());
        }
        if (divPagerLayoutModeTemplate instanceof DivPagerLayoutModeTemplate.c) {
            return ((an2) this.a.i5().getValue()).b(ex7Var, ((DivPagerLayoutModeTemplate.c) divPagerLayoutModeTemplate).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
