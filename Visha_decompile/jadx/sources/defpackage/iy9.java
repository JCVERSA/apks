package defpackage;

import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.JsonParserComponent;
import com.yandex.div2.StrValue;
import com.yandex.div2.StrValueTemplate;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class iy9 implements lga {
    public final JsonParserComponent a;

    public iy9(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public StrValue a(ex7 ex7Var, StrValueTemplate strValueTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(strValueTemplate, "template");
        y45.j(jSONObject, "data");
        Expression expressionG = sa5.g(ex7Var, strValueTemplate.a, jSONObject, ES6Iterator.VALUE_PROPERTY, acb.c);
        y45.i(expressionG, "resolveExpression(contex…lue\", TYPE_HELPER_STRING)");
        return new StrValue(expressionG);
    }
}
