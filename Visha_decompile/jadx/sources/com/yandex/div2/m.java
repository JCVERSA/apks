package com.yandex.div2;

import com.lzy.okgo.model.Progress;
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

public final class m implements pd9, w92 {
    public final JsonParserComponent a;

    public m(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivActionSubmit a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        Expression expressionD = pa5.d(ex7Var, jSONObject, "container_id", acb.c);
        y45.i(expressionD, "readExpression(context, …_id\", TYPE_HELPER_STRING)");
        List listR = tb5.r(ex7Var, jSONObject, "on_fail_actions", this.a.u0());
        List listR2 = tb5.r(ex7Var, jSONObject, "on_success_actions", this.a.u0());
        Object objG = tb5.g(ex7Var, jSONObject, Progress.REQUEST, this.a.b1());
        y45.i(objG, "read(context, data, \"req…tRequestJsonEntityParser)");
        return new DivActionSubmit(expressionD, listR, listR2, (DivActionSubmit.Request) objG);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivActionSubmit divActionSubmit) {
        y45.j(ex7Var, "context");
        y45.j(divActionSubmit, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        pa5.p(ex7Var, jSONObject, "container_id", divActionSubmit.a);
        tb5.z(ex7Var, jSONObject, "on_fail_actions", divActionSubmit.b, this.a.u0());
        tb5.z(ex7Var, jSONObject, "on_success_actions", divActionSubmit.c, this.a.u0());
        tb5.x(ex7Var, jSONObject, Progress.REQUEST, divActionSubmit.d, this.a.b1());
        tb5.v(ex7Var, jSONObject, "type", "submit");
        return jSONObject;
    }
}
