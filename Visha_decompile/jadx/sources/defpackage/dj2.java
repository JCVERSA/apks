package defpackage;

import com.yandex.div2.DivFilterRtlMirror;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class dj2 implements pd9, w92 {
    public final JsonParserComponent a;

    public dj2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivFilterRtlMirror a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        return new DivFilterRtlMirror();
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivFilterRtlMirror divFilterRtlMirror) {
        y45.j(ex7Var, "context");
        y45.j(divFilterRtlMirror, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.v(ex7Var, jSONObject, "type", "rtl_mirror");
        return jSONObject;
    }
}
