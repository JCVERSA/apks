package o;

import android.content.Context;
import com.mobiuspace.framework.launchconductor.Policy;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.premium.web.WebViewExtKt;

public final class y39 implements uh4 {
    public final boolean a;

    public y39(boolean z) {
        this.a = z;
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
            u81.a("webview", "lock:" + th.getMessage());
        }
    }

    @Override
    public String tag() {
        return "WebViewTask";
    }

    @Override
    public Policy u() {
        return uh4.a.a(this);
    }
}
