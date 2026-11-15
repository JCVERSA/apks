package com.yandex.mobile.ads.impl;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.y45;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

public final class f10 {
    private final dk0 a;

    public f10() {
        this(new dk0());
    }

    public final a10 a(JSONObject jSONObject) {
        y45.j(jSONObject, "jsonObject");
        String strOptString = jSONObject.optString("type");
        String strOptString2 = jSONObject.optString(TypedValues.AttributesType.S_TARGET);
        String strOptString3 = jSONObject.optString(TtmlNode.TAG_LAYOUT);
        if (strOptString == null || strOptString.length() == 0 || strOptString2 == null || strOptString2.length() == 0 || strOptString3 == null || strOptString3.length() == 0) {
            return null;
        }
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("images");
        ArrayList arrayListA = jSONArrayOptJSONArray != null ? this.a.a(jSONArrayOptJSONArray) : null;
        y45.g(strOptString);
        y45.g(strOptString2);
        y45.g(strOptString3);
        return new a10(strOptString, strOptString2, strOptString3, arrayListA);
    }

    public f10(dk0 dk0Var) {
        y45.j(dk0Var, "imageValuesParser");
        this.a = dk0Var;
    }
}
