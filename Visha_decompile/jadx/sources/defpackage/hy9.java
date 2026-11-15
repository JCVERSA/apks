package defpackage;

import com.yandex.div2.JsonParserComponent;
import com.yandex.div2.StrValueTemplate;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class hy9 implements pd9, gfa {
    public final JsonParserComponent a;

    public hy9(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public StrValueTemplate c(ex7 ex7Var, StrValueTemplate strValueTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        tp3 tp3VarH = ra5.h(fx7.c(ex7Var), jSONObject, ES6Iterator.VALUE_PROPERTY, acb.c, ex7Var.c(), strValueTemplate != null ? strValueTemplate.a : null);
        y45.i(tp3VarH, "readFieldWithExpression(…wOverride, parent?.value)");
        return new StrValueTemplate(tp3VarH);
    }

    @Override
    public JSONObject b(ex7 ex7Var, StrValueTemplate strValueTemplate) {
        y45.j(ex7Var, "context");
        y45.j(strValueTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.v(ex7Var, jSONObject, "type", "string");
        ra5.D(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, strValueTemplate.a);
        return jSONObject;
    }
}
