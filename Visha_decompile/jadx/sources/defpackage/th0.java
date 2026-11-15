package defpackage;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div2.BoolVariable;
import com.yandex.div2.BoolVariableTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class th0 implements lga {
    public final JsonParserComponent a;

    public th0(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public BoolVariable a(ex7 ex7Var, BoolVariableTemplate boolVariableTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(boolVariableTemplate, "template");
        y45.j(jSONObject, "data");
        Object objA = sa5.a(ex7Var, boolVariableTemplate.a, jSONObject, "name");
        y45.i(objA, "resolve(context, template.name, data, \"name\")");
        Object objB = sa5.b(ex7Var, boolVariableTemplate.b, jSONObject, ES6Iterator.VALUE_PROPERTY, ParsingConvertersKt.f);
        y45.i(objB, "resolve(context, templat… \"value\", ANY_TO_BOOLEAN)");
        return new BoolVariable((String) objA, ((Boolean) objB).booleanValue());
    }
}
