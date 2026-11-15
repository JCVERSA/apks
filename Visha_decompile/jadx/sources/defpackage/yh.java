package defpackage;

import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.ArrayValue;
import com.yandex.div2.ArrayValueTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class yh implements lga {
    public final JsonParserComponent a;

    public yh(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public ArrayValue a(ex7 ex7Var, ArrayValueTemplate arrayValueTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(arrayValueTemplate, "template");
        y45.j(jSONObject, "data");
        Expression expressionG = sa5.g(ex7Var, arrayValueTemplate.a, jSONObject, ES6Iterator.VALUE_PROPERTY, acb.g);
        y45.i(expressionG, "resolveExpression(contex…, TYPE_HELPER_JSON_ARRAY)");
        return new ArrayValue(expressionG);
    }
}
