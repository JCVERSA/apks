package com.mbridge.msdk.foundation.same.net.wrapper;

import android.text.TextUtils;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.mbridge.msdk.foundation.tools.o0;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public final class e {

    private static final String f34664c = "e";

    public static String f34665d = "h";

    public static String f34666e = "i";

    public static String f34667f = "coppa";

    public static String f34668g = "d";

    public static String f34669h = "e";

    public static String f34670i = "a";

    public static String f34671j = "f";

    public static String f34672k = "g";

    private Map<String, com.mbridge.msdk.foundation.same.net.model.a> f34673a = new LinkedHashMap();

    private Map<String, String> f34674b = new LinkedHashMap();

    public void a(String str, String str2) {
        if (str2 == null) {
            o0.b(f34664c, "add() value is null!");
        }
        if (TextUtils.isEmpty(str) || str2 == null) {
            return;
        }
        this.f34674b.put(str, str2);
    }

    public String b() {
        StringBuilder sb2 = new StringBuilder();
        try {
            for (Map.Entry<String, String> entry : this.f34674b.entrySet()) {
                if (sb2.length() > 0) {
                    sb2.append('&');
                }
                sb2.append(URLEncoder.encode(entry.getKey(), "UTF-8"));
                sb2.append(UrlUtils.EQUAL_MARK);
                sb2.append(URLEncoder.encode(entry.getValue(), "UTF-8"));
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return sb2.toString();
    }

    public JSONObject c() {
        JSONObject jSONObject = new JSONObject();
        try {
            for (Map.Entry<String, String> entry : this.f34674b.entrySet()) {
                jSONObject.put(URLEncoder.encode(entry.getKey(), "UTF-8"), URLEncoder.encode(entry.getValue(), "UTF-8"));
            }
            for (Map.Entry<String, com.mbridge.msdk.foundation.same.net.model.a> entry2 : this.f34673a.entrySet()) {
                jSONObject.put(URLEncoder.encode(entry2.getKey(), "UTF-8"), URLEncoder.encode("FILE_NAME_" + entry2.getValue().a().getName(), "UTF-8"));
            }
        } catch (UnsupportedEncodingException unused) {
        } catch (JSONException e10) {
            o0.b(f34664c, e10.getMessage());
        }
        return jSONObject;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(28);
        try {
            for (Map.Entry<String, String> entry : this.f34674b.entrySet()) {
                if (sb2.length() > 0) {
                    sb2.append('&');
                }
                sb2.append(URLEncoder.encode(entry.getKey(), "UTF-8"));
                sb2.append('=');
                sb2.append(URLEncoder.encode(entry.getValue(), "UTF-8"));
            }
            for (Map.Entry<String, com.mbridge.msdk.foundation.same.net.model.a> entry2 : this.f34673a.entrySet()) {
                if (sb2.length() > 0) {
                    sb2.append('&');
                }
                sb2.append(URLEncoder.encode(entry2.getKey(), "UTF-8"));
                sb2.append('=');
                sb2.append(URLEncoder.encode("FILE_NAME_" + entry2.getValue().a().getName(), "UTF-8"));
            }
        } catch (UnsupportedEncodingException e10) {
            o0.b(f34664c, e10.getMessage());
        }
        return sb2.toString();
    }

    public Map<String, String> a() {
        return this.f34674b;
    }

    public void a(String str) {
        this.f34674b.remove(str);
        this.f34673a.remove(str);
    }
}
