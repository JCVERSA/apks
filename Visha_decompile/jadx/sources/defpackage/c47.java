package defpackage;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.JsonParserComponent;
import com.yandex.div2.NumberValue;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class c47 implements pd9, w92 {
    public final JsonParserComponent a;

    public c47(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public NumberValue a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        Expression expressionE = pa5.e(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, acb.d, ParsingConvertersKt.g);
        y45.i(expressionE, "readExpression(context, …DOUBLE, NUMBER_TO_DOUBLE)");
        return new NumberValue(expressionE);
    }

    @Override
    public JSONObject b(ex7 ex7Var, NumberValue numberValue) {
        y45.j(ex7Var, "context");
        y45.j(numberValue, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.v(ex7Var, jSONObject, "type", "number");
        pa5.p(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, numberValue.a);
        return jSONObject;
    }
}
