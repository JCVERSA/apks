package com.yandex.div2;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.c47;
import defpackage.ex7;
import defpackage.fjb;
import defpackage.gy9;
import defpackage.mb2;
import defpackage.mx7;
import defpackage.oh0;
import defpackage.pd9;
import defpackage.s91;
import defpackage.tb5;
import defpackage.v25;
import defpackage.w92;
import defpackage.wh;
import defpackage.y45;
import defpackage.za3;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class c5 implements pd9, w92 {
    public final JsonParserComponent a;

    public c5(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override
    public DivTypedValue a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        switch (strU.hashCode()) {
            case -1034364087:
                if (strU.equals("number")) {
                    return new DivTypedValue.g(((c47) this.a.L9().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case -891985903:
                if (strU.equals("string")) {
                    return new DivTypedValue.h(((gy9) this.a.X9().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case 116079:
                if (strU.equals("url")) {
                    return new DivTypedValue.i(((fjb) this.a.da().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case 3083190:
                if (strU.equals("dict")) {
                    return new DivTypedValue.e(((mb2) this.a.y().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case 64711720:
                if (strU.equals(TypedValues.Custom.S_BOOLEAN)) {
                    return new DivTypedValue.b(((oh0) this.a.g().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case 93090393:
                if (strU.equals("array")) {
                    return new DivTypedValue.a(((wh) this.a.a().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case 94842723:
                if (strU.equals("color")) {
                    return new DivTypedValue.c(((s91) this.a.m().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case 1958052158:
                if (strU.equals(TypedValues.Custom.S_INT)) {
                    return new DivTypedValue.f(((v25) this.a.F9().getValue()).a(ex7Var, jSONObject));
                }
                break;
        }
        za3 za3VarA = ex7Var.a().a(strU, jSONObject);
        DivTypedValueTemplate divTypedValueTemplate = za3VarA instanceof DivTypedValueTemplate ? (DivTypedValueTemplate) za3VarA : null;
        if (divTypedValueTemplate != null) {
            return ((e5) this.a.d9().getValue()).a(ex7Var, divTypedValueTemplate, jSONObject);
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivTypedValue divTypedValue) {
        y45.j(ex7Var, "context");
        y45.j(divTypedValue, ES6Iterator.VALUE_PROPERTY);
        if (divTypedValue instanceof DivTypedValue.h) {
            return ((gy9) this.a.X9().getValue()).b(ex7Var, ((DivTypedValue.h) divTypedValue).c());
        }
        if (divTypedValue instanceof DivTypedValue.f) {
            return ((v25) this.a.F9().getValue()).b(ex7Var, ((DivTypedValue.f) divTypedValue).c());
        }
        if (divTypedValue instanceof DivTypedValue.g) {
            return ((c47) this.a.L9().getValue()).b(ex7Var, ((DivTypedValue.g) divTypedValue).c());
        }
        if (divTypedValue instanceof DivTypedValue.c) {
            return ((s91) this.a.m().getValue()).b(ex7Var, ((DivTypedValue.c) divTypedValue).c());
        }
        if (divTypedValue instanceof DivTypedValue.b) {
            return ((oh0) this.a.g().getValue()).b(ex7Var, ((DivTypedValue.b) divTypedValue).c());
        }
        if (divTypedValue instanceof DivTypedValue.i) {
            return ((fjb) this.a.da().getValue()).b(ex7Var, ((DivTypedValue.i) divTypedValue).c());
        }
        if (divTypedValue instanceof DivTypedValue.e) {
            return ((mb2) this.a.y().getValue()).b(ex7Var, ((DivTypedValue.e) divTypedValue).c());
        }
        if (divTypedValue instanceof DivTypedValue.a) {
            return ((wh) this.a.a().getValue()).b(ex7Var, ((DivTypedValue.a) divTypedValue).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
