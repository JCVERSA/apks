package com.yandex.div2;

import com.yandex.div.json.expressions.Expression;
import defpackage.acb;
import defpackage.ex7;
import defpackage.pa5;
import defpackage.pd9;
import defpackage.tb5;
import defpackage.w92;
import defpackage.y45;
import java.util.List;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class e implements pd9, w92 {
    public final JsonParserComponent a;

    public e(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivAction.MenuItem a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        DivAction divAction = (DivAction) tb5.n(ex7Var, jSONObject, "action", this.a.u0());
        List listR = tb5.r(ex7Var, jSONObject, "actions", this.a.u0());
        Expression expressionD = pa5.d(ex7Var, jSONObject, "text", acb.c);
        y45.i(expressionD, "readExpression(context, …ext\", TYPE_HELPER_STRING)");
        return new DivAction.MenuItem(divAction, listR, expressionD);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivAction.MenuItem menuItem) {
        y45.j(ex7Var, "context");
        y45.j(menuItem, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.x(ex7Var, jSONObject, "action", menuItem.a, this.a.u0());
        tb5.z(ex7Var, jSONObject, "actions", menuItem.b, this.a.u0());
        pa5.p(ex7Var, jSONObject, "text", menuItem.c);
        return jSONObject;
    }
}
