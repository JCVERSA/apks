package defpackage;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import com.mgadplus.brower.jsbridge.BridgeWebView;
import com.mgmi.R;

public abstract class n5d extends q7d {
    public Activity b;

    public class a implements DialogInterface.OnClickListener {
        public final SslErrorHandler b;

        public a(SslErrorHandler sslErrorHandler) {
            this.b = sslErrorHandler;
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            this.b.proceed();
            dialogInterface.dismiss();
        }
    }

    public class b implements DialogInterface.OnClickListener {
        public final SslErrorHandler b;

        public b(SslErrorHandler sslErrorHandler) {
            this.b = sslErrorHandler;
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            this.b.cancel();
            dialogInterface.dismiss();
        }
    }

    public n5d(BridgeWebView bridgeWebView, Activity activity) {
        super(bridgeWebView);
        this.b = activity;
    }

    @Override
    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        Activity activity = this.b;
        if (activity == null || activity.isDestroyed() || this.b.isFinishing()) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this.b);
        builder.setMessage(R.string.mgmi_ssl_error);
        builder.setPositiveButton(R.string.mgmi_common_continue, new a(sslErrorHandler));
        builder.setNegativeButton(R.string.mgmi_common_cancel, new b(sslErrorHandler));
        builder.create().show();
    }
}
