package defpackage;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivSolidBackground;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class hq2 implements pd9, w92 {
    public final JsonParserComponent a;

    public hq2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivSolidBackground a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        Expression expressionE = pa5.e(ex7Var, jSONObject, "color", acb.f, ParsingConvertersKt.b);
        y45.i(expressionE, "readExpression(context, …LOR, STRING_TO_COLOR_INT)");
        return new DivSolidBackground(expressionE);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivSolidBackground divSolidBackground) {
        y45.j(ex7Var, "context");
        y45.j(divSolidBackground, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        pa5.q(ex7Var, jSONObject, "color", divSolidBackground.a, ParsingConvertersKt.a);
        tb5.v(ex7Var, jSONObject, "type", "solid");
        return jSONObject;
    }
}
