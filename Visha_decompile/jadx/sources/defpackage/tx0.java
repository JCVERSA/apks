package defpackage;

import io.appmetrica.analytics.coreutils.internal.StringUtils;
import org.apache.commons.io.IOUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class tx0 {
    public static byte[] a(byte[] bArr) {
        return blb.a >= 27 ? bArr : blb.f0(c(blb.A(bArr)));
    }

    public static byte[] b(byte[] bArr) {
        if (blb.a >= 27) {
            return bArr;
        }
        try {
            JSONObject jSONObject = new JSONObject(blb.A(bArr));
            StringBuilder sb = new StringBuilder("{\"keys\":[");
            JSONArray jSONArray = jSONObject.getJSONArray("keys");
            for (int i = 0; i < jSONArray.length(); i++) {
                if (i != 0) {
                    sb.append(StringUtils.COMMA);
                }
                JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                sb.append("{\"k\":\"");
                sb.append(d(jSONObject2.getString("k")));
                sb.append("\",\"kid\":\"");
                sb.append(d(jSONObject2.getString("kid")));
                sb.append("\",\"kty\":\"");
                sb.append(jSONObject2.getString("kty"));
                sb.append("\"}");
            }
            sb.append("]}");
            return blb.f0(sb.toString());
        } catch (JSONException e) {
            op5.d("ClearKeyUtil", "Failed to adjust response data: " + blb.A(bArr), e);
            return bArr;
        }
    }

    public static String c(String str) {
        return str.replace('+', '-').replace(IOUtils.DIR_SEPARATOR_UNIX, '_');
    }

    public static String d(String str) {
        return str.replace('-', '+').replace('_', IOUtils.DIR_SEPARATOR_UNIX);
    }
}
