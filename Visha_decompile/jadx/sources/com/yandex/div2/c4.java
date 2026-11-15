package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.json.expressions.Expression;
import defpackage.acb;
import defpackage.ex7;
import defpackage.pa5;
import defpackage.pd9;
import defpackage.tb5;
import defpackage.w92;
import defpackage.y45;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class c4 implements pd9, w92 {
    public final JsonParserComponent a;

    public c4(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivTabs.Item a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        Object objG = tb5.g(ex7Var, jSONObject, TtmlNode.TAG_DIV, this.a.J4());
        y45.i(objG, "read(context, data, \"div…nent.divJsonEntityParser)");
        Expression expressionD = pa5.d(ex7Var, jSONObject, "title", acb.c);
        y45.i(expressionD, "readExpression(context, …tle\", TYPE_HELPER_STRING)");
        return new DivTabs.Item((Div) objG, expressionD, (DivAction) tb5.n(ex7Var, jSONObject, "title_click_action", this.a.u0()));
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivTabs.Item item) {
        y45.j(ex7Var, "context");
        y45.j(item, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.x(ex7Var, jSONObject, TtmlNode.TAG_DIV, item.a, this.a.J4());
        pa5.p(ex7Var, jSONObject, "title", item.b);
        tb5.x(ex7Var, jSONObject, "title_click_action", item.c, this.a.u0());
        return jSONObject;
    }
}
