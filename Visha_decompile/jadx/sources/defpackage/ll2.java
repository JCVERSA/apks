package defpackage;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivInputFilterExpression;
import com.yandex.div2.DivInputFilterExpressionTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;

public final class ll2 implements lga {
    public final JsonParserComponent a;

    public ll2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivInputFilterExpression a(ex7 ex7Var, DivInputFilterExpressionTemplate divInputFilterExpressionTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divInputFilterExpressionTemplate, "template");
        y45.j(jSONObject, "data");
        Expression expressionH = sa5.h(ex7Var, divInputFilterExpressionTemplate.a, jSONObject, "condition", acb.a, ParsingConvertersKt.f);
        y45.i(expressionH, "resolveExpression(contex…_BOOLEAN, ANY_TO_BOOLEAN)");
        return new DivInputFilterExpression(expressionH);
    }
}
