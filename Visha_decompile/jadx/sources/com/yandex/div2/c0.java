package com.yandex.div2;

import defpackage.ex7;
import defpackage.hq2;
import defpackage.mx7;
import defpackage.pd9;
import defpackage.tb5;
import defpackage.um2;
import defpackage.w92;
import defpackage.y45;
import defpackage.za3;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class c0 implements pd9, w92 {
    public final JsonParserComponent a;

    public c0(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override
    public DivBackground a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        switch (strU.hashCode()) {
            case -30518633:
                if (strU.equals("nine_patch_image")) {
                    return new DivBackground.d(((um2) this.a.b5().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case 89650992:
                if (strU.equals("gradient")) {
                    return new DivBackground.c(((k2.b) this.a.S4().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case 100313435:
                if (strU.equals("image")) {
                    return new DivBackground.b(((DivImageBackgroundJsonParser.b) this.a.R3().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case 109618859:
                if (strU.equals("solid")) {
                    return new DivBackground.f(((hq2) this.a.k7().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case 1881846096:
                if (strU.equals("radial_gradient")) {
                    return new DivBackground.e(((d3.b) this.a.i6().getValue()).a(ex7Var, jSONObject));
                }
                break;
        }
        za3 za3VarA = ex7Var.a().a(strU, jSONObject);
        DivBackgroundTemplate divBackgroundTemplate = za3VarA instanceof DivBackgroundTemplate ? (DivBackgroundTemplate) za3VarA : null;
        if (divBackgroundTemplate != null) {
            return ((e0) this.a.E1().getValue()).a(ex7Var, divBackgroundTemplate, jSONObject);
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivBackground divBackground) {
        y45.j(ex7Var, "context");
        y45.j(divBackground, ES6Iterator.VALUE_PROPERTY);
        if (divBackground instanceof DivBackground.c) {
            return ((k2.b) this.a.S4().getValue()).b(ex7Var, ((DivBackground.c) divBackground).c());
        }
        if (divBackground instanceof DivBackground.e) {
            return ((d3.b) this.a.i6().getValue()).b(ex7Var, ((DivBackground.e) divBackground).c());
        }
        if (divBackground instanceof DivBackground.b) {
            return ((DivImageBackgroundJsonParser.b) this.a.R3().getValue()).b(ex7Var, ((DivBackground.b) divBackground).c());
        }
        if (divBackground instanceof DivBackground.f) {
            return ((hq2) this.a.k7().getValue()).b(ex7Var, ((DivBackground.f) divBackground).c());
        }
        if (divBackground instanceof DivBackground.d) {
            return ((um2) this.a.b5().getValue()).b(ex7Var, ((DivBackground.d) divBackground).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
