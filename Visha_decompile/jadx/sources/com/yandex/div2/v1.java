package com.yandex.div2;

import defpackage.ex7;
import defpackage.go2;
import defpackage.mx7;
import defpackage.pd9;
import defpackage.tb5;
import defpackage.uh2;
import defpackage.w92;
import defpackage.y45;
import defpackage.za3;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class v1 implements pd9, w92 {
    public final JsonParserComponent a;

    public v1(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivInputMaskTemplate a(ex7 ex7Var, JSONObject jSONObject) {
        String strA;
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        za3 za3Var = ex7Var.a().get(strU);
        DivInputMaskTemplate divInputMaskTemplate = za3Var instanceof DivInputMaskTemplate ? (DivInputMaskTemplate) za3Var : null;
        if (divInputMaskTemplate != null && (strA = divInputMaskTemplate.a()) != null) {
            strU = strA;
        }
        int iHashCode = strU.hashCode();
        if (iHashCode != 106642798) {
            if (iHashCode != 393594385) {
                if (iHashCode == 575402001 && strU.equals("currency")) {
                    return new DivInputMaskTemplate.b(((uh2) this.a.w2().getValue()).c(ex7Var, (DivCurrencyInputMaskTemplate) (divInputMaskTemplate != null ? divInputMaskTemplate.b() : null), jSONObject));
                }
            } else if (strU.equals("fixed_length")) {
                return new DivInputMaskTemplate.c(((g1.c) this.a.o3().getValue()).c(ex7Var, (DivFixedLengthInputMaskTemplate) (divInputMaskTemplate != null ? divInputMaskTemplate.b() : null), jSONObject));
            }
        } else if (strU.equals("phone")) {
            return new DivInputMaskTemplate.d(((go2) this.a.L5().getValue()).c(ex7Var, (DivPhoneInputMaskTemplate) (divInputMaskTemplate != null ? divInputMaskTemplate.b() : null), jSONObject));
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivInputMaskTemplate divInputMaskTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divInputMaskTemplate, ES6Iterator.VALUE_PROPERTY);
        if (divInputMaskTemplate instanceof DivInputMaskTemplate.c) {
            return ((g1.c) this.a.o3().getValue()).b(ex7Var, ((DivInputMaskTemplate.c) divInputMaskTemplate).c());
        }
        if (divInputMaskTemplate instanceof DivInputMaskTemplate.b) {
            return ((uh2) this.a.w2().getValue()).b(ex7Var, ((DivInputMaskTemplate.b) divInputMaskTemplate).c());
        }
        if (divInputMaskTemplate instanceof DivInputMaskTemplate.d) {
            return ((go2) this.a.L5().getValue()).b(ex7Var, ((DivInputMaskTemplate.d) divInputMaskTemplate).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
