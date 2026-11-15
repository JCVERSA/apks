package defpackage;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div2.DivWrapContentSizeTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class ew2 implements pd9, gfa {
    public final JsonParserComponent a;

    public ew2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivWrapContentSizeTemplate c(ex7 ex7Var, DivWrapContentSizeTemplate divWrapContentSizeTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        boolean zC = ex7Var.c();
        ex7 ex7VarC = fx7.c(ex7Var);
        tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "constrained", acb.a, zC, divWrapContentSizeTemplate != null ? divWrapContentSizeTemplate.a : null, ParsingConvertersKt.f);
        y45.i(tp3VarU, "readOptionalFieldWithExp…strained, ANY_TO_BOOLEAN)");
        tp3 tp3VarS = ra5.s(ex7VarC, jSONObject, "max_size", zC, divWrapContentSizeTemplate != null ? divWrapContentSizeTemplate.b : null, this.a.u9());
        y45.i(tp3VarS, "readOptionalField(contex…ntSizeJsonTemplateParser)");
        tp3 tp3VarS2 = ra5.s(ex7VarC, jSONObject, "min_size", zC, divWrapContentSizeTemplate != null ? divWrapContentSizeTemplate.c : null, this.a.u9());
        y45.i(tp3VarS2, "readOptionalField(contex…ntSizeJsonTemplateParser)");
        return new DivWrapContentSizeTemplate(tp3VarU, tp3VarS, tp3VarS2);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivWrapContentSizeTemplate divWrapContentSizeTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divWrapContentSizeTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        ra5.D(ex7Var, jSONObject, "constrained", divWrapContentSizeTemplate.a);
        ra5.I(ex7Var, jSONObject, "max_size", divWrapContentSizeTemplate.b, this.a.u9());
        ra5.I(ex7Var, jSONObject, "min_size", divWrapContentSizeTemplate.c, this.a.u9());
        tb5.v(ex7Var, jSONObject, "type", "wrap_content");
        return jSONObject;
    }
}
