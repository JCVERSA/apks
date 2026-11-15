package com.yandex.div2;

import defpackage.ex7;
import defpackage.gr2;
import defpackage.jr2;
import defpackage.lga;
import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;

public final class b4 implements lga {
    public final JsonParserComponent a;

    public b4(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivStrokeStyle a(ex7 ex7Var, DivStrokeStyleTemplate divStrokeStyleTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divStrokeStyleTemplate, "template");
        y45.j(jSONObject, "data");
        if (divStrokeStyleTemplate instanceof DivStrokeStyleTemplate.c) {
            return new DivStrokeStyle.c(((jr2) this.a.H7().getValue()).a(ex7Var, ((DivStrokeStyleTemplate.c) divStrokeStyleTemplate).c(), jSONObject));
        }
        if (divStrokeStyleTemplate instanceof DivStrokeStyleTemplate.b) {
            return new DivStrokeStyle.b(((gr2) this.a.B7().getValue()).a(ex7Var, ((DivStrokeStyleTemplate.b) divStrokeStyleTemplate).c(), jSONObject));
        }
        throw new NoWhenBranchMatchedException();
    }
}
