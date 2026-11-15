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

public final class p implements pd9, gfa {
    public final JsonParserComponent a;

    public p(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivActionSubmitTemplate.RequestTemplate.HeaderTemplate c(ex7 ex7Var, DivActionSubmitTemplate.RequestTemplate.HeaderTemplate headerTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        boolean zC = ex7Var.c();
        ex7 ex7VarC = fx7.c(ex7Var);
        zbb zbbVar = acb.c;
        tp3 tp3VarH = ra5.h(ex7VarC, jSONObject, "name", zbbVar, zC, headerTemplate != null ? headerTemplate.a : null);
        y45.i(tp3VarH, "readFieldWithExpression(…owOverride, parent?.name)");
        tp3 tp3VarH2 = ra5.h(ex7VarC, jSONObject, ES6Iterator.VALUE_PROPERTY, zbbVar, zC, headerTemplate != null ? headerTemplate.b : null);
        y45.i(tp3VarH2, "readFieldWithExpression(…wOverride, parent?.value)");
        return new DivActionSubmitTemplate.RequestTemplate.HeaderTemplate(tp3VarH, tp3VarH2);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivActionSubmitTemplate.RequestTemplate.HeaderTemplate headerTemplate) {
        y45.j(ex7Var, "context");
        y45.j(headerTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        ra5.D(ex7Var, jSONObject, "name", headerTemplate.a);
        ra5.D(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, headerTemplate.b);
        return jSONObject;
    }
}
