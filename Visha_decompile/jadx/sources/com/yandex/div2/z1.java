package com.yandex.div2;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import defpackage.acb;
import defpackage.ex7;
import defpackage.lga;
import defpackage.sa5;
import defpackage.y45;
import org.json.JSONObject;

public final class z1 implements lga {
    public final JsonParserComponent a;

    public z1(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivInput.NativeInterface a(ex7 ex7Var, DivInputTemplate.NativeInterfaceTemplate nativeInterfaceTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(nativeInterfaceTemplate, "template");
        y45.j(jSONObject, "data");
        Expression expressionH = sa5.h(ex7Var, nativeInterfaceTemplate.a, jSONObject, "color", acb.f, ParsingConvertersKt.b);
        y45.i(expressionH, "resolveExpression(contex…LOR, STRING_TO_COLOR_INT)");
        return new DivInput.NativeInterface(expressionH);
    }
}
