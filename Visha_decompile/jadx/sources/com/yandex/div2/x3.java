package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.ex7;
import defpackage.lga;
import defpackage.sa5;
import defpackage.y45;
import org.json.JSONObject;

public final class x3 implements lga {
    public final JsonParserComponent a;

    public x3(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivState.State a(ex7 ex7Var, DivStateTemplate.StateTemplate stateTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(stateTemplate, "template");
        y45.j(jSONObject, "data");
        DivAnimation divAnimation = (DivAnimation) sa5.p(ex7Var, stateTemplate.a, jSONObject, "animation_in", this.a.p1(), this.a.n1());
        DivAnimation divAnimation2 = (DivAnimation) sa5.p(ex7Var, stateTemplate.b, jSONObject, "animation_out", this.a.p1(), this.a.n1());
        Div div = (Div) sa5.p(ex7Var, stateTemplate.c, jSONObject, TtmlNode.TAG_DIV, this.a.L4(), this.a.J4());
        Object objA = sa5.a(ex7Var, stateTemplate.d, jSONObject, "state_id");
        y45.i(objA, "resolve(context, templat…tateId, data, \"state_id\")");
        return new DivState.State(divAnimation, divAnimation2, div, (String) objA, sa5.B(ex7Var, stateTemplate.e, jSONObject, "swipe_out_actions", this.a.w0(), this.a.u0()));
    }
}
