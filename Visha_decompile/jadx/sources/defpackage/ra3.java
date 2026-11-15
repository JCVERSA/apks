package defpackage;

import com.yandex.div2.EndDestination;
import com.yandex.div2.EndDestinationTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;

public final class ra3 implements lga {
    public final JsonParserComponent a;

    public ra3(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public EndDestination a(ex7 ex7Var, EndDestinationTemplate endDestinationTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(endDestinationTemplate, "template");
        y45.j(jSONObject, "data");
        return new EndDestination();
    }
}
