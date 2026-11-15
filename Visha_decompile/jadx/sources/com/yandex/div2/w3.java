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

public final class w3 implements pd9, gfa {
    public final JsonParserComponent a;

    public w3(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivStateTemplate.StateTemplate c(ex7 ex7Var, DivStateTemplate.StateTemplate stateTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        boolean zC = ex7Var.c();
        ex7 ex7VarC = fx7.c(ex7Var);
        tp3 tp3VarS = ra5.s(ex7VarC, jSONObject, "animation_in", zC, stateTemplate != null ? stateTemplate.a : null, this.a.o1());
        y45.i(tp3VarS, "readOptionalField(contex…mationJsonTemplateParser)");
        tp3 tp3VarS2 = ra5.s(ex7VarC, jSONObject, "animation_out", zC, stateTemplate != null ? stateTemplate.b : null, this.a.o1());
        y45.i(tp3VarS2, "readOptionalField(contex…mationJsonTemplateParser)");
        tp3 tp3VarS3 = ra5.s(ex7VarC, jSONObject, TtmlNode.TAG_DIV, zC, stateTemplate != null ? stateTemplate.c : null, this.a.K4());
        y45.i(tp3VarS3, "readOptionalField(contex…nt.divJsonTemplateParser)");
        tp3 tp3VarC = ra5.c(ex7VarC, jSONObject, "state_id", zC, stateTemplate != null ? stateTemplate.d : null);
        y45.i(tp3VarC, "readField(context, data,…verride, parent?.stateId)");
        tp3 tp3VarZ = ra5.z(ex7VarC, jSONObject, "swipe_out_actions", zC, stateTemplate != null ? stateTemplate.e : null, this.a.v0());
        y45.i(tp3VarZ, "readOptionalListField(co…ActionJsonTemplateParser)");
        return new DivStateTemplate.StateTemplate(tp3VarS, tp3VarS2, tp3VarS3, tp3VarC, tp3VarZ);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivStateTemplate.StateTemplate stateTemplate) {
        y45.j(ex7Var, "context");
        y45.j(stateTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        ra5.I(ex7Var, jSONObject, "animation_in", stateTemplate.a, this.a.o1());
        ra5.I(ex7Var, jSONObject, "animation_out", stateTemplate.b, this.a.o1());
        ra5.I(ex7Var, jSONObject, TtmlNode.TAG_DIV, stateTemplate.c, this.a.K4());
        ra5.G(ex7Var, jSONObject, "state_id", stateTemplate.d);
        ra5.K(ex7Var, jSONObject, "swipe_out_actions", stateTemplate.e, this.a.v0());
        return jSONObject;
    }
}
