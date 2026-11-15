package defpackage;

import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivActionFocusElement;
import com.yandex.div2.DivActionFocusElementTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;

public final class bf2 implements lga {
    public final JsonParserComponent a;

    public bf2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivActionFocusElement a(ex7 ex7Var, DivActionFocusElementTemplate divActionFocusElementTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divActionFocusElementTemplate, "template");
        y45.j(jSONObject, "data");
        Expression expressionG = sa5.g(ex7Var, divActionFocusElementTemplate.a, jSONObject, "element_id", acb.c);
        y45.i(expressionG, "resolveExpression(contex…_id\", TYPE_HELPER_STRING)");
        return new DivActionFocusElement(expressionG);
    }
}
