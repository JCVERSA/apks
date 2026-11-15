package com.yandex.div2;

import defpackage.eh1;
import defpackage.ex7;
import defpackage.hh1;
import defpackage.mx7;
import defpackage.pd9;
import defpackage.tb5;
import defpackage.w92;
import defpackage.y45;
import defpackage.za3;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class c implements pd9, w92 {
    public final JsonParserComponent a;

    public c(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivActionCopyToClipboardContentTemplate a(ex7 ex7Var, JSONObject jSONObject) {
        String strA;
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        za3 za3Var = ex7Var.a().get(strU);
        DivActionCopyToClipboardContentTemplate divActionCopyToClipboardContentTemplate = za3Var instanceof DivActionCopyToClipboardContentTemplate ? (DivActionCopyToClipboardContentTemplate) za3Var : null;
        if (divActionCopyToClipboardContentTemplate != null && (strA = divActionCopyToClipboardContentTemplate.a()) != null) {
            strU = strA;
        }
        if (y45.e(strU, "text")) {
            return new DivActionCopyToClipboardContentTemplate.b(((eh1) this.a.t().getValue()).c(ex7Var, (ContentTextTemplate) (divActionCopyToClipboardContentTemplate != null ? divActionCopyToClipboardContentTemplate.b() : null), jSONObject));
        }
        if (y45.e(strU, "url")) {
            return new DivActionCopyToClipboardContentTemplate.c(((hh1) this.a.w().getValue()).c(ex7Var, (ContentUrlTemplate) (divActionCopyToClipboardContentTemplate != null ? divActionCopyToClipboardContentTemplate.b() : null), jSONObject));
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivActionCopyToClipboardContentTemplate divActionCopyToClipboardContentTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divActionCopyToClipboardContentTemplate, ES6Iterator.VALUE_PROPERTY);
        if (divActionCopyToClipboardContentTemplate instanceof DivActionCopyToClipboardContentTemplate.b) {
            return ((eh1) this.a.t().getValue()).b(ex7Var, ((DivActionCopyToClipboardContentTemplate.b) divActionCopyToClipboardContentTemplate).c());
        }
        if (divActionCopyToClipboardContentTemplate instanceof DivActionCopyToClipboardContentTemplate.c) {
            return ((hh1) this.a.w().getValue()).b(ex7Var, ((DivActionCopyToClipboardContentTemplate.c) divActionCopyToClipboardContentTemplate).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
