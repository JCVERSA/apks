package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div2.JsonParserComponent;
import com.yandex.div2.StartDestination;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class iw9 implements pd9, w92 {
    public final JsonParserComponent a;

    public iw9(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public StartDestination a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        return new StartDestination();
    }

    @Override
    public JSONObject b(ex7 ex7Var, StartDestination startDestination) {
        y45.j(ex7Var, "context");
        y45.j(startDestination, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.v(ex7Var, jSONObject, "type", TtmlNode.START);
        return jSONObject;
    }
}
