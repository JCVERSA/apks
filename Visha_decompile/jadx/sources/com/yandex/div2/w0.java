package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import defpackage.ex7;
import defpackage.lga;
import defpackage.sa5;
import defpackage.y45;
import org.json.JSONObject;

public final class w0 implements lga {
    public final JsonParserComponent a;

    public w0(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivData.State a(ex7 ex7Var, DivDataTemplate.StateTemplate stateTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(stateTemplate, "template");
        y45.j(jSONObject, "data");
        Object objD = sa5.d(ex7Var, stateTemplate.a, jSONObject, TtmlNode.TAG_DIV, this.a.L4(), this.a.J4());
        y45.i(objD, "resolve(context, templat…nent.divJsonEntityParser)");
        Object objB = sa5.b(ex7Var, stateTemplate.b, jSONObject, "state_id", ParsingConvertersKt.h);
        y45.i(objB, "resolve(context, templat…state_id\", NUMBER_TO_INT)");
        return new DivData.State((Div) objD, ((Number) objB).longValue());
    }
}
