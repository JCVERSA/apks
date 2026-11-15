package defpackage;

import com.yandex.div2.JsonParserComponent;
import com.yandex.div2.StrVariable;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class jy9 implements pd9, w92 {
    public final JsonParserComponent a;

    public jy9(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public StrVariable a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        Object objD = tb5.d(ex7Var, jSONObject, "name");
        y45.i(objD, "read(context, data, \"name\")");
        Object objD2 = tb5.d(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY);
        y45.i(objD2, "read(context, data, \"value\")");
        return new StrVariable((String) objD, (String) objD2);
    }

    @Override
    public JSONObject b(ex7 ex7Var, StrVariable strVariable) {
        y45.j(ex7Var, "context");
        y45.j(strVariable, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.v(ex7Var, jSONObject, "name", strVariable.a);
        tb5.v(ex7Var, jSONObject, "type", "string");
        tb5.v(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, strVariable.b);
        return jSONObject;
    }
}
