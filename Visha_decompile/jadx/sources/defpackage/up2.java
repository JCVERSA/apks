package defpackage;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div2.DivShapeDrawableTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class up2 implements pd9, gfa {
    public final JsonParserComponent a;

    public up2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivShapeDrawableTemplate c(ex7 ex7Var, DivShapeDrawableTemplate divShapeDrawableTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        boolean zC = ex7Var.c();
        ex7 ex7VarC = fx7.c(ex7Var);
        tp3 tp3VarI = ra5.i(ex7VarC, jSONObject, "color", acb.f, zC, divShapeDrawableTemplate != null ? divShapeDrawableTemplate.a : null, ParsingConvertersKt.b);
        y45.i(tp3VarI, "readFieldWithExpression(…lor, STRING_TO_COLOR_INT)");
        tp3 tp3VarF = ra5.f(ex7VarC, jSONObject, "shape", zC, divShapeDrawableTemplate != null ? divShapeDrawableTemplate.b : null, this.a.T6());
        y45.i(tp3VarF, "readField(context, data,…vShapeJsonTemplateParser)");
        tp3 tp3VarS = ra5.s(ex7VarC, jSONObject, "stroke", zC, divShapeDrawableTemplate != null ? divShapeDrawableTemplate.c : null, this.a.x7());
        y45.i(tp3VarS, "readOptionalField(contex…StrokeJsonTemplateParser)");
        return new DivShapeDrawableTemplate(tp3VarI, tp3VarF, tp3VarS);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivShapeDrawableTemplate divShapeDrawableTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divShapeDrawableTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        ra5.E(ex7Var, jSONObject, "color", divShapeDrawableTemplate.a, ParsingConvertersKt.a);
        ra5.I(ex7Var, jSONObject, "shape", divShapeDrawableTemplate.b, this.a.T6());
        ra5.I(ex7Var, jSONObject, "stroke", divShapeDrawableTemplate.c, this.a.x7());
        tb5.v(ex7Var, jSONObject, "type", "shape_drawable");
        return jSONObject;
    }
}
