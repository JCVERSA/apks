package defpackage;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.GeolocationPermissions;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.EditText;
import com.mgmi.R;

public abstract class p1d extends WebChromeClient {
    public Activity a;
    public View b;

    public class a implements DialogInterface.OnClickListener {
        public final JsResult b;

        public a(JsResult jsResult) {
            this.b = jsResult;
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            this.b.confirm();
        }
    }

    public class b implements DialogInterface.OnClickListener {
        public final JsPromptResult b;

        public b(JsPromptResult jsPromptResult) {
            this.b = jsPromptResult;
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            this.b.cancel();
        }
    }

    public class c implements DialogInterface.OnClickListener {
        public final JsPromptResult b;
        public final EditText c;

        public c(JsPromptResult jsPromptResult, EditText editText) {
            this.b = jsPromptResult;
            this.c = editText;
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            this.b.confirm(this.c.getText().toString());
        }
    }

    public class d extends WebViewClient {
        public d() {
        }

        @Override
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (!p1d.this.c(webView, str) && p1d.this.a != null) {
                h2d.h(p1d.this.a, str);
            }
            return true;
        }
    }

    public p1d(Activity activity) {
        this.a = activity;
    }

    public void b(WebView webView, String str) {
    }

    public boolean c(View view, String str) {
        return false;
    }

    public abstract void d(WebView webView, String str);

    @Override
    public View getVideoLoadingProgressView() {
        if (this.b == null) {
            this.b = LayoutInflater.from(this.a).inflate(R.layout.mgmi_video_progress, (ViewGroup) null);
        }
        return this.b;
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
        webView2.setWebViewClient(new d());
        return true;
    }

    @Override
    public void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
        callback.invoke(str, true, true);
    }

    @Override
    public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        if (this.a.isFinishing()) {
            return true;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this.a);
        builder.setMessage(str2);
        builder.setPositiveButton(android.R.string.ok, new a(jsResult));
        builder.setCancelable(false);
        builder.create().show();
        return true;
    }

    @Override
    public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        if (this.a.isFinishing()) {
            return true;
        }
        EditText editText = new EditText(this.a);
        editText.setInputType(1);
        editText.setText(str3);
        new AlertDialog.Builder(this.a).setView(editText).setMessage(str2).setPositiveButton(android.R.string.ok, new c(jsPromptResult, editText)).setNegativeButton(android.R.string.cancel, new b(jsPromptResult)).create().show();
        return true;
    }

    @Override
    public void onProgressChanged(WebView webView, int i) {
        super.onProgressChanged(webView, i);
        b(webView, String.valueOf(i));
    }

    @Override
    public void onReceivedTitle(WebView webView, String str) {
        super.onReceivedTitle(webView, str);
        d(webView, str);
    }
}
