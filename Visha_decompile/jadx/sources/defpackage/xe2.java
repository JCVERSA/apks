package defpackage;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div2.DivActionDownloadTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class xe2 implements pd9, gfa {
    public final JsonParserComponent a;

    public xe2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivActionDownloadTemplate c(ex7 ex7Var, DivActionDownloadTemplate divActionDownloadTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        boolean zC = ex7Var.c();
        ex7 ex7VarC = fx7.c(ex7Var);
        tp3 tp3VarZ = ra5.z(ex7VarC, jSONObject, "on_fail_actions", zC, divActionDownloadTemplate != null ? divActionDownloadTemplate.a : null, this.a.v0());
        y45.i(tp3VarZ, "readOptionalListField(co…ActionJsonTemplateParser)");
        tp3 tp3VarZ2 = ra5.z(ex7VarC, jSONObject, "on_success_actions", zC, divActionDownloadTemplate != null ? divActionDownloadTemplate.b : null, this.a.v0());
        y45.i(tp3VarZ2, "readOptionalListField(co…ActionJsonTemplateParser)");
        tp3 tp3VarI = ra5.i(ex7VarC, jSONObject, "url", acb.e, zC, divActionDownloadTemplate != null ? divActionDownloadTemplate.c : null, ParsingConvertersKt.e);
        y45.i(tp3VarI, "readFieldWithExpression(… parent?.url, ANY_TO_URI)");
        return new DivActionDownloadTemplate(tp3VarZ, tp3VarZ2, tp3VarI);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivActionDownloadTemplate divActionDownloadTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divActionDownloadTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        ra5.K(ex7Var, jSONObject, "on_fail_actions", divActionDownloadTemplate.a, this.a.v0());
        ra5.K(ex7Var, jSONObject, "on_success_actions", divActionDownloadTemplate.b, this.a.v0());
        tb5.v(ex7Var, jSONObject, "type", "download");
        ra5.E(ex7Var, jSONObject, "url", divActionDownloadTemplate.c, ParsingConvertersKt.c);
        return jSONObject;
    }
}
