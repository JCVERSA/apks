package com.yandex.div2;

import defpackage.ex7;
import defpackage.iq2;
import defpackage.mx7;
import defpackage.pd9;
import defpackage.tb5;
import defpackage.vm2;
import defpackage.w92;
import defpackage.y45;
import defpackage.za3;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class d0 implements pd9, w92 {
    public final JsonParserComponent a;

    public d0(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override
    public DivBackgroundTemplate a(ex7 ex7Var, JSONObject jSONObject) {
        String strA;
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        za3 za3Var = ex7Var.a().get(strU);
        DivBackgroundTemplate divBackgroundTemplate = za3Var instanceof DivBackgroundTemplate ? (DivBackgroundTemplate) za3Var : null;
        if (divBackgroundTemplate != null && (strA = divBackgroundTemplate.a()) != null) {
            strU = strA;
        }
        switch (strU.hashCode()) {
            case -30518633:
                if (strU.equals("nine_patch_image")) {
                    return new DivBackgroundTemplate.d(((vm2) this.a.c5().getValue()).c(ex7Var, (DivNinePatchBackgroundTemplate) (divBackgroundTemplate != null ? divBackgroundTemplate.b() : null), jSONObject));
                }
                break;
            case 89650992:
                if (strU.equals("gradient")) {
                    return new DivBackgroundTemplate.c(((k2.c) this.a.T4().getValue()).c(ex7Var, (DivLinearGradientTemplate) (divBackgroundTemplate != null ? divBackgroundTemplate.b() : null), jSONObject));
                }
                break;
            case 100313435:
                if (strU.equals("image")) {
                    return new DivBackgroundTemplate.b(((DivImageBackgroundJsonParser.c) this.a.S3().getValue()).c(ex7Var, (DivImageBackgroundTemplate) (divBackgroundTemplate != null ? divBackgroundTemplate.b() : null), jSONObject));
                }
                break;
            case 109618859:
                if (strU.equals("solid")) {
                    return new DivBackgroundTemplate.f(((iq2) this.a.l7().getValue()).c(ex7Var, (DivSolidBackgroundTemplate) (divBackgroundTemplate != null ? divBackgroundTemplate.b() : null), jSONObject));
                }
                break;
            case 1881846096:
                if (strU.equals("radial_gradient")) {
                    return new DivBackgroundTemplate.e(((d3.c) this.a.j6().getValue()).c(ex7Var, (DivRadialGradientTemplate) (divBackgroundTemplate != null ? divBackgroundTemplate.b() : null), jSONObject));
                }
                break;
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivBackgroundTemplate divBackgroundTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divBackgroundTemplate, ES6Iterator.VALUE_PROPERTY);
        if (divBackgroundTemplate instanceof DivBackgroundTemplate.c) {
            return ((k2.c) this.a.T4().getValue()).b(ex7Var, ((DivBackgroundTemplate.c) divBackgroundTemplate).c());
        }
        if (divBackgroundTemplate instanceof DivBackgroundTemplate.e) {
            return ((d3.c) this.a.j6().getValue()).b(ex7Var, ((DivBackgroundTemplate.e) divBackgroundTemplate).c());
        }
        if (divBackgroundTemplate instanceof DivBackgroundTemplate.b) {
            return ((DivImageBackgroundJsonParser.c) this.a.S3().getValue()).b(ex7Var, ((DivBackgroundTemplate.b) divBackgroundTemplate).c());
        }
        if (divBackgroundTemplate instanceof DivBackgroundTemplate.f) {
            return ((iq2) this.a.l7().getValue()).b(ex7Var, ((DivBackgroundTemplate.f) divBackgroundTemplate).c());
        }
        if (divBackgroundTemplate instanceof DivBackgroundTemplate.d) {
            return ((vm2) this.a.c5().getValue()).b(ex7Var, ((DivBackgroundTemplate.d) divBackgroundTemplate).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
