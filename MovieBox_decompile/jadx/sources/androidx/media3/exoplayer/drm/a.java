package androidx.media3.exoplayer.drm;

import androidx.media3.common.util.a1;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

abstract class a {
    public static byte[] a(byte[] bArr) {
        return a1.f10038a >= 27 ? bArr : a1.u0(c(a1.H(bArr)));
    }

    public static byte[] b(byte[] bArr) {
        if (a1.f10038a >= 27) {
            return bArr;
        }
        try {
            JSONObject jSONObject = new JSONObject(a1.H(bArr));
            StringBuilder sb2 = new StringBuilder("{\"keys\":[");
            JSONArray jSONArray = jSONObject.getJSONArray("keys");
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                if (i10 != 0) {
                    sb2.append(",");
                }
                JSONObject jSONObject2 = jSONArray.getJSONObject(i10);
                sb2.append("{\"k\":\"");
                sb2.append(d(jSONObject2.getString(CampaignEx.JSON_KEY_AD_K)));
                sb2.append("\",\"kid\":\"");
                sb2.append(d(jSONObject2.getString("kid")));
                sb2.append("\",\"kty\":\"");
                sb2.append(jSONObject2.getString("kty"));
                sb2.append("\"}");
            }
            sb2.append("]}");
            return a1.u0(sb2.toString());
        } catch (JSONException e10) {
            androidx.media3.common.util.u.d("ClearKeyUtil", "Failed to adjust response data: " + a1.H(bArr), e10);
            return bArr;
        }
    }

    private static String c(String str) {
        return str.replace('+', '-').replace('/', '_');
    }

    private static String d(String str) {
        return str.replace('-', '+').replace('_', '/');
    }
}
