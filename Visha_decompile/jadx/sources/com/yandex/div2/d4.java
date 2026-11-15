package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
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

public final class d4 implements pd9, gfa {
    public final JsonParserComponent a;

    public d4(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivTabsTemplate.ItemTemplate c(ex7 ex7Var, DivTabsTemplate.ItemTemplate itemTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        boolean zC = ex7Var.c();
        ex7 ex7VarC = fx7.c(ex7Var);
        tp3 tp3VarF = ra5.f(ex7VarC, jSONObject, TtmlNode.TAG_DIV, zC, itemTemplate != null ? itemTemplate.a : null, this.a.K4());
        y45.i(tp3VarF, "readField(context, data,…nt.divJsonTemplateParser)");
        tp3 tp3VarH = ra5.h(ex7VarC, jSONObject, "title", acb.c, zC, itemTemplate != null ? itemTemplate.b : null);
        y45.i(tp3VarH, "readFieldWithExpression(…wOverride, parent?.title)");
        tp3 tp3VarS = ra5.s(ex7VarC, jSONObject, "title_click_action", zC, itemTemplate != null ? itemTemplate.c : null, this.a.v0());
        y45.i(tp3VarS, "readOptionalField(contex…ActionJsonTemplateParser)");
        return new DivTabsTemplate.ItemTemplate(tp3VarF, tp3VarH, tp3VarS);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivTabsTemplate.ItemTemplate itemTemplate) {
        y45.j(ex7Var, "context");
        y45.j(itemTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        ra5.I(ex7Var, jSONObject, TtmlNode.TAG_DIV, itemTemplate.a, this.a.K4());
        ra5.D(ex7Var, jSONObject, "title", itemTemplate.b);
        ra5.I(ex7Var, jSONObject, "title_click_action", itemTemplate.c, this.a.v0());
        return jSONObject;
    }
}
