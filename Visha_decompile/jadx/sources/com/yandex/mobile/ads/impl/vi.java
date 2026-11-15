package com.yandex.mobile.ads.impl;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.y45;
import org.json.JSONObject;

public final class vi {
    public static ui a(JSONObject jSONObject) {
        y45.j(jSONObject, "jsonValue");
        Object objOpt = jSONObject.opt("top");
        String str = objOpt instanceof String ? (String) objOpt : null;
        Object objOpt2 = jSONObject.opt(TtmlNode.RIGHT);
        String str2 = objOpt2 instanceof String ? (String) objOpt2 : null;
        Object objOpt3 = jSONObject.opt(TtmlNode.LEFT);
        String str3 = objOpt3 instanceof String ? (String) objOpt3 : null;
        Object objOpt4 = jSONObject.opt("bottom");
        return new ui(str, str2, str3, objOpt4 instanceof String ? (String) objOpt4 : null);
    }
}
