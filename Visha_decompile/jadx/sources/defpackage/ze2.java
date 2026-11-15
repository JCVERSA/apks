package defpackage;

import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivActionFocusElement;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class ze2 implements pd9, w92 {
    public final JsonParserComponent a;

    public ze2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivActionFocusElement a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        Expression expressionD = pa5.d(ex7Var, jSONObject, "element_id", acb.c);
        y45.i(expressionD, "readExpression(context, …_id\", TYPE_HELPER_STRING)");
        return new DivActionFocusElement(expressionD);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivActionFocusElement divActionFocusElement) {
        y45.j(ex7Var, "context");
        y45.j(divActionFocusElement, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        pa5.p(ex7Var, jSONObject, "element_id", divActionFocusElement.a);
        tb5.v(ex7Var, jSONObject, "type", "focus_element");
        return jSONObject;
    }
}
