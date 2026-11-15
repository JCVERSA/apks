package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import defpackage.acb;
import defpackage.e74;
import defpackage.ex7;
import defpackage.fx7;
import defpackage.gfa;
import defpackage.pd9;
import defpackage.ra5;
import defpackage.tp3;
import defpackage.y45;
import defpackage.zbb;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class t3 implements pd9, gfa {
    public final JsonParserComponent a;

    public t3(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivSliderTemplate.RangeTemplate c(ex7 ex7Var, DivSliderTemplate.RangeTemplate rangeTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        boolean zC = ex7Var.c();
        ex7 ex7VarC = fx7.c(ex7Var);
        zbb zbbVar = acb.b;
        tp3 tp3Var = rangeTemplate != null ? rangeTemplate.a : null;
        e74 e74Var = ParsingConvertersKt.h;
        tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, TtmlNode.END, zbbVar, zC, tp3Var, e74Var);
        y45.i(tp3VarU, "readOptionalFieldWithExp…rent?.end, NUMBER_TO_INT)");
        tp3 tp3VarS = ra5.s(ex7VarC, jSONObject, "margins", zC, rangeTemplate != null ? rangeTemplate.b : null, this.a.W2());
        y45.i(tp3VarS, "readOptionalField(contex…InsetsJsonTemplateParser)");
        tp3 tp3VarU2 = ra5.u(ex7VarC, jSONObject, TtmlNode.START, zbbVar, zC, rangeTemplate != null ? rangeTemplate.c : null, e74Var);
        y45.i(tp3VarU2, "readOptionalFieldWithExp…nt?.start, NUMBER_TO_INT)");
        tp3 tp3VarS2 = ra5.s(ex7VarC, jSONObject, "track_active_style", zC, rangeTemplate != null ? rangeTemplate.d : null, this.a.T2());
        y45.i(tp3VarS2, "readOptionalField(contex…awableJsonTemplateParser)");
        tp3 tp3VarS3 = ra5.s(ex7VarC, jSONObject, "track_inactive_style", zC, rangeTemplate != null ? rangeTemplate.e : null, this.a.T2());
        y45.i(tp3VarS3, "readOptionalField(contex…awableJsonTemplateParser)");
        return new DivSliderTemplate.RangeTemplate(tp3VarU, tp3VarS, tp3VarU2, tp3VarS2, tp3VarS3);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivSliderTemplate.RangeTemplate rangeTemplate) {
        y45.j(ex7Var, "context");
        y45.j(rangeTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        ra5.D(ex7Var, jSONObject, TtmlNode.END, rangeTemplate.a);
        ra5.I(ex7Var, jSONObject, "margins", rangeTemplate.b, this.a.W2());
        ra5.D(ex7Var, jSONObject, TtmlNode.START, rangeTemplate.c);
        ra5.I(ex7Var, jSONObject, "track_active_style", rangeTemplate.d, this.a.T2());
        ra5.I(ex7Var, jSONObject, "track_inactive_style", rangeTemplate.e, this.a.T2());
        return jSONObject;
    }
}
