package com.yandex.div2;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import defpackage.acb;
import defpackage.ex7;
import defpackage.pa5;
import defpackage.pd9;
import defpackage.w92;
import defpackage.y45;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class x1 implements pd9, w92 {
    public final JsonParserComponent a;

    public x1(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivInput.NativeInterface a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        Expression expressionE = pa5.e(ex7Var, jSONObject, "color", acb.f, ParsingConvertersKt.b);
        y45.i(expressionE, "readExpression(context, …LOR, STRING_TO_COLOR_INT)");
        return new DivInput.NativeInterface(expressionE);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivInput.NativeInterface nativeInterface) {
        y45.j(ex7Var, "context");
        y45.j(nativeInterface, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        pa5.q(ex7Var, jSONObject, "color", nativeInterface.a, ParsingConvertersKt.a);
        return jSONObject;
    }
}
