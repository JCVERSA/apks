package defpackage;

import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivActionDictSetValue;
import com.yandex.div2.DivActionDictSetValueTemplate;
import com.yandex.div2.DivTypedValue;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class ve2 implements lga {
    public final JsonParserComponent a;

    public ve2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivActionDictSetValue a(ex7 ex7Var, DivActionDictSetValueTemplate divActionDictSetValueTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divActionDictSetValueTemplate, "template");
        y45.j(jSONObject, "data");
        tp3 tp3Var = divActionDictSetValueTemplate.a;
        zbb zbbVar = acb.c;
        Expression expressionG = sa5.g(ex7Var, tp3Var, jSONObject, "key", zbbVar);
        y45.i(expressionG, "resolveExpression(contex…key\", TYPE_HELPER_STRING)");
        DivTypedValue divTypedValue = (DivTypedValue) sa5.p(ex7Var, divActionDictSetValueTemplate.b, jSONObject, ES6Iterator.VALUE_PROPERTY, this.a.d9(), this.a.b9());
        Expression expressionG2 = sa5.g(ex7Var, divActionDictSetValueTemplate.c, jSONObject, "variable_name", zbbVar);
        y45.i(expressionG2, "resolveExpression(contex…ame\", TYPE_HELPER_STRING)");
        return new DivActionDictSetValue(expressionG, divTypedValue, expressionG2);
    }
}
