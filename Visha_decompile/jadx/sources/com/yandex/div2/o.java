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

public final class o implements pd9, w92 {
    public final JsonParserComponent a;

    public o(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivActionSubmit.Request.Header a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        zbb zbbVar = acb.c;
        Expression expressionD = pa5.d(ex7Var, jSONObject, "name", zbbVar);
        y45.i(expressionD, "readExpression(context, …ame\", TYPE_HELPER_STRING)");
        Expression expressionD2 = pa5.d(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, zbbVar);
        y45.i(expressionD2, "readExpression(context, …lue\", TYPE_HELPER_STRING)");
        return new DivActionSubmit.Request.Header(expressionD, expressionD2);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivActionSubmit.Request.Header header) {
        y45.j(ex7Var, "context");
        y45.j(header, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        pa5.p(ex7Var, jSONObject, "name", header.a);
        pa5.p(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, header.b);
        return jSONObject;
    }
}
