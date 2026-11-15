package com.yandex.div2;

import defpackage.ex7;
import defpackage.fh1;
import defpackage.ih1;
import defpackage.lga;
import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;

public final class d implements lga {
    public final JsonParserComponent a;

    public d(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivActionCopyToClipboardContent a(ex7 ex7Var, DivActionCopyToClipboardContentTemplate divActionCopyToClipboardContentTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divActionCopyToClipboardContentTemplate, "template");
        y45.j(jSONObject, "data");
        if (divActionCopyToClipboardContentTemplate instanceof DivActionCopyToClipboardContentTemplate.b) {
            return new DivActionCopyToClipboardContent.b(((fh1) this.a.u().getValue()).a(ex7Var, ((DivActionCopyToClipboardContentTemplate.b) divActionCopyToClipboardContentTemplate).c(), jSONObject));
        }
        if (divActionCopyToClipboardContentTemplate instanceof DivActionCopyToClipboardContentTemplate.c) {
            return new DivActionCopyToClipboardContent.c(((ih1) this.a.x().getValue()).a(ex7Var, ((DivActionCopyToClipboardContentTemplate.c) divActionCopyToClipboardContentTemplate).c(), jSONObject));
        }
        throw new NoWhenBranchMatchedException();
    }
}
