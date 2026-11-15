package com.yandex.div2;

import com.yandex.div.json.expressions.Expression;
import defpackage.acb;
import defpackage.ex7;
import defpackage.pa5;
import defpackage.pd9;
import defpackage.w92;
import defpackage.y45;
import defpackage.zbb;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class i3 implements pd9, w92 {
    public final JsonParserComponent a;

    public i3(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivSelect.Option a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        zbb zbbVar = acb.c;
        Expression expressionH = pa5.h(ex7Var, jSONObject, "text", zbbVar);
        Expression expressionD = pa5.d(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, zbbVar);
        y45.i(expressionD, "readExpression(context, …lue\", TYPE_HELPER_STRING)");
        return new DivSelect.Option(expressionH, expressionD);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivSelect.Option option) {
        y45.j(ex7Var, "context");
        y45.j(option, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        pa5.p(ex7Var, jSONObject, "text", option.a);
        pa5.p(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, option.b);
        return jSONObject;
    }
}
