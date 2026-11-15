package defpackage;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivActionArrayRemoveValue;
import com.yandex.div2.DivActionArrayRemoveValueTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;

public final class yd2 implements lga {
    public final JsonParserComponent a;

    public yd2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivActionArrayRemoveValue a(ex7 ex7Var, DivActionArrayRemoveValueTemplate divActionArrayRemoveValueTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divActionArrayRemoveValueTemplate, "template");
        y45.j(jSONObject, "data");
        Expression expressionH = sa5.h(ex7Var, divActionArrayRemoveValueTemplate.a, jSONObject, "index", acb.b, ParsingConvertersKt.h);
        y45.i(expressionH, "resolveExpression(contex…ELPER_INT, NUMBER_TO_INT)");
        Expression expressionG = sa5.g(ex7Var, divActionArrayRemoveValueTemplate.b, jSONObject, "variable_name", acb.c);
        y45.i(expressionG, "resolveExpression(contex…ame\", TYPE_HELPER_STRING)");
        return new DivActionArrayRemoveValue(expressionH, expressionG);
    }
}
