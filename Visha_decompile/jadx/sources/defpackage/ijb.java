package defpackage;

import android.net.Uri;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div2.JsonParserComponent;
import com.yandex.div2.UrlVariable;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class ijb implements pd9, w92 {
    public final JsonParserComponent a;

    public ijb(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public UrlVariable a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        Object objD = tb5.d(ex7Var, jSONObject, "name");
        y45.i(objD, "read(context, data, \"name\")");
        Object objE = tb5.e(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, ParsingConvertersKt.e);
        y45.i(objE, "read(context, data, \"value\", ANY_TO_URI)");
        return new UrlVariable((String) objD, (Uri) objE);
    }

    @Override
    public JSONObject b(ex7 ex7Var, UrlVariable urlVariable) {
        y45.j(ex7Var, "context");
        y45.j(urlVariable, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.v(ex7Var, jSONObject, "name", urlVariable.a);
        tb5.v(ex7Var, jSONObject, "type", "url");
        tb5.w(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, urlVariable.b, ParsingConvertersKt.c);
        return jSONObject;
    }
}
