package n8;

import android.util.Log;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.facebook.biddingkit.http.client.HttpMethod;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Map;

public abstract class d {

    protected String f66949a;

    protected HttpMethod f66950b;

    protected String f66951c;

    protected byte[] f66952d;

    public d(String str, Map map) {
        this.f66949a = "";
        if (str != null) {
            this.f66949a = str;
        }
        if (map != null) {
            this.f66949a += UrlUtils.QUESTION_MARK + e(map);
        }
    }

    private String e(Map map) {
        StringBuilder sb2 = new StringBuilder();
        for (String str : map.keySet()) {
            if (sb2.length() > 0) {
                sb2.append(UrlUtils.AND_MARK);
            }
            sb2.append(str);
            String str2 = (String) map.get(str);
            if (str2 != null) {
                sb2.append(UrlUtils.EQUAL_MARK);
                try {
                    sb2.append(URLEncoder.encode(str2, "UTF-8"));
                } catch (UnsupportedEncodingException e10) {
                    Log.e("HttpRequest", "Failed url encode: ", e10);
                }
            }
        }
        return sb2.toString();
    }

    public byte[] a() {
        return this.f66952d;
    }

    public String b() {
        return this.f66951c;
    }

    public HttpMethod c() {
        return this.f66950b;
    }

    public String d() {
        return this.f66949a;
    }
}
