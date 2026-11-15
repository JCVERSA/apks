package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div2.DivExtension;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class xi2 implements pd9, w92 {
    public final JsonParserComponent a;

    public xi2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivExtension a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        Object objD = tb5.d(ex7Var, jSONObject, TtmlNode.ATTR_ID);
        y45.i(objD, "read(context, data, \"id\")");
        return new DivExtension((String) objD, (JSONObject) tb5.k(ex7Var, jSONObject, "params"));
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivExtension divExtension) {
        y45.j(ex7Var, "context");
        y45.j(divExtension, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.v(ex7Var, jSONObject, TtmlNode.ATTR_ID, divExtension.a);
        tb5.v(ex7Var, jSONObject, "params", divExtension.b);
        return jSONObject;
    }
}
