package defpackage;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivShape;
import com.yandex.div2.DivShapeDrawable;
import com.yandex.div2.DivStroke;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class tp2 implements pd9, w92 {
    public final JsonParserComponent a;

    public tp2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivShapeDrawable a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        Expression expressionE = pa5.e(ex7Var, jSONObject, "color", acb.f, ParsingConvertersKt.b);
        y45.i(expressionE, "readExpression(context, …LOR, STRING_TO_COLOR_INT)");
        Object objG = tb5.g(ex7Var, jSONObject, "shape", this.a.S6());
        y45.i(objG, "read(context, data, \"sha…divShapeJsonEntityParser)");
        return new DivShapeDrawable(expressionE, (DivShape) objG, (DivStroke) tb5.n(ex7Var, jSONObject, "stroke", this.a.w7()));
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivShapeDrawable divShapeDrawable) {
        y45.j(ex7Var, "context");
        y45.j(divShapeDrawable, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        pa5.q(ex7Var, jSONObject, "color", divShapeDrawable.a, ParsingConvertersKt.a);
        tb5.x(ex7Var, jSONObject, "shape", divShapeDrawable.b, this.a.S6());
        tb5.x(ex7Var, jSONObject, "stroke", divShapeDrawable.c, this.a.w7());
        tb5.v(ex7Var, jSONObject, "type", "shape_drawable");
        return jSONObject;
    }
}
