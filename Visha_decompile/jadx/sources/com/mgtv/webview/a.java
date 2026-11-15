package com.mgtv.webview;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Message;
import android.view.View;
import android.webkit.GeolocationPermissions;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.EditText;
import androidx.annotation.NonNull;

public class a extends WebChromeClient {
    private Activity a;

    public a(Activity activity) {
        this.a = activity;
    }

    public void a(WebView webView, String str) {
    }

    public void b(WebView webView, String str) {
    }

    @Override
    public boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
        Activity activity = this.a;
        if (activity == null || activity.isFinishing()) {
            return false;
        }
        WebView webView2 = new WebView(this.a);
        webView.addView(webView2);
        ((WebView.WebViewTransport) message.obj).setWebView(webView2);
        message.sendToTarget();
        webView2.setWebViewClient(new WebViewClient() {
            @Override
            public boolean shouldOverrideUrlLoading(WebView webView3, String str) {
                if (!a.this.a((View) webView3, str) && a.this.a != null) {
                    Intent intent = new Intent("android.intent.action.VIEW");
                    intent.setData(Uri.parse(str));
                    com.hunantv.imgo.util.a.a(a.this.a, intent);
                }
                return true;
            }
        });
        return true;
    }

    @Override
    public void onGeolocationPermissionsShowPrompt(String str, @NonNull GeolocationPermissions.Callback callback) {
        callback.invoke(str, true, true);
    }

    @Override
    public boolean onJsAlert(WebView webView, String str, String str2, final JsResult jsResult) {
        if (this.a.isFinishing()) {
            return true;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this.a);
        builder.setMessage(str2);
        builder.setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialogInterface, int i) {
                jsResult.confirm();
            }
        });
        builder.setCancelable(false);
        builder.create().show();
        return true;
    }

    @Override
    public boolean onJsPrompt(WebView webView, String str, String str2, String str3, final JsPromptResult jsPromptResult) {
        if (this.a.isFinishing()) {
            return true;
        }
        final EditText editText = new EditText(this.a);
        editText.setInputType(1);
        editText.setText(str3);
        new AlertDialog.Builder(this.a).setView(editText).setMessage(str2).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialogInterface, int i) {
                jsPromptResult.confirm(editText.getText().toString());
            }
        }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialogInterface, int i) {
                jsPromptResult.cancel();
            }
        }).create().show();
        return true;
    }

    @Override
    public void onProgressChanged(WebView webView, int i) {
        super.onProgressChanged(webView, i);
        a(webView, String.valueOf(i));
    }

    @Override
    public void onReceivedTitle(WebView webView, String str) {
        super.onReceivedTitle(webView, str);
        b(webView, str);
    }

    public boolean a(View view, String str) {
        return false;
    }
}
