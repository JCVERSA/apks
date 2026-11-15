package com.yandex.div2;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import defpackage.acb;
import defpackage.ex7;
import defpackage.pa5;
import defpackage.pd9;
import defpackage.tb5;
import defpackage.w92;
import defpackage.y45;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class m5 implements pd9, w92 {
    public final JsonParserComponent a;

    public m5(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivWrapContentSize a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        return new DivWrapContentSize(pa5.i(ex7Var, jSONObject, "constrained", acb.a, ParsingConvertersKt.f), (DivWrapContentSize.ConstraintSize) tb5.n(ex7Var, jSONObject, "max_size", this.a.t9()), (DivWrapContentSize.ConstraintSize) tb5.n(ex7Var, jSONObject, "min_size", this.a.t9()));
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivWrapContentSize divWrapContentSize) {
        y45.j(ex7Var, "context");
        y45.j(divWrapContentSize, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        pa5.p(ex7Var, jSONObject, "constrained", divWrapContentSize.a);
        tb5.x(ex7Var, jSONObject, "max_size", divWrapContentSize.b, this.a.t9());
        tb5.x(ex7Var, jSONObject, "min_size", divWrapContentSize.c, this.a.t9());
        tb5.v(ex7Var, jSONObject, "type", "wrap_content");
        return jSONObject;
    }
}
