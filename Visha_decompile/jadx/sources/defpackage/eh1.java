package defpackage;

import com.yandex.div2.ContentTextTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class eh1 implements pd9, gfa {
    public final JsonParserComponent a;

    public eh1(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public ContentTextTemplate c(ex7 ex7Var, ContentTextTemplate contentTextTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        tp3 tp3VarH = ra5.h(fx7.c(ex7Var), jSONObject, ES6Iterator.VALUE_PROPERTY, acb.c, ex7Var.c(), contentTextTemplate != null ? contentTextTemplate.a : null);
        y45.i(tp3VarH, "readFieldWithExpression(…wOverride, parent?.value)");
        return new ContentTextTemplate(tp3VarH);
    }

    @Override
    public JSONObject b(ex7 ex7Var, ContentTextTemplate contentTextTemplate) {
        y45.j(ex7Var, "context");
        y45.j(contentTextTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.v(ex7Var, jSONObject, "type", "text");
        ra5.D(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, contentTextTemplate.a);
        return jSONObject;
    }
}
