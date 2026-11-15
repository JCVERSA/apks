package defpackage;

import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.google.android.gms.internal.ads.o0;
import com.google.android.gms.internal.ads.zzebe;

public final class wjf extends vjf {
    public wjf(ejf ejfVar, o0 o0Var, boolean z, zzebe zzebeVar) {
        super(ejfVar, o0Var, z, zzebeVar);
    }

    @Override
    public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        if (webResourceRequest == null || webResourceRequest.getUrl() == null) {
            return null;
        }
        return R(webView, webResourceRequest.getUrl().toString(), webResourceRequest.getRequestHeaders());
    }
}
