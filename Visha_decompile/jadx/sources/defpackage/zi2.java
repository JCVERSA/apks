package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div2.DivExtension;
import com.yandex.div2.DivExtensionTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;

public final class zi2 implements lga {
    public final JsonParserComponent a;

    public zi2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivExtension a(ex7 ex7Var, DivExtensionTemplate divExtensionTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divExtensionTemplate, "template");
        y45.j(jSONObject, "data");
        Object objA = sa5.a(ex7Var, divExtensionTemplate.a, jSONObject, TtmlNode.ATTR_ID);
        y45.i(objA, "resolve(context, template.id, data, \"id\")");
        return new DivExtension((String) objA, (JSONObject) sa5.m(ex7Var, divExtensionTemplate.b, jSONObject, "params"));
    }
}
