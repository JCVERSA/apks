package defpackage;

import android.util.Log;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.internal.ads.e6;

public final class tvh extends WebViewClient {
    public final e6 a;

    public tvh(e6 e6Var) {
        this.a = e6Var;
    }

    @Override
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        Log.w("NativeBridge", "WebView renderer gone: " + renderProcessGoneDetail.toString() + "for WebView: " + String.valueOf(webView));
        e6 e6Var = this.a;
        if (e6Var.a() == webView) {
            Log.w("NativeBridge", "Deallocating the Native bridge as it is unusable. No further events will be generated for this session.");
            e6Var.n(null);
        }
        webView.destroy();
        return true;
    }
}
