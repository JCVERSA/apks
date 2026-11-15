package com.yandex.mobile.ads.impl;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.y45;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

public final class vn1 {
    public static un1 a(String str) throws JSONException {
        y45.j(str, "readyResponse");
        JSONObject jSONObject = new JSONObject(yj.b(str));
        HashMap map = new HashMap();
        String string = jSONObject.getString(TtmlNode.TAG_BODY);
        JSONObject jSONObject2 = jSONObject.getJSONObject("headers");
        Iterator<String> itKeys = jSONObject2.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            String string2 = jSONObject2.getString(next);
            y45.g(next);
            y45.g(string2);
            map.put(next, string2);
        }
        y45.g(string);
        return new un1(string, map);
    }
}
