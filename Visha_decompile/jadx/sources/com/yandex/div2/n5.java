package com.yandex.div2;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import defpackage.acb;
import defpackage.ex7;
import defpackage.lga;
import defpackage.sa5;
import defpackage.y45;
import org.json.JSONObject;

public final class n5 implements lga {
    public final JsonParserComponent a;

    public n5(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivWrapContentSize a(ex7 ex7Var, DivWrapContentSizeTemplate divWrapContentSizeTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divWrapContentSizeTemplate, "template");
        y45.j(jSONObject, "data");
        return new DivWrapContentSize(sa5.s(ex7Var, divWrapContentSizeTemplate.a, jSONObject, "constrained", acb.a, ParsingConvertersKt.f), (DivWrapContentSize.ConstraintSize) sa5.p(ex7Var, divWrapContentSizeTemplate.b, jSONObject, "max_size", this.a.v9(), this.a.t9()), (DivWrapContentSize.ConstraintSize) sa5.p(ex7Var, divWrapContentSizeTemplate.c, jSONObject, "min_size", this.a.v9(), this.a.t9()));
    }
}
