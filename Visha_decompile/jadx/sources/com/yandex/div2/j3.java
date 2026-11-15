package com.yandex.div2;

import defpackage.acb;
import defpackage.ex7;
import defpackage.fx7;
import defpackage.gfa;
import defpackage.pd9;
import defpackage.ra5;
import defpackage.tp3;
import defpackage.y45;
import defpackage.zbb;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class j3 implements pd9, gfa {
    public final JsonParserComponent a;

    public j3(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivSelectTemplate.OptionTemplate c(ex7 ex7Var, DivSelectTemplate.OptionTemplate optionTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        boolean zC = ex7Var.c();
        ex7 ex7VarC = fx7.c(ex7Var);
        zbb zbbVar = acb.c;
        tp3 tp3VarT = ra5.t(ex7VarC, jSONObject, "text", zbbVar, zC, optionTemplate != null ? optionTemplate.a : null);
        y45.i(tp3VarT, "readOptionalFieldWithExp…owOverride, parent?.text)");
        tp3 tp3VarH = ra5.h(ex7VarC, jSONObject, ES6Iterator.VALUE_PROPERTY, zbbVar, zC, optionTemplate != null ? optionTemplate.b : null);
        y45.i(tp3VarH, "readFieldWithExpression(…wOverride, parent?.value)");
        return new DivSelectTemplate.OptionTemplate(tp3VarT, tp3VarH);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivSelectTemplate.OptionTemplate optionTemplate) {
        y45.j(ex7Var, "context");
        y45.j(optionTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        ra5.D(ex7Var, jSONObject, "text", optionTemplate.a);
        ra5.D(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, optionTemplate.b);
        return jSONObject;
    }
}
