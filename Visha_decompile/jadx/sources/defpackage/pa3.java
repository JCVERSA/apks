package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div2.EndDestination;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class pa3 implements pd9, w92 {
    public final JsonParserComponent a;

    public pa3(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public EndDestination a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        return new EndDestination();
    }

    @Override
    public JSONObject b(ex7 ex7Var, EndDestination endDestination) {
        y45.j(ex7Var, "context");
        y45.j(endDestination, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.v(ex7Var, jSONObject, "type", TtmlNode.END);
        return jSONObject;
    }
}
