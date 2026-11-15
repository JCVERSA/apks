package defpackage;

import android.webkit.WebView;
import com.iab.omid.library.hisavana.publisher.AdSessionStatePublisher;

public class k3d extends AdSessionStatePublisher {
    public k3d(String str, WebView webView) {
        super(str);
        if (webView != null && !webView.getSettings().getJavaScriptEnabled()) {
            webView.getSettings().setJavaScriptEnabled(true);
        }
        g(webView);
    }
}
