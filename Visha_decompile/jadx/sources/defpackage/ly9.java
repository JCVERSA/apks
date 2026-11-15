package defpackage;

import com.yandex.div2.JsonParserComponent;
import com.yandex.div2.StrVariable;
import com.yandex.div2.StrVariableTemplate;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class ly9 implements lga {
    public final JsonParserComponent a;

    public ly9(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public StrVariable a(ex7 ex7Var, StrVariableTemplate strVariableTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(strVariableTemplate, "template");
        y45.j(jSONObject, "data");
        Object objA = sa5.a(ex7Var, strVariableTemplate.a, jSONObject, "name");
        y45.i(objA, "resolve(context, template.name, data, \"name\")");
        Object objA2 = sa5.a(ex7Var, strVariableTemplate.b, jSONObject, ES6Iterator.VALUE_PROPERTY);
        y45.i(objA2, "resolve(context, template.value, data, \"value\")");
        return new StrVariable((String) objA, (String) objA2);
    }
}
