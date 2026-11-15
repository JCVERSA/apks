package defpackage;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.IntegerValue;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class v25 implements pd9, w92 {
    public final JsonParserComponent a;

    public v25(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public IntegerValue a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        Expression expressionE = pa5.e(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, acb.b, ParsingConvertersKt.h);
        y45.i(expressionE, "readExpression(context, …ELPER_INT, NUMBER_TO_INT)");
        return new IntegerValue(expressionE);
    }

    @Override
    public JSONObject b(ex7 ex7Var, IntegerValue integerValue) {
        y45.j(ex7Var, "context");
        y45.j(integerValue, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.v(ex7Var, jSONObject, "type", TypedValues.Custom.S_INT);
        pa5.p(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, integerValue.a);
        return jSONObject;
    }
}
