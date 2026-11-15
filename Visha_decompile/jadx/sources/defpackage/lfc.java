package defpackage;

import android.webkit.WebView;
import com.blankj.utilcode.util.LogUtils;
import com.just.agentweb.AbsAgentWebSettings;
import com.just.agentweb.IAgentWebSettings;

public abstract class lfc extends AbsAgentWebSettings {
    @Override
    public IAgentWebSettings toSetting(WebView webView) {
        String str = webView.getSettings().getUserAgentString() + "; VISHAAPP " + jf.h(jf.c());
        IAgentWebSettings setting = super.toSetting(webView);
        webView.getSettings().setUserAgentString((str.replace("; wv", "") + " Mobile").replace("; wv", ""));
        LogUtils.j("VishaWebSettings", "UserAgentString : " + webView.getSettings().getUserAgentString());
        return setting;
    }
}
