package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import defpackage.ex7;
import defpackage.pd9;
import defpackage.tb5;
import defpackage.w92;
import defpackage.y45;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class u0 implements pd9, w92 {
    public final JsonParserComponent a;

    public u0(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivData.State a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        Object objG = tb5.g(ex7Var, jSONObject, TtmlNode.TAG_DIV, this.a.J4());
        y45.i(objG, "read(context, data, \"div…nent.divJsonEntityParser)");
        Object objE = tb5.e(ex7Var, jSONObject, "state_id", ParsingConvertersKt.h);
        y45.i(objE, "read(context, data, \"state_id\", NUMBER_TO_INT)");
        return new DivData.State((Div) objG, ((Number) objE).longValue());
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivData.State state) {
        y45.j(ex7Var, "context");
        y45.j(state, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.x(ex7Var, jSONObject, TtmlNode.TAG_DIV, state.a, this.a.J4());
        tb5.v(ex7Var, jSONObject, "state_id", Long.valueOf(state.b));
        return jSONObject;
    }
}
