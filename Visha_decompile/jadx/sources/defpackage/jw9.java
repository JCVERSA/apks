package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div2.JsonParserComponent;
import com.yandex.div2.StartDestinationTemplate;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class jw9 implements pd9, gfa {
    public final JsonParserComponent a;

    public jw9(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public StartDestinationTemplate c(ex7 ex7Var, StartDestinationTemplate startDestinationTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        return new StartDestinationTemplate();
    }

    @Override
    public JSONObject b(ex7 ex7Var, StartDestinationTemplate startDestinationTemplate) {
        y45.j(ex7Var, "context");
        y45.j(startDestinationTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.v(ex7Var, jSONObject, "type", TtmlNode.START);
        return jSONObject;
    }
}
