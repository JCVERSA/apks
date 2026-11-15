package defpackage;

import android.app.Activity;
import android.net.http.SslError;
import android.os.Handler;
import android.util.Log;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import com.blankj.utilcode.util.LogUtils;
import com.just.agentweb.AgentWebUIControllerImplBase;
import com.transsion.playercommon.R;

public class jeb extends AgentWebUIControllerImplBase {
    public final Activity a;

    public jeb(Activity activity) {
        this.a = activity;
    }

    @Override
    public void onSelectItemsPrompt(WebView webView, String str, String[] strArr, Handler.Callback callback) {
        super.onSelectItemsPrompt(webView, str, strArr, callback);
    }

    @Override
    public void onShowMessage(String str, String str2) {
        super.onShowMessage(str, str2);
        Log.i(this.TAG, "message:" + str);
    }

    @Override
    public void onShowSslCertificateErrorDialog(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        String string;
        int primaryError = sslError.getPrimaryError();
        if (primaryError == 0) {
            string = this.a.getString(R.string.agentweb_message_show_ssl_not_yet_valid);
        } else if (primaryError == 1) {
            string = this.a.getString(R.string.agentweb_message_show_ssl_expired);
        } else if (primaryError != 2) {
            string = primaryError != 3 ? this.a.getString(R.string.agentweb_message_show_ssl_error) : this.a.getString(R.string.agentweb_message_show_ssl_untrusted);
        } else {
            string = this.a.getString(R.string.agentweb_message_show_ssl_hostname_mismatch);
        }
        LogUtils.j(this.TAG, "get_ssl_error：", string);
        if (sslErrorHandler != null) {
            sslErrorHandler.proceed();
        }
    }
}
