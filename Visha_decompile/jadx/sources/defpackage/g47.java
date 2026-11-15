package defpackage;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div2.JsonParserComponent;
import com.yandex.div2.NumberVariable;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class g47 implements pd9, w92 {
    public final JsonParserComponent a;

    public g47(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public NumberVariable a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        Object objD = tb5.d(ex7Var, jSONObject, "name");
        y45.i(objD, "read(context, data, \"name\")");
        Object objE = tb5.e(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, ParsingConvertersKt.g);
        y45.i(objE, "read(context, data, \"value\", NUMBER_TO_DOUBLE)");
        return new NumberVariable((String) objD, ((Number) objE).doubleValue());
    }

    @Override
    public JSONObject b(ex7 ex7Var, NumberVariable numberVariable) {
        y45.j(ex7Var, "context");
        y45.j(numberVariable, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.v(ex7Var, jSONObject, "name", numberVariable.a);
        tb5.v(ex7Var, jSONObject, "type", "number");
        tb5.v(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, Double.valueOf(numberVariable.b));
        return jSONObject;
    }
}
