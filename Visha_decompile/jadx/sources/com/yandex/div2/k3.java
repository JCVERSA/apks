package com.yandex.div2;

import com.yandex.div.json.expressions.Expression;
import defpackage.acb;
import defpackage.ex7;
import defpackage.lga;
import defpackage.sa5;
import defpackage.tp3;
import defpackage.y45;
import defpackage.zbb;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class k3 implements lga {
    public final JsonParserComponent a;

    public k3(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivSelect.Option a(ex7 ex7Var, DivSelectTemplate.OptionTemplate optionTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(optionTemplate, "template");
        y45.j(jSONObject, "data");
        tp3 tp3Var = optionTemplate.a;
        zbb zbbVar = acb.c;
        Expression expressionR = sa5.r(ex7Var, tp3Var, jSONObject, "text", zbbVar);
        Expression expressionG = sa5.g(ex7Var, optionTemplate.b, jSONObject, ES6Iterator.VALUE_PROPERTY, zbbVar);
        y45.i(expressionG, "resolveExpression(contex…lue\", TYPE_HELPER_STRING)");
        return new DivSelect.Option(expressionR, expressionG);
    }
}
