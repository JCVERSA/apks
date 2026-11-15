package defpackage;

import com.yandex.div2.DivActionFocusElementTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class af2 implements pd9, gfa {
    public final JsonParserComponent a;

    public af2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivActionFocusElementTemplate c(ex7 ex7Var, DivActionFocusElementTemplate divActionFocusElementTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        tp3 tp3VarH = ra5.h(fx7.c(ex7Var), jSONObject, "element_id", acb.c, ex7Var.c(), divActionFocusElementTemplate != null ? divActionFocusElementTemplate.a : null);
        y45.i(tp3VarH, "readFieldWithExpression(…rride, parent?.elementId)");
        return new DivActionFocusElementTemplate(tp3VarH);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivActionFocusElementTemplate divActionFocusElementTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divActionFocusElementTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        ra5.D(ex7Var, jSONObject, "element_id", divActionFocusElementTemplate.a);
        tb5.v(ex7Var, jSONObject, "type", "focus_element");
        return jSONObject;
    }
}
