package com.mgtv.webview;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import com.mgtv.ssp.R;
import com.mgtv.webview.jsbridge.BridgeWebView;

public class b extends com.mgtv.webview.jsbridge.c {
    private Activity a;

    public b(BridgeWebView bridgeWebView, Activity activity) {
        super(bridgeWebView);
        this.a = activity;
    }

    @Override
    public void onReceivedSslError(WebView webView, final SslErrorHandler sslErrorHandler, SslError sslError) {
        Activity activity = this.a;
        if (activity == null || activity.isDestroyed() || this.a.isFinishing()) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this.a);
        builder.setMessage(R.string.ssp_ssl_error);
        builder.setPositiveButton(R.string.ssp_common_continue, new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialogInterface, int i) {
                sslErrorHandler.proceed();
                dialogInterface.dismiss();
            }
        });
        builder.setNegativeButton(R.string.ssp_common_cancel, new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialogInterface, int i) {
                sslErrorHandler.cancel();
                dialogInterface.dismiss();
            }
        });
        builder.create().show();
    }
}
