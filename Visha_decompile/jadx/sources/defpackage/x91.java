package defpackage;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div2.ColorVariable;
import com.yandex.div2.ColorVariableTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class x91 implements lga {
    public final JsonParserComponent a;

    public x91(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public ColorVariable a(ex7 ex7Var, ColorVariableTemplate colorVariableTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(colorVariableTemplate, "template");
        y45.j(jSONObject, "data");
        Object objA = sa5.a(ex7Var, colorVariableTemplate.a, jSONObject, "name");
        y45.i(objA, "resolve(context, template.name, data, \"name\")");
        Object objB = sa5.b(ex7Var, colorVariableTemplate.b, jSONObject, ES6Iterator.VALUE_PROPERTY, ParsingConvertersKt.b);
        y45.i(objB, "resolve(context, templat…ue\", STRING_TO_COLOR_INT)");
        return new ColorVariable((String) objA, ((Number) objB).intValue());
    }
}
