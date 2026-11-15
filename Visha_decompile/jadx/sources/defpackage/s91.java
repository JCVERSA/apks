package defpackage;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.ColorValue;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class s91 implements pd9, w92 {
    public final JsonParserComponent a;

    public s91(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public ColorValue a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        Expression expressionE = pa5.e(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, acb.f, ParsingConvertersKt.b);
        y45.i(expressionE, "readExpression(context, …LOR, STRING_TO_COLOR_INT)");
        return new ColorValue(expressionE);
    }

    @Override
    public JSONObject b(ex7 ex7Var, ColorValue colorValue) {
        y45.j(ex7Var, "context");
        y45.j(colorValue, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.v(ex7Var, jSONObject, "type", "color");
        pa5.q(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, colorValue.a, ParsingConvertersKt.a);
        return jSONObject;
    }
}
