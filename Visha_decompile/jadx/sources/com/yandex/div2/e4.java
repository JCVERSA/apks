package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.json.expressions.Expression;
import defpackage.acb;
import defpackage.ex7;
import defpackage.lga;
import defpackage.sa5;
import defpackage.y45;
import org.json.JSONObject;

public final class e4 implements lga {
    public final JsonParserComponent a;

    public e4(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivTabs.Item a(ex7 ex7Var, DivTabsTemplate.ItemTemplate itemTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(itemTemplate, "template");
        y45.j(jSONObject, "data");
        Object objD = sa5.d(ex7Var, itemTemplate.a, jSONObject, TtmlNode.TAG_DIV, this.a.L4(), this.a.J4());
        y45.i(objD, "resolve(context, templat…nent.divJsonEntityParser)");
        Expression expressionG = sa5.g(ex7Var, itemTemplate.b, jSONObject, "title", acb.c);
        y45.i(expressionG, "resolveExpression(contex…tle\", TYPE_HELPER_STRING)");
        return new DivTabs.Item((Div) objD, expressionG, (DivAction) sa5.p(ex7Var, itemTemplate.c, jSONObject, "title_click_action", this.a.w0(), this.a.u0()));
    }
}
