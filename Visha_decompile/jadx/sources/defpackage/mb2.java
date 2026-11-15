package defpackage;

import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DictValue;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class mb2 implements pd9, w92 {
    public final JsonParserComponent a;

    public mb2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DictValue a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        Expression expressionD = pa5.d(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, acb.h);
        y45.i(expressionD, "readExpression(context, …value\", TYPE_HELPER_DICT)");
        return new DictValue(expressionD);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DictValue dictValue) {
        y45.j(ex7Var, "context");
        y45.j(dictValue, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.v(ex7Var, jSONObject, "type", "dict");
        pa5.p(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, dictValue.a);
        return jSONObject;
    }
}
