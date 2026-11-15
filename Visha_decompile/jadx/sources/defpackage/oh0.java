package defpackage;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.BoolValue;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class oh0 implements pd9, w92 {
    public final JsonParserComponent a;

    public oh0(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public BoolValue a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        Expression expressionE = pa5.e(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, acb.a, ParsingConvertersKt.f);
        y45.i(expressionE, "readExpression(context, …_BOOLEAN, ANY_TO_BOOLEAN)");
        return new BoolValue(expressionE);
    }

    @Override
    public JSONObject b(ex7 ex7Var, BoolValue boolValue) {
        y45.j(ex7Var, "context");
        y45.j(boolValue, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.v(ex7Var, jSONObject, "type", TypedValues.Custom.S_BOOLEAN);
        pa5.p(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, boolValue.a);
        return jSONObject;
    }
}
