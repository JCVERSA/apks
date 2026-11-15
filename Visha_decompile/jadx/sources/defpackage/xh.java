package defpackage;

import com.yandex.div2.ArrayValueTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class xh implements pd9, gfa {
    public final JsonParserComponent a;

    public xh(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public ArrayValueTemplate c(ex7 ex7Var, ArrayValueTemplate arrayValueTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        tp3 tp3VarH = ra5.h(fx7.c(ex7Var), jSONObject, ES6Iterator.VALUE_PROPERTY, acb.g, ex7Var.c(), arrayValueTemplate != null ? arrayValueTemplate.a : null);
        y45.i(tp3VarH, "readFieldWithExpression(…wOverride, parent?.value)");
        return new ArrayValueTemplate(tp3VarH);
    }

    @Override
    public JSONObject b(ex7 ex7Var, ArrayValueTemplate arrayValueTemplate) {
        y45.j(ex7Var, "context");
        y45.j(arrayValueTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.v(ex7Var, jSONObject, "type", "array");
        ra5.D(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, arrayValueTemplate.a);
        return jSONObject;
    }
}
