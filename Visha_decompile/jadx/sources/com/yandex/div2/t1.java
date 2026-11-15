package com.yandex.div2;

import defpackage.ex7;
import defpackage.lga;
import defpackage.ll2;
import defpackage.ol2;
import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;

public final class t1 implements lga {
    public final JsonParserComponent a;

    public t1(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivInputFilter a(ex7 ex7Var, DivInputFilterTemplate divInputFilterTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divInputFilterTemplate, "template");
        y45.j(jSONObject, "data");
        if (divInputFilterTemplate instanceof DivInputFilterTemplate.c) {
            return new DivInputFilter.c(((ol2) this.a.o4().getValue()).a(ex7Var, ((DivInputFilterTemplate.c) divInputFilterTemplate).c(), jSONObject));
        }
        if (divInputFilterTemplate instanceof DivInputFilterTemplate.b) {
            return new DivInputFilter.b(((ll2) this.a.i4().getValue()).a(ex7Var, ((DivInputFilterTemplate.b) divInputFilterTemplate).c(), jSONObject));
        }
        throw new NoWhenBranchMatchedException();
    }
}
