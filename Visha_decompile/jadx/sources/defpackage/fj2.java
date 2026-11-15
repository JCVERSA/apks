package defpackage;

import com.yandex.div2.DivFilterRtlMirror;
import com.yandex.div2.DivFilterRtlMirrorTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;

public final class fj2 implements lga {
    public final JsonParserComponent a;

    public fj2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivFilterRtlMirror a(ex7 ex7Var, DivFilterRtlMirrorTemplate divFilterRtlMirrorTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divFilterRtlMirrorTemplate, "template");
        y45.j(jSONObject, "data");
        return new DivFilterRtlMirror();
    }
}
