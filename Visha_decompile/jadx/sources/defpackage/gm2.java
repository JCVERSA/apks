package defpackage;

import com.yandex.div2.DivLayoutProvider;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class gm2 implements pd9, w92 {
    public final JsonParserComponent a;

    public gm2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivLayoutProvider a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        return new DivLayoutProvider((String) tb5.k(ex7Var, jSONObject, "height_variable_name"), (String) tb5.k(ex7Var, jSONObject, "width_variable_name"));
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivLayoutProvider divLayoutProvider) {
        y45.j(ex7Var, "context");
        y45.j(divLayoutProvider, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.v(ex7Var, jSONObject, "height_variable_name", divLayoutProvider.a);
        tb5.v(ex7Var, jSONObject, "width_variable_name", divLayoutProvider.b);
        return jSONObject;
    }
}
