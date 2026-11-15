package defpackage;

import com.yandex.div2.DictVariable;
import com.yandex.div2.DictVariableTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class rb2 implements lga {
    public final JsonParserComponent a;

    public rb2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DictVariable a(ex7 ex7Var, DictVariableTemplate dictVariableTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(dictVariableTemplate, "template");
        y45.j(jSONObject, "data");
        Object objA = sa5.a(ex7Var, dictVariableTemplate.a, jSONObject, "name");
        y45.i(objA, "resolve(context, template.name, data, \"name\")");
        Object objA2 = sa5.a(ex7Var, dictVariableTemplate.b, jSONObject, ES6Iterator.VALUE_PROPERTY);
        y45.i(objA2, "resolve(context, template.value, data, \"value\")");
        return new DictVariable((String) objA, (JSONObject) objA2);
    }
}
