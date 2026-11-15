package defpackage;

import com.yandex.div2.DivDownloadCallbacksTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class li2 implements pd9, gfa {
    public final JsonParserComponent a;

    public li2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivDownloadCallbacksTemplate c(ex7 ex7Var, DivDownloadCallbacksTemplate divDownloadCallbacksTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        boolean zC = ex7Var.c();
        ex7 ex7VarC = fx7.c(ex7Var);
        tp3 tp3VarZ = ra5.z(ex7VarC, jSONObject, "on_fail_actions", zC, divDownloadCallbacksTemplate != null ? divDownloadCallbacksTemplate.a : null, this.a.v0());
        y45.i(tp3VarZ, "readOptionalListField(co…ActionJsonTemplateParser)");
        tp3 tp3VarZ2 = ra5.z(ex7VarC, jSONObject, "on_success_actions", zC, divDownloadCallbacksTemplate != null ? divDownloadCallbacksTemplate.b : null, this.a.v0());
        y45.i(tp3VarZ2, "readOptionalListField(co…ActionJsonTemplateParser)");
        return new DivDownloadCallbacksTemplate(tp3VarZ, tp3VarZ2);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivDownloadCallbacksTemplate divDownloadCallbacksTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divDownloadCallbacksTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        ra5.K(ex7Var, jSONObject, "on_fail_actions", divDownloadCallbacksTemplate.a, this.a.v0());
        ra5.K(ex7Var, jSONObject, "on_success_actions", divDownloadCallbacksTemplate.b, this.a.v0());
        return jSONObject;
    }
}
