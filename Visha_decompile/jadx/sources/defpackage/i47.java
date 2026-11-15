package defpackage;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div2.JsonParserComponent;
import com.yandex.div2.NumberVariable;
import com.yandex.div2.NumberVariableTemplate;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class i47 implements lga {
    public final JsonParserComponent a;

    public i47(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public NumberVariable a(ex7 ex7Var, NumberVariableTemplate numberVariableTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(numberVariableTemplate, "template");
        y45.j(jSONObject, "data");
        Object objA = sa5.a(ex7Var, numberVariableTemplate.a, jSONObject, "name");
        y45.i(objA, "resolve(context, template.name, data, \"name\")");
        Object objB = sa5.b(ex7Var, numberVariableTemplate.b, jSONObject, ES6Iterator.VALUE_PROPERTY, ParsingConvertersKt.g);
        y45.i(objB, "resolve(context, templat…value\", NUMBER_TO_DOUBLE)");
        return new NumberVariable((String) objA, ((Number) objB).doubleValue());
    }
}
