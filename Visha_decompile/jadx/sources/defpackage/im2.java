package defpackage;

import com.yandex.div2.DivLayoutProvider;
import com.yandex.div2.DivLayoutProviderTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;

public final class im2 implements lga {
    public final JsonParserComponent a;

    public im2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivLayoutProvider a(ex7 ex7Var, DivLayoutProviderTemplate divLayoutProviderTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divLayoutProviderTemplate, "template");
        y45.j(jSONObject, "data");
        return new DivLayoutProvider((String) sa5.m(ex7Var, divLayoutProviderTemplate.a, jSONObject, "height_variable_name"), (String) sa5.m(ex7Var, divLayoutProviderTemplate.b, jSONObject, "width_variable_name"));
    }
}
