package defpackage;

import com.lzy.okgo.model.Progress;
import com.yandex.div2.DivActionSubmitTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class pf2 implements pd9, gfa {
    public final JsonParserComponent a;

    public pf2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivActionSubmitTemplate c(ex7 ex7Var, DivActionSubmitTemplate divActionSubmitTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        boolean zC = ex7Var.c();
        ex7 ex7VarC = fx7.c(ex7Var);
        tp3 tp3VarH = ra5.h(ex7VarC, jSONObject, "container_id", acb.c, zC, divActionSubmitTemplate != null ? divActionSubmitTemplate.a : null);
        y45.i(tp3VarH, "readFieldWithExpression(…ide, parent?.containerId)");
        tp3 tp3VarZ = ra5.z(ex7VarC, jSONObject, "on_fail_actions", zC, divActionSubmitTemplate != null ? divActionSubmitTemplate.b : null, this.a.v0());
        y45.i(tp3VarZ, "readOptionalListField(co…ActionJsonTemplateParser)");
        tp3 tp3VarZ2 = ra5.z(ex7VarC, jSONObject, "on_success_actions", zC, divActionSubmitTemplate != null ? divActionSubmitTemplate.c : null, this.a.v0());
        y45.i(tp3VarZ2, "readOptionalListField(co…ActionJsonTemplateParser)");
        tp3 tp3VarF = ra5.f(ex7VarC, jSONObject, Progress.REQUEST, zC, divActionSubmitTemplate != null ? divActionSubmitTemplate.d : null, this.a.c1());
        y45.i(tp3VarF, "readField(context, data,…equestJsonTemplateParser)");
        return new DivActionSubmitTemplate(tp3VarH, tp3VarZ, tp3VarZ2, tp3VarF);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivActionSubmitTemplate divActionSubmitTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divActionSubmitTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        ra5.D(ex7Var, jSONObject, "container_id", divActionSubmitTemplate.a);
        ra5.K(ex7Var, jSONObject, "on_fail_actions", divActionSubmitTemplate.b, this.a.v0());
        ra5.K(ex7Var, jSONObject, "on_success_actions", divActionSubmitTemplate.c, this.a.v0());
        ra5.I(ex7Var, jSONObject, Progress.REQUEST, divActionSubmitTemplate.d, this.a.c1());
        tb5.v(ex7Var, jSONObject, "type", "submit");
        return jSONObject;
    }
}
