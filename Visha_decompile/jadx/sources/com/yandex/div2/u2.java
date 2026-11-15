package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.ex7;
import defpackage.lga;
import defpackage.sa5;
import defpackage.y45;
import org.json.JSONObject;

public final class u2 implements lga {
    public final JsonParserComponent a;

    public u2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivPatch.Change a(ex7 ex7Var, DivPatchTemplate.ChangeTemplate changeTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(changeTemplate, "template");
        y45.j(jSONObject, "data");
        Object objA = sa5.a(ex7Var, changeTemplate.a, jSONObject, TtmlNode.ATTR_ID);
        y45.i(objA, "resolve(context, template.id, data, \"id\")");
        return new DivPatch.Change((String) objA, sa5.B(ex7Var, changeTemplate.b, jSONObject, "items", this.a.L4(), this.a.J4()));
    }
}
