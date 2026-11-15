package defpackage;

import com.yandex.div2.ArrayVariable;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONArray;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class zh implements pd9, w92 {
    public final JsonParserComponent a;

    public zh(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public ArrayVariable a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        Object objD = tb5.d(ex7Var, jSONObject, "name");
        y45.i(objD, "read(context, data, \"name\")");
        Object objD2 = tb5.d(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY);
        y45.i(objD2, "read(context, data, \"value\")");
        return new ArrayVariable((String) objD, (JSONArray) objD2);
    }

    @Override
    public JSONObject b(ex7 ex7Var, ArrayVariable arrayVariable) {
        y45.j(ex7Var, "context");
        y45.j(arrayVariable, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.v(ex7Var, jSONObject, "name", arrayVariable.a);
        tb5.v(ex7Var, jSONObject, "type", "array");
        tb5.v(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, arrayVariable.b);
        return jSONObject;
    }
}
