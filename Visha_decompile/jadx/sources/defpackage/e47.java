package defpackage;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.JsonParserComponent;
import com.yandex.div2.NumberValue;
import com.yandex.div2.NumberValueTemplate;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class e47 implements lga {
    public final JsonParserComponent a;

    public e47(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public NumberValue a(ex7 ex7Var, NumberValueTemplate numberValueTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(numberValueTemplate, "template");
        y45.j(jSONObject, "data");
        Expression expressionH = sa5.h(ex7Var, numberValueTemplate.a, jSONObject, ES6Iterator.VALUE_PROPERTY, acb.d, ParsingConvertersKt.g);
        y45.i(expressionH, "resolveExpression(contex…DOUBLE, NUMBER_TO_DOUBLE)");
        return new NumberValue(expressionH);
    }
}
