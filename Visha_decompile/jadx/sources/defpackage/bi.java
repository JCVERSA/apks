package defpackage;

import com.yandex.div2.ArrayVariable;
import com.yandex.div2.ArrayVariableTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONArray;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class bi implements lga {
    public final JsonParserComponent a;

    public bi(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public ArrayVariable a(ex7 ex7Var, ArrayVariableTemplate arrayVariableTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(arrayVariableTemplate, "template");
        y45.j(jSONObject, "data");
        Object objA = sa5.a(ex7Var, arrayVariableTemplate.a, jSONObject, "name");
        y45.i(objA, "resolve(context, template.name, data, \"name\")");
        Object objA2 = sa5.a(ex7Var, arrayVariableTemplate.b, jSONObject, ES6Iterator.VALUE_PROPERTY);
        y45.i(objA2, "resolve(context, template.value, data, \"value\")");
        return new ArrayVariable((String) objA, (JSONArray) objA2);
    }
}
