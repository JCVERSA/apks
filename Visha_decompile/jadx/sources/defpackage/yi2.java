package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div2.DivExtensionTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class yi2 implements pd9, gfa {
    public final JsonParserComponent a;

    public yi2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivExtensionTemplate c(ex7 ex7Var, DivExtensionTemplate divExtensionTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        boolean zC = ex7Var.c();
        ex7 ex7VarC = fx7.c(ex7Var);
        tp3 tp3VarC = ra5.c(ex7VarC, jSONObject, TtmlNode.ATTR_ID, zC, divExtensionTemplate != null ? divExtensionTemplate.a : null);
        y45.i(tp3VarC, "readField(context, data,…llowOverride, parent?.id)");
        tp3 tp3VarP = ra5.p(ex7VarC, jSONObject, "params", zC, divExtensionTemplate != null ? divExtensionTemplate.b : null);
        y45.i(tp3VarP, "readOptionalField(contex…Override, parent?.params)");
        return new DivExtensionTemplate(tp3VarC, tp3VarP);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivExtensionTemplate divExtensionTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divExtensionTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        ra5.G(ex7Var, jSONObject, TtmlNode.ATTR_ID, divExtensionTemplate.a);
        ra5.G(ex7Var, jSONObject, "params", divExtensionTemplate.b);
        return jSONObject;
    }
}
