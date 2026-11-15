package defpackage;

import com.yandex.div2.DivPageContentSize;
import com.yandex.div2.DivPageContentSizeTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;

public final class bn2 implements lga {
    public final JsonParserComponent a;

    public bn2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivPageContentSize a(ex7 ex7Var, DivPageContentSizeTemplate divPageContentSizeTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divPageContentSizeTemplate, "template");
        y45.j(jSONObject, "data");
        return new DivPageContentSize();
    }
}
