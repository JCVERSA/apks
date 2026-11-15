package defpackage;

import com.yandex.div2.DivFilterRtlMirrorTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class ej2 implements pd9, gfa {
    public final JsonParserComponent a;

    public ej2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivFilterRtlMirrorTemplate c(ex7 ex7Var, DivFilterRtlMirrorTemplate divFilterRtlMirrorTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        return new DivFilterRtlMirrorTemplate();
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivFilterRtlMirrorTemplate divFilterRtlMirrorTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divFilterRtlMirrorTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.v(ex7Var, jSONObject, "type", "rtl_mirror");
        return jSONObject;
    }
}
