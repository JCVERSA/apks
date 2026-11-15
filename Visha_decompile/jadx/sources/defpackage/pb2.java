package defpackage;

import com.yandex.div2.DictVariable;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class pb2 implements pd9, w92 {
    public final JsonParserComponent a;

    public pb2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DictVariable a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        Object objD = tb5.d(ex7Var, jSONObject, "name");
        y45.i(objD, "read(context, data, \"name\")");
        Object objD2 = tb5.d(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY);
        y45.i(objD2, "read(context, data, \"value\")");
        return new DictVariable((String) objD, (JSONObject) objD2);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DictVariable dictVariable) {
        y45.j(ex7Var, "context");
        y45.j(dictVariable, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.v(ex7Var, jSONObject, "name", dictVariable.a);
        tb5.v(ex7Var, jSONObject, "type", "dict");
        tb5.v(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, dictVariable.b);
        return jSONObject;
    }
}
