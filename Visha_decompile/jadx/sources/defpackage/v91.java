package defpackage;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div2.ColorVariable;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class v91 implements pd9, w92 {
    public final JsonParserComponent a;

    public v91(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public ColorVariable a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        Object objD = tb5.d(ex7Var, jSONObject, "name");
        y45.i(objD, "read(context, data, \"name\")");
        Object objE = tb5.e(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, ParsingConvertersKt.b);
        y45.i(objE, "read(context, data, \"value\", STRING_TO_COLOR_INT)");
        return new ColorVariable((String) objD, ((Number) objE).intValue());
    }

    @Override
    public JSONObject b(ex7 ex7Var, ColorVariable colorVariable) {
        y45.j(ex7Var, "context");
        y45.j(colorVariable, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.v(ex7Var, jSONObject, "name", colorVariable.a);
        tb5.v(ex7Var, jSONObject, "type", "color");
        tb5.w(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, Integer.valueOf(colorVariable.b), ParsingConvertersKt.a);
        return jSONObject;
    }
}
