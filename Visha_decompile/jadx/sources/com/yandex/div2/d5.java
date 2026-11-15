package com.yandex.div2;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.d47;
import defpackage.ex7;
import defpackage.gjb;
import defpackage.hy9;
import defpackage.mx7;
import defpackage.nb2;
import defpackage.pd9;
import defpackage.ph0;
import defpackage.t91;
import defpackage.tb5;
import defpackage.w25;
import defpackage.w92;
import defpackage.xh;
import defpackage.y45;
import defpackage.za3;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class d5 implements pd9, w92 {
    public final JsonParserComponent a;

    public d5(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override
    public DivTypedValueTemplate a(ex7 ex7Var, JSONObject jSONObject) {
        String strA;
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        za3 za3Var = ex7Var.a().get(strU);
        DivTypedValueTemplate divTypedValueTemplate = za3Var instanceof DivTypedValueTemplate ? (DivTypedValueTemplate) za3Var : null;
        if (divTypedValueTemplate != null && (strA = divTypedValueTemplate.a()) != null) {
            strU = strA;
        }
        switch (strU.hashCode()) {
            case -1034364087:
                if (strU.equals("number")) {
                    return new DivTypedValueTemplate.g(((d47) this.a.M9().getValue()).c(ex7Var, (NumberValueTemplate) (divTypedValueTemplate != null ? divTypedValueTemplate.b() : null), jSONObject));
                }
                break;
            case -891985903:
                if (strU.equals("string")) {
                    return new DivTypedValueTemplate.h(((hy9) this.a.Y9().getValue()).c(ex7Var, (StrValueTemplate) (divTypedValueTemplate != null ? divTypedValueTemplate.b() : null), jSONObject));
                }
                break;
            case 116079:
                if (strU.equals("url")) {
                    return new DivTypedValueTemplate.i(((gjb) this.a.ea().getValue()).c(ex7Var, (UrlValueTemplate) (divTypedValueTemplate != null ? divTypedValueTemplate.b() : null), jSONObject));
                }
                break;
            case 3083190:
                if (strU.equals("dict")) {
                    return new DivTypedValueTemplate.e(((nb2) this.a.z().getValue()).c(ex7Var, (DictValueTemplate) (divTypedValueTemplate != null ? divTypedValueTemplate.b() : null), jSONObject));
                }
                break;
            case 64711720:
                if (strU.equals(TypedValues.Custom.S_BOOLEAN)) {
                    return new DivTypedValueTemplate.b(((ph0) this.a.h().getValue()).c(ex7Var, (BoolValueTemplate) (divTypedValueTemplate != null ? divTypedValueTemplate.b() : null), jSONObject));
                }
                break;
            case 93090393:
                if (strU.equals("array")) {
                    return new DivTypedValueTemplate.a(((xh) this.a.b().getValue()).c(ex7Var, (ArrayValueTemplate) (divTypedValueTemplate != null ? divTypedValueTemplate.b() : null), jSONObject));
                }
                break;
            case 94842723:
                if (strU.equals("color")) {
                    return new DivTypedValueTemplate.c(((t91) this.a.n().getValue()).c(ex7Var, (ColorValueTemplate) (divTypedValueTemplate != null ? divTypedValueTemplate.b() : null), jSONObject));
                }
                break;
            case 1958052158:
                if (strU.equals(TypedValues.Custom.S_INT)) {
                    return new DivTypedValueTemplate.f(((w25) this.a.G9().getValue()).c(ex7Var, (IntegerValueTemplate) (divTypedValueTemplate != null ? divTypedValueTemplate.b() : null), jSONObject));
                }
                break;
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivTypedValueTemplate divTypedValueTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divTypedValueTemplate, ES6Iterator.VALUE_PROPERTY);
        if (divTypedValueTemplate instanceof DivTypedValueTemplate.h) {
            return ((hy9) this.a.Y9().getValue()).b(ex7Var, ((DivTypedValueTemplate.h) divTypedValueTemplate).c());
        }
        if (divTypedValueTemplate instanceof DivTypedValueTemplate.f) {
            return ((w25) this.a.G9().getValue()).b(ex7Var, ((DivTypedValueTemplate.f) divTypedValueTemplate).c());
        }
        if (divTypedValueTemplate instanceof DivTypedValueTemplate.g) {
            return ((d47) this.a.M9().getValue()).b(ex7Var, ((DivTypedValueTemplate.g) divTypedValueTemplate).c());
        }
        if (divTypedValueTemplate instanceof DivTypedValueTemplate.c) {
            return ((t91) this.a.n().getValue()).b(ex7Var, ((DivTypedValueTemplate.c) divTypedValueTemplate).c());
        }
        if (divTypedValueTemplate instanceof DivTypedValueTemplate.b) {
            return ((ph0) this.a.h().getValue()).b(ex7Var, ((DivTypedValueTemplate.b) divTypedValueTemplate).c());
        }
        if (divTypedValueTemplate instanceof DivTypedValueTemplate.i) {
            return ((gjb) this.a.ea().getValue()).b(ex7Var, ((DivTypedValueTemplate.i) divTypedValueTemplate).c());
        }
        if (divTypedValueTemplate instanceof DivTypedValueTemplate.e) {
            return ((nb2) this.a.z().getValue()).b(ex7Var, ((DivTypedValueTemplate.e) divTypedValueTemplate).c());
        }
        if (divTypedValueTemplate instanceof DivTypedValueTemplate.a) {
            return ((xh) this.a.b().getValue()).b(ex7Var, ((DivTypedValueTemplate.a) divTypedValueTemplate).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
