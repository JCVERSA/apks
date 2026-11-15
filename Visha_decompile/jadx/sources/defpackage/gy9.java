package defpackage;

import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.JsonParserComponent;
import com.yandex.div2.StrValue;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class gy9 implements pd9, w92 {
    public final JsonParserComponent a;

    public gy9(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public StrValue a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        Expression expressionD = pa5.d(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, acb.c);
        y45.i(expressionD, "readExpression(context, …lue\", TYPE_HELPER_STRING)");
        return new StrValue(expressionD);
    }

    @Override
    public JSONObject b(ex7 ex7Var, StrValue strValue) {
        y45.j(ex7Var, "context");
        y45.j(strValue, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.v(ex7Var, jSONObject, "type", "string");
        pa5.p(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, strValue.a);
        return jSONObject;
    }
}
