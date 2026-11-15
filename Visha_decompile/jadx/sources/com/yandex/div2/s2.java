package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.ex7;
import defpackage.pd9;
import defpackage.tb5;
import defpackage.w92;
import defpackage.y45;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class s2 implements pd9, w92 {
    public final JsonParserComponent a;

    public s2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivPatch.Change a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        Object objD = tb5.d(ex7Var, jSONObject, TtmlNode.ATTR_ID);
        y45.i(objD, "read(context, data, \"id\")");
        return new DivPatch.Change((String) objD, tb5.r(ex7Var, jSONObject, "items", this.a.J4()));
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivPatch.Change change) {
        y45.j(ex7Var, "context");
        y45.j(change, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.v(ex7Var, jSONObject, TtmlNode.ATTR_ID, change.a);
        tb5.z(ex7Var, jSONObject, "items", change.b, this.a.J4());
        return jSONObject;
    }
}
