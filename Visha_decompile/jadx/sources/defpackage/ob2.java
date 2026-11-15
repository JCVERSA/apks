package defpackage;

import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DictValue;
import com.yandex.div2.DictValueTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class ob2 implements lga {
    public final JsonParserComponent a;

    public ob2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DictValue a(ex7 ex7Var, DictValueTemplate dictValueTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(dictValueTemplate, "template");
        y45.j(jSONObject, "data");
        Expression expressionG = sa5.g(ex7Var, dictValueTemplate.a, jSONObject, ES6Iterator.VALUE_PROPERTY, acb.h);
        y45.i(expressionG, "resolveExpression(contex…value\", TYPE_HELPER_DICT)");
        return new DictValue(expressionG);
    }
}
