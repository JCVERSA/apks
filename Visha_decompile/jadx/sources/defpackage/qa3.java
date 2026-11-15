package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div2.EndDestinationTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class qa3 implements pd9, gfa {
    public final JsonParserComponent a;

    public qa3(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public EndDestinationTemplate c(ex7 ex7Var, EndDestinationTemplate endDestinationTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        return new EndDestinationTemplate();
    }

    @Override
    public JSONObject b(ex7 ex7Var, EndDestinationTemplate endDestinationTemplate) {
        y45.j(ex7Var, "context");
        y45.j(endDestinationTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.v(ex7Var, jSONObject, "type", TtmlNode.END);
        return jSONObject;
    }
}
