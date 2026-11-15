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

public final class h4 implements pd9, gfa {
    public final JsonParserComponent a;

    public h4(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivTextTemplate.EllipsisTemplate c(ex7 ex7Var, DivTextTemplate.EllipsisTemplate ellipsisTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        boolean zC = ex7Var.c();
        ex7 ex7VarC = fx7.c(ex7Var);
        tp3 tp3VarZ = ra5.z(ex7VarC, jSONObject, "actions", zC, ellipsisTemplate != null ? ellipsisTemplate.a : null, this.a.v0());
        y45.i(tp3VarZ, "readOptionalListField(co…ActionJsonTemplateParser)");
        tp3 tp3VarZ2 = ra5.z(ex7VarC, jSONObject, "images", zC, ellipsisTemplate != null ? ellipsisTemplate.b : null, this.a.h8());
        y45.i(tp3VarZ2, "readOptionalListField(co…tImageJsonTemplateParser)");
        tp3 tp3VarZ3 = ra5.z(ex7VarC, jSONObject, "ranges", zC, ellipsisTemplate != null ? ellipsisTemplate.c : null, this.a.t8());
        y45.i(tp3VarZ3, "readOptionalListField(co…tRangeJsonTemplateParser)");
        tp3 tp3VarH = ra5.h(ex7VarC, jSONObject, "text", acb.c, zC, ellipsisTemplate != null ? ellipsisTemplate.d : null);
        y45.i(tp3VarH, "readFieldWithExpression(…owOverride, parent?.text)");
        return new DivTextTemplate.EllipsisTemplate(tp3VarZ, tp3VarZ2, tp3VarZ3, tp3VarH);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivTextTemplate.EllipsisTemplate ellipsisTemplate) {
        y45.j(ex7Var, "context");
        y45.j(ellipsisTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        ra5.K(ex7Var, jSONObject, "actions", ellipsisTemplate.a, this.a.v0());
        ra5.K(ex7Var, jSONObject, "images", ellipsisTemplate.b, this.a.h8());
        ra5.K(ex7Var, jSONObject, "ranges", ellipsisTemplate.c, this.a.t8());
        ra5.D(ex7Var, jSONObject, "text", ellipsisTemplate.d);
        return jSONObject;
    }
}
