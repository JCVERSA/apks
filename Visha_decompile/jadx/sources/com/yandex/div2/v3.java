package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.ex7;
import defpackage.pd9;
import defpackage.tb5;
import defpackage.w92;
import defpackage.y45;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class v3 implements pd9, w92 {
    public final JsonParserComponent a;

    public v3(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivState.State a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        DivAnimation divAnimation = (DivAnimation) tb5.n(ex7Var, jSONObject, "animation_in", this.a.n1());
        DivAnimation divAnimation2 = (DivAnimation) tb5.n(ex7Var, jSONObject, "animation_out", this.a.n1());
        Div div = (Div) tb5.n(ex7Var, jSONObject, TtmlNode.TAG_DIV, this.a.J4());
        Object objD = tb5.d(ex7Var, jSONObject, "state_id");
        y45.i(objD, "read(context, data, \"state_id\")");
        return new DivState.State(divAnimation, divAnimation2, div, (String) objD, tb5.r(ex7Var, jSONObject, "swipe_out_actions", this.a.u0()));
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivState.State state) {
        y45.j(ex7Var, "context");
        y45.j(state, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.x(ex7Var, jSONObject, "animation_in", state.a, this.a.n1());
        tb5.x(ex7Var, jSONObject, "animation_out", state.b, this.a.n1());
        tb5.x(ex7Var, jSONObject, TtmlNode.TAG_DIV, state.c, this.a.J4());
        tb5.v(ex7Var, jSONObject, "state_id", state.d);
        tb5.z(ex7Var, jSONObject, "swipe_out_actions", state.e, this.a.u0());
        return jSONObject;
    }
}
