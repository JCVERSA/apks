package defpackage;

import com.yandex.div2.DivDownloadCallbacks;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class ki2 implements pd9, w92 {
    public final JsonParserComponent a;

    public ki2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivDownloadCallbacks a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        return new DivDownloadCallbacks(tb5.r(ex7Var, jSONObject, "on_fail_actions", this.a.u0()), tb5.r(ex7Var, jSONObject, "on_success_actions", this.a.u0()));
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivDownloadCallbacks divDownloadCallbacks) {
        y45.j(ex7Var, "context");
        y45.j(divDownloadCallbacks, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.z(ex7Var, jSONObject, "on_fail_actions", divDownloadCallbacks.a, this.a.u0());
        tb5.z(ex7Var, jSONObject, "on_success_actions", divDownloadCallbacks.b, this.a.u0());
        return jSONObject;
    }
}
