package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import defpackage.acb;
import defpackage.e74;
import defpackage.ex7;
import defpackage.lga;
import defpackage.sa5;
import defpackage.tp3;
import defpackage.y45;
import defpackage.zbb;
import org.json.JSONObject;

public final class u3 implements lga {
    public final JsonParserComponent a;

    public u3(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivSlider.Range a(ex7 ex7Var, DivSliderTemplate.RangeTemplate rangeTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(rangeTemplate, "template");
        y45.j(jSONObject, "data");
        tp3 tp3Var = rangeTemplate.a;
        zbb zbbVar = acb.b;
        e74 e74Var = ParsingConvertersKt.h;
        return new DivSlider.Range(sa5.s(ex7Var, tp3Var, jSONObject, TtmlNode.END, zbbVar, e74Var), (DivEdgeInsets) sa5.p(ex7Var, rangeTemplate.b, jSONObject, "margins", this.a.X2(), this.a.V2()), sa5.s(ex7Var, rangeTemplate.c, jSONObject, TtmlNode.START, zbbVar, e74Var), (DivDrawable) sa5.p(ex7Var, rangeTemplate.d, jSONObject, "track_active_style", this.a.U2(), this.a.S2()), (DivDrawable) sa5.p(ex7Var, rangeTemplate.e, jSONObject, "track_inactive_style", this.a.U2(), this.a.S2()));
    }
}
