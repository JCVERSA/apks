package defpackage;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div2.ContentUrlTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class hh1 implements pd9, gfa {
    public final JsonParserComponent a;

    public hh1(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public ContentUrlTemplate c(ex7 ex7Var, ContentUrlTemplate contentUrlTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        tp3 tp3VarI = ra5.i(fx7.c(ex7Var), jSONObject, ES6Iterator.VALUE_PROPERTY, acb.e, ex7Var.c(), contentUrlTemplate != null ? contentUrlTemplate.a : null, ParsingConvertersKt.e);
        y45.i(tp3VarI, "readFieldWithExpression(…arent?.value, ANY_TO_URI)");
        return new ContentUrlTemplate(tp3VarI);
    }

    @Override
    public JSONObject b(ex7 ex7Var, ContentUrlTemplate contentUrlTemplate) {
        y45.j(ex7Var, "context");
        y45.j(contentUrlTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.v(ex7Var, jSONObject, "type", "url");
        ra5.E(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, contentUrlTemplate.a, ParsingConvertersKt.c);
        return jSONObject;
    }
}
