package defpackage;

import android.app.Activity;
import android.os.Bundle;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebView;
import com.just.agentweb.AgentWeb;
import com.just.agentweb.AgentWebConfig;
import com.just.agentweb.DefaultWebClient;
import com.just.agentweb.jsbridge.BridgeWebView;
import com.just.agentweb.jsbridge.BridgeWebViewClient;
import com.transsion.netdisk.R;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class w41 extends rfc {
    public static final a l = new a(null);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final rfc a(String str) {
            w41 w41Var = new w41();
            w41Var.a = new Bundle();
            w41Var.a.putString("url_key", str);
            return w41Var;
        }

        public a() {
        }
    }

    @Override
    public void c(Activity activity, ViewGroup viewGroup, int i, ViewGroup.LayoutParams layoutParams) {
        this.d = activity;
        if (ge.e()) {
            AgentWebConfig.debug();
        }
        BridgeWebView bridgeWebView = new BridgeWebView(this.d);
        this.f = bridgeWebView;
        bridgeWebView.setBackgroundColor(this.d.getResources().getColor(R.color.transparent, this.d.getTheme()));
        ViewParent viewParent = this.f;
        y45.h(viewParent, "null cannot be cast to non-null type com.just.agentweb.jsbridge.BridgeWebViewClient.OnLoadJSListener");
        this.g = new BridgeWebViewClient((BridgeWebViewClient.OnLoadJSListener) viewParent);
        AgentWeb.AgentBuilder agentBuilderWith = AgentWeb.with(this.d);
        y45.g(viewGroup);
        y45.g(layoutParams);
        AgentWeb.CommonBuilder webChromeClient = agentBuilderWith.setAgentWebParent(viewGroup, i, layoutParams).useDefaultIndicator(this.d.getResources().getColor(R.color.sniffer_web_progress_color, null), this.d.getResources().getColor(R.color.sniffer_web_progress_bg_color, null), 2).setWebLayout(null).setWebView(this.f).setAgentWebWebSettings(h()).setWebViewClient(this.h).setWebChromeClient(this.i);
        Activity activity2 = this.d;
        y45.i(activity2, "mActivity");
        WebView webView = this.f;
        y45.i(webView, "mWebView");
        this.b = webChromeClient.addJavascriptInterface("Android", new v31(activity2, webView)).setPermissionInterceptor(this.j).setSecurityType(AgentWeb.SecurityType.STRICT_CHECK).setAgentWebUIController(new jeb(this.d)).setOpenOtherPageWays(DefaultWebClient.OpenOtherPageWays.DERECT).createAgentWeb().ready().go(i());
    }
}
