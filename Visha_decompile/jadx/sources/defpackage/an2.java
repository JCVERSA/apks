package defpackage;

import com.yandex.div2.DivPageContentSizeTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class an2 implements pd9, gfa {
    public final JsonParserComponent a;

    public an2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivPageContentSizeTemplate c(ex7 ex7Var, DivPageContentSizeTemplate divPageContentSizeTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        return new DivPageContentSizeTemplate();
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivPageContentSizeTemplate divPageContentSizeTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divPageContentSizeTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.v(ex7Var, jSONObject, "type", "wrap_content");
        return jSONObject;
    }
}
