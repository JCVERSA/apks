package com.yandex.div2;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import defpackage.acb;
import defpackage.ex7;
import defpackage.fx7;
import defpackage.gfa;
import defpackage.pd9;
import defpackage.ra5;
import defpackage.tp3;
import defpackage.y45;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class y1 implements pd9, gfa {
    public final JsonParserComponent a;

    public y1(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivInputTemplate.NativeInterfaceTemplate c(ex7 ex7Var, DivInputTemplate.NativeInterfaceTemplate nativeInterfaceTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        tp3 tp3VarI = ra5.i(fx7.c(ex7Var), jSONObject, "color", acb.f, ex7Var.c(), nativeInterfaceTemplate != null ? nativeInterfaceTemplate.a : null, ParsingConvertersKt.b);
        y45.i(tp3VarI, "readFieldWithExpression(…lor, STRING_TO_COLOR_INT)");
        return new DivInputTemplate.NativeInterfaceTemplate(tp3VarI);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivInputTemplate.NativeInterfaceTemplate nativeInterfaceTemplate) {
        y45.j(ex7Var, "context");
        y45.j(nativeInterfaceTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        ra5.E(ex7Var, jSONObject, "color", nativeInterfaceTemplate.a, ParsingConvertersKt.a);
        return jSONObject;
    }
}
