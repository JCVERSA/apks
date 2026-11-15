package com.yandex.div2;

import com.yandex.div.json.expressions.Expression;
import defpackage.acb;
import defpackage.ex7;
import defpackage.lga;
import defpackage.sa5;
import defpackage.y45;
import java.util.List;
import org.json.JSONObject;

public final class g implements lga {
    public final JsonParserComponent a;

    public g(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivAction.MenuItem a(ex7 ex7Var, DivActionTemplate.MenuItemTemplate menuItemTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(menuItemTemplate, "template");
        y45.j(jSONObject, "data");
        DivAction divAction = (DivAction) sa5.p(ex7Var, menuItemTemplate.a, jSONObject, "action", this.a.w0(), this.a.u0());
        List listB = sa5.B(ex7Var, menuItemTemplate.b, jSONObject, "actions", this.a.w0(), this.a.u0());
        Expression expressionG = sa5.g(ex7Var, menuItemTemplate.c, jSONObject, "text", acb.c);
        y45.i(expressionG, "resolveExpression(contex…ext\", TYPE_HELPER_STRING)");
        return new DivAction.MenuItem(divAction, listB, expressionG);
    }
}
