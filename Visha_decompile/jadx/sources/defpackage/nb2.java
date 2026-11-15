package defpackage;

import com.yandex.div2.DictValueTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class nb2 implements pd9, gfa {
    public final JsonParserComponent a;

    public nb2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DictValueTemplate c(ex7 ex7Var, DictValueTemplate dictValueTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        tp3 tp3VarH = ra5.h(fx7.c(ex7Var), jSONObject, ES6Iterator.VALUE_PROPERTY, acb.h, ex7Var.c(), dictValueTemplate != null ? dictValueTemplate.a : null);
        y45.i(tp3VarH, "readFieldWithExpression(…wOverride, parent?.value)");
        return new DictValueTemplate(tp3VarH);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DictValueTemplate dictValueTemplate) {
        y45.j(ex7Var, "context");
        y45.j(dictValueTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.v(ex7Var, jSONObject, "type", "dict");
        ra5.D(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, dictValueTemplate.a);
        return jSONObject;
    }
}
