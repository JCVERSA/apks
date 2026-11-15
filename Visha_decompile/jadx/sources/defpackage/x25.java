package defpackage;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.IntegerValue;
import com.yandex.div2.IntegerValueTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class x25 implements lga {
    public final JsonParserComponent a;

    public x25(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public IntegerValue a(ex7 ex7Var, IntegerValueTemplate integerValueTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(integerValueTemplate, "template");
        y45.j(jSONObject, "data");
        Expression expressionH = sa5.h(ex7Var, integerValueTemplate.a, jSONObject, ES6Iterator.VALUE_PROPERTY, acb.b, ParsingConvertersKt.h);
        y45.i(expressionH, "resolveExpression(contex…ELPER_INT, NUMBER_TO_INT)");
        return new IntegerValue(expressionH);
    }
}
