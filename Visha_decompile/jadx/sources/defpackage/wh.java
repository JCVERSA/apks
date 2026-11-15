package defpackage;

import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.ArrayValue;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class wh implements pd9, w92 {
    public final JsonParserComponent a;

    public wh(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public ArrayValue a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        Expression expressionD = pa5.d(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, acb.g);
        y45.i(expressionD, "readExpression(context, …, TYPE_HELPER_JSON_ARRAY)");
        return new ArrayValue(expressionD);
    }

    @Override
    public JSONObject b(ex7 ex7Var, ArrayValue arrayValue) {
        y45.j(ex7Var, "context");
        y45.j(arrayValue, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.v(ex7Var, jSONObject, "type", "array");
        pa5.p(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, arrayValue.a);
        return jSONObject;
    }
}
