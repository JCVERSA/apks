package com.yandex.div2;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.ex7;
import defpackage.g47;
import defpackage.ijb;
import defpackage.jy9;
import defpackage.mx7;
import defpackage.pb2;
import defpackage.pd9;
import defpackage.rh0;
import defpackage.tb5;
import defpackage.v91;
import defpackage.w92;
import defpackage.y45;
import defpackage.z25;
import defpackage.za3;
import defpackage.zh;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class f5 implements pd9, w92 {
    public final JsonParserComponent a;

    public f5(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override
    public DivVariable a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        switch (strU.hashCode()) {
            case -1034364087:
                if (strU.equals("number")) {
                    return new DivVariable.g(((g47) this.a.O9().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case -891985903:
                if (strU.equals("string")) {
                    return new DivVariable.h(((jy9) this.a.aa().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case 116079:
                if (strU.equals("url")) {
                    return new DivVariable.i(((ijb) this.a.ga().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case 3083190:
                if (strU.equals("dict")) {
                    return new DivVariable.e(((pb2) this.a.B().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case 64711720:
                if (strU.equals(TypedValues.Custom.S_BOOLEAN)) {
                    return new DivVariable.b(((rh0) this.a.j().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case 93090393:
                if (strU.equals("array")) {
                    return new DivVariable.a(((zh) this.a.d().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case 94842723:
                if (strU.equals("color")) {
                    return new DivVariable.c(((v91) this.a.p().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case 1958052158:
                if (strU.equals(TypedValues.Custom.S_INT)) {
                    return new DivVariable.f(((z25) this.a.I9().getValue()).a(ex7Var, jSONObject));
                }
                break;
        }
        za3 za3VarA = ex7Var.a().a(strU, jSONObject);
        DivVariableTemplate divVariableTemplate = za3VarA instanceof DivVariableTemplate ? (DivVariableTemplate) za3VarA : null;
        if (divVariableTemplate != null) {
            return ((h5) this.a.g9().getValue()).a(ex7Var, divVariableTemplate, jSONObject);
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivVariable divVariable) {
        y45.j(ex7Var, "context");
        y45.j(divVariable, ES6Iterator.VALUE_PROPERTY);
        if (divVariable instanceof DivVariable.h) {
            return ((jy9) this.a.aa().getValue()).b(ex7Var, ((DivVariable.h) divVariable).c());
        }
        if (divVariable instanceof DivVariable.g) {
            return ((g47) this.a.O9().getValue()).b(ex7Var, ((DivVariable.g) divVariable).c());
        }
        if (divVariable instanceof DivVariable.f) {
            return ((z25) this.a.I9().getValue()).b(ex7Var, ((DivVariable.f) divVariable).c());
        }
        if (divVariable instanceof DivVariable.b) {
            return ((rh0) this.a.j().getValue()).b(ex7Var, ((DivVariable.b) divVariable).c());
        }
        if (divVariable instanceof DivVariable.c) {
            return ((v91) this.a.p().getValue()).b(ex7Var, ((DivVariable.c) divVariable).c());
        }
        if (divVariable instanceof DivVariable.i) {
            return ((ijb) this.a.ga().getValue()).b(ex7Var, ((DivVariable.i) divVariable).c());
        }
        if (divVariable instanceof DivVariable.e) {
            return ((pb2) this.a.B().getValue()).b(ex7Var, ((DivVariable.e) divVariable).c());
        }
        if (divVariable instanceof DivVariable.a) {
            return ((zh) this.a.d().getValue()).b(ex7Var, ((DivVariable.a) divVariable).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
