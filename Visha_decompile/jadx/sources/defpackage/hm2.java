package defpackage;

import com.yandex.div2.DivLayoutProviderTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class hm2 implements pd9, gfa {
    public final JsonParserComponent a;

    public hm2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivLayoutProviderTemplate c(ex7 ex7Var, DivLayoutProviderTemplate divLayoutProviderTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        boolean zC = ex7Var.c();
        ex7 ex7VarC = fx7.c(ex7Var);
        tp3 tp3VarP = ra5.p(ex7VarC, jSONObject, "height_variable_name", zC, divLayoutProviderTemplate != null ? divLayoutProviderTemplate.a : null);
        y45.i(tp3VarP, "readOptionalField(contex…rent?.heightVariableName)");
        tp3 tp3VarP2 = ra5.p(ex7VarC, jSONObject, "width_variable_name", zC, divLayoutProviderTemplate != null ? divLayoutProviderTemplate.b : null);
        y45.i(tp3VarP2, "readOptionalField(contex…arent?.widthVariableName)");
        return new DivLayoutProviderTemplate(tp3VarP, tp3VarP2);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivLayoutProviderTemplate divLayoutProviderTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divLayoutProviderTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        ra5.G(ex7Var, jSONObject, "height_variable_name", divLayoutProviderTemplate.a);
        ra5.G(ex7Var, jSONObject, "width_variable_name", divLayoutProviderTemplate.b);
        return jSONObject;
    }
}
