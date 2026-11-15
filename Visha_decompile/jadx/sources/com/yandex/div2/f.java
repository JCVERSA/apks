package com.yandex.div2;

import defpackage.acb;
import defpackage.ex7;
import defpackage.fx7;
import defpackage.gfa;
import defpackage.pd9;
import defpackage.ra5;
import defpackage.tp3;
import defpackage.y45;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class f implements pd9, gfa {
    public final JsonParserComponent a;

    public f(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivActionTemplate.MenuItemTemplate c(ex7 ex7Var, DivActionTemplate.MenuItemTemplate menuItemTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        boolean zC = ex7Var.c();
        ex7 ex7VarC = fx7.c(ex7Var);
        tp3 tp3VarS = ra5.s(ex7VarC, jSONObject, "action", zC, menuItemTemplate != null ? menuItemTemplate.a : null, this.a.v0());
        y45.i(tp3VarS, "readOptionalField(contex…ActionJsonTemplateParser)");
        tp3 tp3VarZ = ra5.z(ex7VarC, jSONObject, "actions", zC, menuItemTemplate != null ? menuItemTemplate.b : null, this.a.v0());
        y45.i(tp3VarZ, "readOptionalListField(co…ActionJsonTemplateParser)");
        tp3 tp3VarH = ra5.h(ex7VarC, jSONObject, "text", acb.c, zC, menuItemTemplate != null ? menuItemTemplate.c : null);
        y45.i(tp3VarH, "readFieldWithExpression(…owOverride, parent?.text)");
        return new DivActionTemplate.MenuItemTemplate(tp3VarS, tp3VarZ, tp3VarH);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivActionTemplate.MenuItemTemplate menuItemTemplate) {
        y45.j(ex7Var, "context");
        y45.j(menuItemTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        ra5.I(ex7Var, jSONObject, "action", menuItemTemplate.a, this.a.v0());
        ra5.K(ex7Var, jSONObject, "actions", menuItemTemplate.b, this.a.v0());
        ra5.D(ex7Var, jSONObject, "text", menuItemTemplate.c);
        return jSONObject;
    }
}
