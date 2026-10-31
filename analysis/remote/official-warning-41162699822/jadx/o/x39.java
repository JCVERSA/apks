package o;

import android.content.Context;
import android.webkit.WebSettings;
import com.mobiuspace.framework.launchconductor.Policy;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.premium.web.WebViewExtKt;

public final class x39 implements uh4 {
    public final boolean a;

    public x39(boolean z) {
        this.a = z;
    }

    public static void a(Context context) {
        b(context);
    }

    public static final void b(Context context) {
        try {
            WebSettings.getDefaultUserAgent(context);
        } catch (Throwable th) {
            u81.a("webview35", "init:" + th.getMessage());
        }
    }

    @Override
    public void run() {
        Context contextZ = PhoenixApplication.z();
        try {
            or3.c(contextZ);
            String strA = xi7.a(contextZ);
            or3.e(strA, "getProcessName(...)");
            WebViewExtKt.h(contextZ, strA, this.a);
        } catch (Throwable th) {
            u81.a("webview35", "lock:" + th.getMessage());
        }
        y48.l(new w39(contextZ));
    }

    @Override
    public String tag() {
        return "WebViewTask35";
    }

    @Override
    public Policy u() {
        return uh4.a.a(this);
    }
}
