package defpackage;

import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivInputFilterRegex;
import com.yandex.div2.DivInputFilterRegexTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;

public final class ol2 implements lga {
    public final JsonParserComponent a;

    public ol2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivInputFilterRegex a(ex7 ex7Var, DivInputFilterRegexTemplate divInputFilterRegexTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divInputFilterRegexTemplate, "template");
        y45.j(jSONObject, "data");
        Expression expressionG = sa5.g(ex7Var, divInputFilterRegexTemplate.a, jSONObject, "pattern", acb.c);
        y45.i(expressionG, "resolveExpression(contex…ern\", TYPE_HELPER_STRING)");
        return new DivInputFilterRegex(expressionG);
    }
}
