package defpackage;

import com.yandex.div2.DivFocusTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class mj2 implements pd9, gfa {
    public final JsonParserComponent a;

    public mj2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivFocusTemplate c(ex7 ex7Var, DivFocusTemplate divFocusTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        boolean zC = ex7Var.c();
        ex7 ex7VarC = fx7.c(ex7Var);
        tp3 tp3VarZ = ra5.z(ex7VarC, jSONObject, "background", zC, divFocusTemplate != null ? divFocusTemplate.a : null, this.a.D1());
        y45.i(tp3VarZ, "readOptionalListField(co…groundJsonTemplateParser)");
        tp3 tp3VarS = ra5.s(ex7VarC, jSONObject, "border", zC, divFocusTemplate != null ? divFocusTemplate.b : null, this.a.J1());
        y45.i(tp3VarS, "readOptionalField(contex…BorderJsonTemplateParser)");
        tp3 tp3VarS2 = ra5.s(ex7VarC, jSONObject, "next_focus_ids", zC, divFocusTemplate != null ? divFocusTemplate.c : null, this.a.A3());
        y45.i(tp3VarS2, "readOptionalField(contex…cusIdsJsonTemplateParser)");
        tp3 tp3VarZ2 = ra5.z(ex7VarC, jSONObject, "on_blur", zC, divFocusTemplate != null ? divFocusTemplate.d : null, this.a.v0());
        y45.i(tp3VarZ2, "readOptionalListField(co…ActionJsonTemplateParser)");
        tp3 tp3VarZ3 = ra5.z(ex7VarC, jSONObject, "on_focus", zC, divFocusTemplate != null ? divFocusTemplate.e : null, this.a.v0());
        y45.i(tp3VarZ3, "readOptionalListField(co…ActionJsonTemplateParser)");
        return new DivFocusTemplate(tp3VarZ, tp3VarS, tp3VarS2, tp3VarZ2, tp3VarZ3);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivFocusTemplate divFocusTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divFocusTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        ra5.K(ex7Var, jSONObject, "background", divFocusTemplate.a, this.a.D1());
        ra5.I(ex7Var, jSONObject, "border", divFocusTemplate.b, this.a.J1());
        ra5.I(ex7Var, jSONObject, "next_focus_ids", divFocusTemplate.c, this.a.A3());
        ra5.K(ex7Var, jSONObject, "on_blur", divFocusTemplate.d, this.a.v0());
        ra5.K(ex7Var, jSONObject, "on_focus", divFocusTemplate.e, this.a.v0());
        return jSONObject;
    }
}
