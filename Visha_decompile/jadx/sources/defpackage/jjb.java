package defpackage;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div2.JsonParserComponent;
import com.yandex.div2.UrlVariableTemplate;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class jjb implements pd9, gfa {
    public final JsonParserComponent a;

    public jjb(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public UrlVariableTemplate c(ex7 ex7Var, UrlVariableTemplate urlVariableTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        boolean zC = ex7Var.c();
        ex7 ex7VarC = fx7.c(ex7Var);
        tp3 tp3VarC = ra5.c(ex7VarC, jSONObject, "name", zC, urlVariableTemplate != null ? urlVariableTemplate.a : null);
        y45.i(tp3VarC, "readField(context, data,…owOverride, parent?.name)");
        tp3 tp3VarD = ra5.d(ex7VarC, jSONObject, ES6Iterator.VALUE_PROPERTY, zC, urlVariableTemplate != null ? urlVariableTemplate.b : null, ParsingConvertersKt.e);
        y45.i(tp3VarD, "readField(context, data,…arent?.value, ANY_TO_URI)");
        return new UrlVariableTemplate(tp3VarC, tp3VarD);
    }

    @Override
    public JSONObject b(ex7 ex7Var, UrlVariableTemplate urlVariableTemplate) {
        y45.j(ex7Var, "context");
        y45.j(urlVariableTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        ra5.G(ex7Var, jSONObject, "name", urlVariableTemplate.a);
        tb5.v(ex7Var, jSONObject, "type", "url");
        ra5.H(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, urlVariableTemplate.b, ParsingConvertersKt.c);
        return jSONObject;
    }
}
