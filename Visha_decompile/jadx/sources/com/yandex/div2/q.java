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

public final class q implements lga {
    public final JsonParserComponent a;

    public q(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivActionSubmit.Request.Header a(ex7 ex7Var, DivActionSubmitTemplate.RequestTemplate.HeaderTemplate headerTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(headerTemplate, "template");
        y45.j(jSONObject, "data");
        tp3 tp3Var = headerTemplate.a;
        zbb zbbVar = acb.c;
        Expression expressionG = sa5.g(ex7Var, tp3Var, jSONObject, "name", zbbVar);
        y45.i(expressionG, "resolveExpression(contex…ame\", TYPE_HELPER_STRING)");
        Expression expressionG2 = sa5.g(ex7Var, headerTemplate.b, jSONObject, ES6Iterator.VALUE_PROPERTY, zbbVar);
        y45.i(expressionG2, "resolveExpression(contex…lue\", TYPE_HELPER_STRING)");
        return new DivActionSubmit.Request.Header(expressionG, expressionG2);
    }
}
