package defpackage;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivPivotPercentage;
import com.yandex.div2.DivPivotPercentageTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class ko2 implements lga {
    public final JsonParserComponent a;

    public ko2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivPivotPercentage a(ex7 ex7Var, DivPivotPercentageTemplate divPivotPercentageTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divPivotPercentageTemplate, "template");
        y45.j(jSONObject, "data");
        Expression expressionH = sa5.h(ex7Var, divPivotPercentageTemplate.a, jSONObject, ES6Iterator.VALUE_PROPERTY, acb.d, ParsingConvertersKt.g);
        y45.i(expressionH, "resolveExpression(contex…DOUBLE, NUMBER_TO_DOUBLE)");
        return new DivPivotPercentage(expressionH);
    }
}
