package defpackage;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.text.TextUtils;
import androidx.webkit.ProxyConfig;
import com.transsion.xuanniao.account.comm.widget.NoWifiPage;
import com.transsion.xuanniao.account.help.view.WebViewActivity;

public class qp7 implements NoWifiPage.b {
    public final WebViewActivity a;

    public qp7(WebViewActivity webViewActivity) {
        this.a = webViewActivity;
    }

    @Override
    public void a() {
        ConnectivityManager connectivityManager;
        NetworkCapabilities networkCapabilities;
        WebViewActivity webViewActivity = this.a;
        if (webViewActivity == null || (connectivityManager = (ConnectivityManager) webViewActivity.getApplicationContext().getSystemService("connectivity")) == null) {
            return;
        }
        try {
            Network activeNetwork = connectivityManager.getActiveNetwork();
            if (activeNetwork == null || (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) == null) {
                return;
            }
            if (networkCapabilities.hasTransport(1) || networkCapabilities.hasTransport(0) || networkCapabilities.hasTransport(4) || networkCapabilities.hasTransport(3)) {
                WebViewActivity webViewActivity2 = this.a;
                webViewActivity2.i.OppO00p(webViewActivity2);
                if (TextUtils.isEmpty(this.a.g) || !this.a.g.startsWith(ProxyConfig.MATCH_HTTP)) {
                    return;
                }
                WebViewActivity webViewActivity3 = this.a;
                webViewActivity3.e.loadUrl(webViewActivity3.g);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
