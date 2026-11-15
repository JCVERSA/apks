package com.yandex.div2;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.a35;
import defpackage.ai;
import defpackage.ex7;
import defpackage.h47;
import defpackage.jjb;
import defpackage.ky9;
import defpackage.mx7;
import defpackage.pd9;
import defpackage.qb2;
import defpackage.sh0;
import defpackage.tb5;
import defpackage.w91;
import defpackage.w92;
import defpackage.y45;
import defpackage.za3;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class g5 implements pd9, w92 {
    public final JsonParserComponent a;

    public g5(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override
    public DivVariableTemplate a(ex7 ex7Var, JSONObject jSONObject) {
        String strA;
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        za3 za3Var = ex7Var.a().get(strU);
        DivVariableTemplate divVariableTemplate = za3Var instanceof DivVariableTemplate ? (DivVariableTemplate) za3Var : null;
        if (divVariableTemplate != null && (strA = divVariableTemplate.a()) != null) {
            strU = strA;
        }
        switch (strU.hashCode()) {
            case -1034364087:
                if (strU.equals("number")) {
                    return new DivVariableTemplate.g(((h47) this.a.P9().getValue()).c(ex7Var, (NumberVariableTemplate) (divVariableTemplate != null ? divVariableTemplate.b() : null), jSONObject));
                }
                break;
            case -891985903:
                if (strU.equals("string")) {
                    return new DivVariableTemplate.h(((ky9) this.a.ba().getValue()).c(ex7Var, (StrVariableTemplate) (divVariableTemplate != null ? divVariableTemplate.b() : null), jSONObject));
                }
                break;
            case 116079:
                if (strU.equals("url")) {
                    return new DivVariableTemplate.i(((jjb) this.a.ha().getValue()).c(ex7Var, (UrlVariableTemplate) (divVariableTemplate != null ? divVariableTemplate.b() : null), jSONObject));
                }
                break;
            case 3083190:
                if (strU.equals("dict")) {
                    return new DivVariableTemplate.e(((qb2) this.a.C().getValue()).c(ex7Var, (DictVariableTemplate) (divVariableTemplate != null ? divVariableTemplate.b() : null), jSONObject));
                }
                break;
            case 64711720:
                if (strU.equals(TypedValues.Custom.S_BOOLEAN)) {
                    return new DivVariableTemplate.b(((sh0) this.a.k().getValue()).c(ex7Var, (BoolVariableTemplate) (divVariableTemplate != null ? divVariableTemplate.b() : null), jSONObject));
                }
                break;
            case 93090393:
                if (strU.equals("array")) {
                    return new DivVariableTemplate.a(((ai) this.a.e().getValue()).c(ex7Var, (ArrayVariableTemplate) (divVariableTemplate != null ? divVariableTemplate.b() : null), jSONObject));
                }
                break;
            case 94842723:
                if (strU.equals("color")) {
                    return new DivVariableTemplate.c(((w91) this.a.q().getValue()).c(ex7Var, (ColorVariableTemplate) (divVariableTemplate != null ? divVariableTemplate.b() : null), jSONObject));
                }
                break;
            case 1958052158:
                if (strU.equals(TypedValues.Custom.S_INT)) {
                    return new DivVariableTemplate.f(((a35) this.a.J9().getValue()).c(ex7Var, (IntegerVariableTemplate) (divVariableTemplate != null ? divVariableTemplate.b() : null), jSONObject));
                }
                break;
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivVariableTemplate divVariableTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divVariableTemplate, ES6Iterator.VALUE_PROPERTY);
        if (divVariableTemplate instanceof DivVariableTemplate.h) {
            return ((ky9) this.a.ba().getValue()).b(ex7Var, ((DivVariableTemplate.h) divVariableTemplate).c());
        }
        if (divVariableTemplate instanceof DivVariableTemplate.g) {
            return ((h47) this.a.P9().getValue()).b(ex7Var, ((DivVariableTemplate.g) divVariableTemplate).c());
        }
        if (divVariableTemplate instanceof DivVariableTemplate.f) {
            return ((a35) this.a.J9().getValue()).b(ex7Var, ((DivVariableTemplate.f) divVariableTemplate).c());
        }
        if (divVariableTemplate instanceof DivVariableTemplate.b) {
            return ((sh0) this.a.k().getValue()).b(ex7Var, ((DivVariableTemplate.b) divVariableTemplate).c());
        }
        if (divVariableTemplate instanceof DivVariableTemplate.c) {
            return ((w91) this.a.q().getValue()).b(ex7Var, ((DivVariableTemplate.c) divVariableTemplate).c());
        }
        if (divVariableTemplate instanceof DivVariableTemplate.i) {
            return ((jjb) this.a.ha().getValue()).b(ex7Var, ((DivVariableTemplate.i) divVariableTemplate).c());
        }
        if (divVariableTemplate instanceof DivVariableTemplate.e) {
            return ((qb2) this.a.C().getValue()).b(ex7Var, ((DivVariableTemplate.e) divVariableTemplate).c());
        }
        if (divVariableTemplate instanceof DivVariableTemplate.a) {
            return ((ai) this.a.e().getValue()).b(ex7Var, ((DivVariableTemplate.a) divVariableTemplate).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
