package defpackage;

import com.yandex.div2.JsonParserComponent;
import com.yandex.div2.StrVariableTemplate;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class ky9 implements pd9, gfa {
    public final JsonParserComponent a;

    public ky9(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public StrVariableTemplate c(ex7 ex7Var, StrVariableTemplate strVariableTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        boolean zC = ex7Var.c();
        ex7 ex7VarC = fx7.c(ex7Var);
        tp3 tp3VarC = ra5.c(ex7VarC, jSONObject, "name", zC, strVariableTemplate != null ? strVariableTemplate.a : null);
        y45.i(tp3VarC, "readField(context, data,…owOverride, parent?.name)");
        tp3 tp3VarC2 = ra5.c(ex7VarC, jSONObject, ES6Iterator.VALUE_PROPERTY, zC, strVariableTemplate != null ? strVariableTemplate.b : null);
        y45.i(tp3VarC2, "readField(context, data,…wOverride, parent?.value)");
        return new StrVariableTemplate(tp3VarC, tp3VarC2);
    }

    @Override
    public JSONObject b(ex7 ex7Var, StrVariableTemplate strVariableTemplate) {
        y45.j(ex7Var, "context");
        y45.j(strVariableTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        ra5.G(ex7Var, jSONObject, "name", strVariableTemplate.a);
        tb5.v(ex7Var, jSONObject, "type", "string");
        ra5.G(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, strVariableTemplate.b);
        return jSONObject;
    }
}
