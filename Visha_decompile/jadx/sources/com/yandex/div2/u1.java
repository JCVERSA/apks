package com.yandex.div2;

import defpackage.ex7;
import defpackage.fo2;
import defpackage.mx7;
import defpackage.pd9;
import defpackage.tb5;
import defpackage.th2;
import defpackage.w92;
import defpackage.y45;
import defpackage.za3;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class u1 implements pd9, w92 {
    public final JsonParserComponent a;

    public u1(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivInputMask a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        int iHashCode = strU.hashCode();
        if (iHashCode != 106642798) {
            if (iHashCode != 393594385) {
                if (iHashCode == 575402001 && strU.equals("currency")) {
                    return new DivInputMask.b(((th2) this.a.v2().getValue()).a(ex7Var, jSONObject));
                }
            } else if (strU.equals("fixed_length")) {
                return new DivInputMask.c(((g1.b) this.a.n3().getValue()).a(ex7Var, jSONObject));
            }
        } else if (strU.equals("phone")) {
            return new DivInputMask.d(((fo2) this.a.K5().getValue()).a(ex7Var, jSONObject));
        }
        za3 za3VarA = ex7Var.a().a(strU, jSONObject);
        DivInputMaskTemplate divInputMaskTemplate = za3VarA instanceof DivInputMaskTemplate ? (DivInputMaskTemplate) za3VarA : null;
        if (divInputMaskTemplate != null) {
            return ((w1) this.a.u4().getValue()).a(ex7Var, divInputMaskTemplate, jSONObject);
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivInputMask divInputMask) {
        y45.j(ex7Var, "context");
        y45.j(divInputMask, ES6Iterator.VALUE_PROPERTY);
        if (divInputMask instanceof DivInputMask.c) {
            return ((g1.b) this.a.n3().getValue()).b(ex7Var, ((DivInputMask.c) divInputMask).c());
        }
        if (divInputMask instanceof DivInputMask.b) {
            return ((th2) this.a.v2().getValue()).b(ex7Var, ((DivInputMask.b) divInputMask).c());
        }
        if (divInputMask instanceof DivInputMask.d) {
            return ((fo2) this.a.K5().getValue()).b(ex7Var, ((DivInputMask.d) divInputMask).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
