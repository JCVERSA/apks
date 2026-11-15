package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.ex7;
import defpackage.fx7;
import defpackage.gfa;
import defpackage.pd9;
import defpackage.ra5;
import defpackage.tp3;
import defpackage.y45;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class t2 implements pd9, gfa {
    public final JsonParserComponent a;

    public t2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivPatchTemplate.ChangeTemplate c(ex7 ex7Var, DivPatchTemplate.ChangeTemplate changeTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        boolean zC = ex7Var.c();
        ex7 ex7VarC = fx7.c(ex7Var);
        tp3 tp3VarC = ra5.c(ex7VarC, jSONObject, TtmlNode.ATTR_ID, zC, changeTemplate != null ? changeTemplate.a : null);
        y45.i(tp3VarC, "readField(context, data,…llowOverride, parent?.id)");
        tp3 tp3VarZ = ra5.z(ex7VarC, jSONObject, "items", zC, changeTemplate != null ? changeTemplate.b : null, this.a.K4());
        y45.i(tp3VarZ, "readOptionalListField(co…nt.divJsonTemplateParser)");
        return new DivPatchTemplate.ChangeTemplate(tp3VarC, tp3VarZ);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivPatchTemplate.ChangeTemplate changeTemplate) {
        y45.j(ex7Var, "context");
        y45.j(changeTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        ra5.G(ex7Var, jSONObject, TtmlNode.ATTR_ID, changeTemplate.a);
        ra5.K(ex7Var, jSONObject, "items", changeTemplate.b, this.a.K4());
        return jSONObject;
    }
}
