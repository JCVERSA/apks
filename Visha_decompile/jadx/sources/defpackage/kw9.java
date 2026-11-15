package defpackage;

import com.yandex.div2.JsonParserComponent;
import com.yandex.div2.StartDestination;
import com.yandex.div2.StartDestinationTemplate;
import org.json.JSONObject;

public final class kw9 implements lga {
    public final JsonParserComponent a;

    public kw9(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public StartDestination a(ex7 ex7Var, StartDestinationTemplate startDestinationTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(startDestinationTemplate, "template");
        y45.j(jSONObject, "data");
        return new StartDestination();
    }
}
