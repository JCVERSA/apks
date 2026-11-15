package com.yandex.div2;

import defpackage.dh1;
import defpackage.ex7;
import defpackage.gh1;
import defpackage.mx7;
import defpackage.pd9;
import defpackage.tb5;
import defpackage.w92;
import defpackage.y45;
import defpackage.za3;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class b implements pd9, w92 {
    public final JsonParserComponent a;

    public b(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivActionCopyToClipboardContent a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        if (y45.e(strU, "text")) {
            return new DivActionCopyToClipboardContent.b(((dh1) this.a.s().getValue()).a(ex7Var, jSONObject));
        }
        if (y45.e(strU, "url")) {
            return new DivActionCopyToClipboardContent.c(((gh1) this.a.v().getValue()).a(ex7Var, jSONObject));
        }
        za3 za3VarA = ex7Var.a().a(strU, jSONObject);
        DivActionCopyToClipboardContentTemplate divActionCopyToClipboardContentTemplate = za3VarA instanceof DivActionCopyToClipboardContentTemplate ? (DivActionCopyToClipboardContentTemplate) za3VarA : null;
        if (divActionCopyToClipboardContentTemplate != null) {
            return ((d) this.a.e0().getValue()).a(ex7Var, divActionCopyToClipboardContentTemplate, jSONObject);
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivActionCopyToClipboardContent divActionCopyToClipboardContent) {
        y45.j(ex7Var, "context");
        y45.j(divActionCopyToClipboardContent, ES6Iterator.VALUE_PROPERTY);
        if (divActionCopyToClipboardContent instanceof DivActionCopyToClipboardContent.b) {
            return ((dh1) this.a.s().getValue()).b(ex7Var, ((DivActionCopyToClipboardContent.b) divActionCopyToClipboardContent).c());
        }
        if (divActionCopyToClipboardContent instanceof DivActionCopyToClipboardContent.c) {
            return ((gh1) this.a.v().getValue()).b(ex7Var, ((DivActionCopyToClipboardContent.c) divActionCopyToClipboardContent).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
