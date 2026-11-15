package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import defpackage.ex7;
import defpackage.fx7;
import defpackage.gfa;
import defpackage.pd9;
import defpackage.ra5;
import defpackage.tp3;
import defpackage.y45;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class v0 implements pd9, gfa {
    public final JsonParserComponent a;

    public v0(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivDataTemplate.StateTemplate c(ex7 ex7Var, DivDataTemplate.StateTemplate stateTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        boolean zC = ex7Var.c();
        ex7 ex7VarC = fx7.c(ex7Var);
        tp3 tp3VarF = ra5.f(ex7VarC, jSONObject, TtmlNode.TAG_DIV, zC, stateTemplate != null ? stateTemplate.a : null, this.a.K4());
        y45.i(tp3VarF, "readField(context, data,…nt.divJsonTemplateParser)");
        tp3 tp3VarD = ra5.d(ex7VarC, jSONObject, "state_id", zC, stateTemplate != null ? stateTemplate.b : null, ParsingConvertersKt.h);
        y45.i(tp3VarD, "readField(context, data,…?.stateId, NUMBER_TO_INT)");
        return new DivDataTemplate.StateTemplate(tp3VarF, tp3VarD);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivDataTemplate.StateTemplate stateTemplate) {
        y45.j(ex7Var, "context");
        y45.j(stateTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        ra5.I(ex7Var, jSONObject, TtmlNode.TAG_DIV, stateTemplate.a, this.a.K4());
        ra5.G(ex7Var, jSONObject, "state_id", stateTemplate.b);
        return jSONObject;
    }
}
