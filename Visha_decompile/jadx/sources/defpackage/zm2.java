package defpackage;

import com.yandex.div2.DivPageContentSize;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class zm2 implements pd9, w92 {
    public final JsonParserComponent a;

    public zm2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivPageContentSize a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        return new DivPageContentSize();
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivPageContentSize divPageContentSize) {
        y45.j(ex7Var, "context");
        y45.j(divPageContentSize, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.v(ex7Var, jSONObject, "type", "wrap_content");
        return jSONObject;
    }
}
