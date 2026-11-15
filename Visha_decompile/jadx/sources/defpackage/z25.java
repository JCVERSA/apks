package defpackage;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div2.IntegerVariable;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class z25 implements pd9, w92 {
    public final JsonParserComponent a;

    public z25(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public IntegerVariable a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        Object objD = tb5.d(ex7Var, jSONObject, "name");
        y45.i(objD, "read(context, data, \"name\")");
        Object objE = tb5.e(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, ParsingConvertersKt.h);
        y45.i(objE, "read(context, data, \"value\", NUMBER_TO_INT)");
        return new IntegerVariable((String) objD, ((Number) objE).longValue());
    }

    @Override
    public JSONObject b(ex7 ex7Var, IntegerVariable integerVariable) {
        y45.j(ex7Var, "context");
        y45.j(integerVariable, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.v(ex7Var, jSONObject, "name", integerVariable.a);
        tb5.v(ex7Var, jSONObject, "type", TypedValues.Custom.S_INT);
        tb5.v(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, Long.valueOf(integerVariable.b));
        return jSONObject;
    }
}
