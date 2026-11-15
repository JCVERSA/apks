package defpackage;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div2.IntegerVariable;
import com.yandex.div2.IntegerVariableTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class b35 implements lga {
    public final JsonParserComponent a;

    public b35(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public IntegerVariable a(ex7 ex7Var, IntegerVariableTemplate integerVariableTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(integerVariableTemplate, "template");
        y45.j(jSONObject, "data");
        Object objA = sa5.a(ex7Var, integerVariableTemplate.a, jSONObject, "name");
        y45.i(objA, "resolve(context, template.name, data, \"name\")");
        Object objB = sa5.b(ex7Var, integerVariableTemplate.b, jSONObject, ES6Iterator.VALUE_PROPERTY, ParsingConvertersKt.h);
        y45.i(objB, "resolve(context, templat…, \"value\", NUMBER_TO_INT)");
        return new IntegerVariable((String) objA, ((Number) objB).longValue());
    }
}
