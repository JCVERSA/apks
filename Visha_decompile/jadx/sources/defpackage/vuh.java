package defpackage;

import android.net.Uri;
import android.webkit.WebView;
import androidx.webkit.JavaScriptReplyProxy;
import androidx.webkit.WebMessageCompat;
import androidx.webkit.WebViewCompat;
import com.google.android.gms.internal.ads.b6;
import org.json.JSONException;
import org.json.JSONObject;

public final class vuh implements WebViewCompat.WebMessageListener {
    public final b6 a;

    public vuh(b6 b6Var) {
        this.a = b6Var;
    }

    @Override
    public final void onPostMessage(WebView webView, WebMessageCompat webMessageCompat, Uri uri, boolean z, JavaScriptReplyProxy javaScriptReplyProxy) {
        try {
            JSONObject jSONObject = new JSONObject(webMessageCompat.getData());
            String string = jSONObject.getString("method");
            String string2 = jSONObject.getJSONObject("data").getString("adSessionId");
            if (string.equals("startSession")) {
                b6.e(this.a, string2);
            } else if (string.equals("finishSession")) {
                b6.c(this.a, string2);
            } else {
                muh.a.booleanValue();
            }
        } catch (JSONException e) {
            wvh.a("Error parsing JS message in JavaScriptSessionService.", e);
        }
    }
}
