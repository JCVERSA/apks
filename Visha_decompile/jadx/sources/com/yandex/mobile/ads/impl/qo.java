package com.yandex.mobile.ads.impl;

import io.appmetrica.analytics.coreutils.internal.StringUtils;
import org.apache.commons.io.IOUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

final class qo {
    public static byte[] a(byte[] bArr) {
        if (f92.a >= 27) {
            return bArr;
        }
        try {
            JSONObject jSONObject = new JSONObject(f92.a(bArr));
            StringBuilder sb = new StringBuilder("{\"keys\":[");
            JSONArray jSONArray = jSONObject.getJSONArray("keys");
            for (int i = 0; i < jSONArray.length(); i++) {
                if (i != 0) {
                    sb.append(StringUtils.COMMA);
                }
                JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                sb.append("{\"k\":\"");
                sb.append(jSONObject2.getString("k").replace('-', '+').replace('_', IOUtils.DIR_SEPARATOR_UNIX));
                sb.append("\",\"kid\":\"");
                sb.append(jSONObject2.getString("kid").replace('-', '+').replace('_', IOUtils.DIR_SEPARATOR_UNIX));
                sb.append("\",\"kty\":\"");
                sb.append(jSONObject2.getString("kty"));
                sb.append("\"}");
            }
            sb.append("]}");
            return f92.c(sb.toString());
        } catch (JSONException e) {
            et0.a("ClearKeyUtil", "Failed to adjust response data: ".concat(f92.a(bArr)), e);
            return bArr;
        }
    }
}
