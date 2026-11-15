package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.livecaption.constant.ICode;
import defpackage.acb;
import defpackage.ex7;
import defpackage.pa5;
import defpackage.pd9;
import defpackage.w92;
import defpackage.y45;
import defpackage.zbb;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class k1 implements pd9, w92 {
    public final JsonParserComponent a;

    public k1(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivFocus.NextFocusIds a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        zbb zbbVar = acb.c;
        return new DivFocus.NextFocusIds(pa5.h(ex7Var, jSONObject, ICode.CALL.CALL_DATA_DIRECTION_DOWN, zbbVar), pa5.h(ex7Var, jSONObject, "forward", zbbVar), pa5.h(ex7Var, jSONObject, TtmlNode.LEFT, zbbVar), pa5.h(ex7Var, jSONObject, TtmlNode.RIGHT, zbbVar), pa5.h(ex7Var, jSONObject, ICode.CALL.CALL_DATA_DIRECTION_UP, zbbVar));
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivFocus.NextFocusIds nextFocusIds) {
        y45.j(ex7Var, "context");
        y45.j(nextFocusIds, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        pa5.p(ex7Var, jSONObject, ICode.CALL.CALL_DATA_DIRECTION_DOWN, nextFocusIds.a);
        pa5.p(ex7Var, jSONObject, "forward", nextFocusIds.b);
        pa5.p(ex7Var, jSONObject, TtmlNode.LEFT, nextFocusIds.c);
        pa5.p(ex7Var, jSONObject, TtmlNode.RIGHT, nextFocusIds.d);
        pa5.p(ex7Var, jSONObject, ICode.CALL.CALL_DATA_DIRECTION_UP, nextFocusIds.e);
        return jSONObject;
    }
}
