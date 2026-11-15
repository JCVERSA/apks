package defpackage;

import com.yandex.div2.DivInfinityCount;
import com.yandex.div2.DivInfinityCountTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;

public final class il2 implements lga {
    public final JsonParserComponent a;

    public il2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivInfinityCount a(ex7 ex7Var, DivInfinityCountTemplate divInfinityCountTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divInfinityCountTemplate, "template");
        y45.j(jSONObject, "data");
        return new DivInfinityCount();
    }
}
