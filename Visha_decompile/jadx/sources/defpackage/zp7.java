package defpackage;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.help.view.WebViewActivity;

public class zp7 extends WebViewClient {
    public final WebViewActivity a;

    public zp7(WebViewActivity webViewActivity) {
        this.a = webViewActivity;
    }

    @Override
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (str.contains("policy.html")) {
            this.a.getActionBar().setTitle(this.a.getString(R.string.xn_privacy_policy));
        } else if (str.contains("terms.html")) {
            this.a.getActionBar().setTitle(this.a.getString(R.string.xn_user_agreement));
        }
    }

    @Override
    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        Log.d("com.palm.id.log", "onReceivedSslError");
        sslErrorHandler.cancel();
    }

    @Override
    public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        webView.loadUrl(webResourceRequest.getUrl().toString());
        return true;
    }
}
