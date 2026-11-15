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

public final class g4 implements pd9, w92 {
    public final JsonParserComponent a;

    public g4(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivText.Ellipsis a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        List listR = tb5.r(ex7Var, jSONObject, "actions", this.a.u0());
        List listR2 = tb5.r(ex7Var, jSONObject, "images", this.a.g8());
        List listR3 = tb5.r(ex7Var, jSONObject, "ranges", this.a.s8());
        Expression expressionD = pa5.d(ex7Var, jSONObject, "text", acb.c);
        y45.i(expressionD, "readExpression(context, …ext\", TYPE_HELPER_STRING)");
        return new DivText.Ellipsis(listR, listR2, listR3, expressionD);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivText.Ellipsis ellipsis) {
        y45.j(ex7Var, "context");
        y45.j(ellipsis, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.z(ex7Var, jSONObject, "actions", ellipsis.a, this.a.u0());
        tb5.z(ex7Var, jSONObject, "images", ellipsis.b, this.a.g8());
        tb5.z(ex7Var, jSONObject, "ranges", ellipsis.c, this.a.s8());
        pa5.p(ex7Var, jSONObject, "text", ellipsis.d);
        return jSONObject;
    }
}
