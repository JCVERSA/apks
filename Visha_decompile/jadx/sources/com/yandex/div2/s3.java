package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import defpackage.acb;
import defpackage.e74;
import defpackage.ex7;
import defpackage.pa5;
import defpackage.pd9;
import defpackage.tb5;
import defpackage.w92;
import defpackage.y45;
import defpackage.zbb;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class s3 implements pd9, w92 {
    public final JsonParserComponent a;

    public s3(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivSlider.Range a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        zbb zbbVar = acb.b;
        e74 e74Var = ParsingConvertersKt.h;
        return new DivSlider.Range(pa5.i(ex7Var, jSONObject, TtmlNode.END, zbbVar, e74Var), (DivEdgeInsets) tb5.n(ex7Var, jSONObject, "margins", this.a.V2()), pa5.i(ex7Var, jSONObject, TtmlNode.START, zbbVar, e74Var), (DivDrawable) tb5.n(ex7Var, jSONObject, "track_active_style", this.a.S2()), (DivDrawable) tb5.n(ex7Var, jSONObject, "track_inactive_style", this.a.S2()));
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivSlider.Range range) {
        y45.j(ex7Var, "context");
        y45.j(range, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        pa5.p(ex7Var, jSONObject, TtmlNode.END, range.a);
        tb5.x(ex7Var, jSONObject, "margins", range.b, this.a.V2());
        pa5.p(ex7Var, jSONObject, TtmlNode.START, range.c);
        tb5.x(ex7Var, jSONObject, "track_active_style", range.d, this.a.S2());
        tb5.x(ex7Var, jSONObject, "track_inactive_style", range.e, this.a.S2());
        return jSONObject;
    }
}
