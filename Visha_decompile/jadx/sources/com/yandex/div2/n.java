package com.yandex.div2;

import com.lzy.okgo.model.Progress;
import com.yandex.div.json.expressions.Expression;
import defpackage.acb;
import defpackage.ex7;
import defpackage.lga;
import defpackage.sa5;
import defpackage.y45;
import java.util.List;
import org.json.JSONObject;

public final class n implements lga {
    public final JsonParserComponent a;

    public n(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivActionSubmit a(ex7 ex7Var, DivActionSubmitTemplate divActionSubmitTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divActionSubmitTemplate, "template");
        y45.j(jSONObject, "data");
        Expression expressionG = sa5.g(ex7Var, divActionSubmitTemplate.a, jSONObject, "container_id", acb.c);
        y45.i(expressionG, "resolveExpression(contex…_id\", TYPE_HELPER_STRING)");
        List listB = sa5.B(ex7Var, divActionSubmitTemplate.b, jSONObject, "on_fail_actions", this.a.w0(), this.a.u0());
        List listB2 = sa5.B(ex7Var, divActionSubmitTemplate.c, jSONObject, "on_success_actions", this.a.w0(), this.a.u0());
        Object objD = sa5.d(ex7Var, divActionSubmitTemplate.d, jSONObject, Progress.REQUEST, this.a.d1(), this.a.b1());
        y45.i(objD, "resolve(context, templat…tRequestJsonEntityParser)");
        return new DivActionSubmit(expressionG, listB, listB2, (DivActionSubmit.Request) objD);
    }
}
