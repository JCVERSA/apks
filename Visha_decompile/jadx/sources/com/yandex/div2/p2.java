package com.yandex.div2;

import defpackage.cn2;
import defpackage.ex7;
import defpackage.mx7;
import defpackage.pd9;
import defpackage.rm2;
import defpackage.tb5;
import defpackage.w92;
import defpackage.y45;
import defpackage.za3;
import defpackage.zm2;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class p2 implements pd9, w92 {
    public final JsonParserComponent a;

    public p2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivPagerLayoutMode a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        int iHashCode = strU.hashCode();
        if (iHashCode != -921832806) {
            if (iHashCode != 97445748) {
                if (iHashCode == 343327108 && strU.equals("wrap_content")) {
                    return new DivPagerLayoutMode.c(((zm2) this.a.h5().getValue()).a(ex7Var, jSONObject));
                }
            } else if (strU.equals("fixed")) {
                return new DivPagerLayoutMode.b(((rm2) this.a.Y4().getValue()).a(ex7Var, jSONObject));
            }
        } else if (strU.equals("percentage")) {
            return new DivPagerLayoutMode.d(((cn2) this.a.k5().getValue()).a(ex7Var, jSONObject));
        }
        za3 za3VarA = ex7Var.a().a(strU, jSONObject);
        DivPagerLayoutModeTemplate divPagerLayoutModeTemplate = za3VarA instanceof DivPagerLayoutModeTemplate ? (DivPagerLayoutModeTemplate) za3VarA : null;
        if (divPagerLayoutModeTemplate != null) {
            return ((r2) this.a.B5().getValue()).a(ex7Var, divPagerLayoutModeTemplate, jSONObject);
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivPagerLayoutMode divPagerLayoutMode) {
        y45.j(ex7Var, "context");
        y45.j(divPagerLayoutMode, ES6Iterator.VALUE_PROPERTY);
        if (divPagerLayoutMode instanceof DivPagerLayoutMode.d) {
            return ((cn2) this.a.k5().getValue()).b(ex7Var, ((DivPagerLayoutMode.d) divPagerLayoutMode).c());
        }
        if (divPagerLayoutMode instanceof DivPagerLayoutMode.b) {
            return ((rm2) this.a.Y4().getValue()).b(ex7Var, ((DivPagerLayoutMode.b) divPagerLayoutMode).c());
        }
        if (divPagerLayoutMode instanceof DivPagerLayoutMode.c) {
            return ((zm2) this.a.h5().getValue()).b(ex7Var, ((DivPagerLayoutMode.c) divPagerLayoutMode).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
