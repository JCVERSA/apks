package defpackage;

import com.yandex.div2.DivDownloadCallbacks;
import com.yandex.div2.DivDownloadCallbacksTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;

public final class mi2 implements lga {
    public final JsonParserComponent a;

    public mi2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivDownloadCallbacks a(ex7 ex7Var, DivDownloadCallbacksTemplate divDownloadCallbacksTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divDownloadCallbacksTemplate, "template");
        y45.j(jSONObject, "data");
        return new DivDownloadCallbacks(sa5.B(ex7Var, divDownloadCallbacksTemplate.a, jSONObject, "on_fail_actions", this.a.w0(), this.a.u0()), sa5.B(ex7Var, divDownloadCallbacksTemplate.b, jSONObject, "on_success_actions", this.a.w0(), this.a.u0()));
    }
}
