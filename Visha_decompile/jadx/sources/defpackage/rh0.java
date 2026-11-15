package defpackage;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div2.BoolVariable;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class rh0 implements pd9, w92 {
    public final JsonParserComponent a;

    public rh0(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public BoolVariable a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        Object objD = tb5.d(ex7Var, jSONObject, "name");
        y45.i(objD, "read(context, data, \"name\")");
        Object objE = tb5.e(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, ParsingConvertersKt.f);
        y45.i(objE, "read(context, data, \"value\", ANY_TO_BOOLEAN)");
        return new BoolVariable((String) objD, ((Boolean) objE).booleanValue());
    }

    @Override
    public JSONObject b(ex7 ex7Var, BoolVariable boolVariable) {
        y45.j(ex7Var, "context");
        y45.j(boolVariable, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.v(ex7Var, jSONObject, "name", boolVariable.a);
        tb5.v(ex7Var, jSONObject, "type", TypedValues.Custom.S_BOOLEAN);
        tb5.v(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, Boolean.valueOf(boolVariable.b));
        return jSONObject;
    }
}
