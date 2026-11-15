package defpackage;

import android.net.Uri;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div2.JsonParserComponent;
import com.yandex.div2.UrlVariable;
import com.yandex.div2.UrlVariableTemplate;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class kjb implements lga {
    public final JsonParserComponent a;

    public kjb(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public UrlVariable a(ex7 ex7Var, UrlVariableTemplate urlVariableTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(urlVariableTemplate, "template");
        y45.j(jSONObject, "data");
        Object objA = sa5.a(ex7Var, urlVariableTemplate.a, jSONObject, "name");
        y45.i(objA, "resolve(context, template.name, data, \"name\")");
        Object objB = sa5.b(ex7Var, urlVariableTemplate.b, jSONObject, ES6Iterator.VALUE_PROPERTY, ParsingConvertersKt.e);
        y45.i(objB, "resolve(context, templat…ata, \"value\", ANY_TO_URI)");
        return new UrlVariable((String) objA, (Uri) objB);
    }
}
