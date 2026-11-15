package com.transsion.onlinevideo.tiktokweb;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.webkit.WebView;
import androidx.webkit.ProxyConfig;
import com.blankj.utilcode.util.LogUtils;
import com.just.agentweb.AgentWeb;
import com.just.agentweb.IAgentWebSettings;
import com.just.agentweb.PermissionInterceptor;
import com.just.agentweb.jsbridge.BridgeWebView;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.vishaweb.IWebLoadStatusCallback;
import defpackage.lfc;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

public abstract class a {
    public static final String f = "visha_" + a.class.getSimpleName();
    public static Bundle g;
    public AgentWeb a;
    public IWebLoadStatusCallback b;
    public Activity c;
    public WebView d;
    public PermissionInterceptor e = new b();

    public class C0235a extends lfc {
        public C0235a() {
        }

        @Override
        public void bindAgentWebSupport(AgentWeb agentWeb) {
            this.mAgentWeb = agentWeb;
        }
    }

    public class b implements PermissionInterceptor {
        public b() {
        }

        @Override
        public boolean intercept(String str, String[] strArr, String str2) {
            return false;
        }
    }

    public boolean a() {
        return g() ? this.d.canGoBack() : this.a.getWebCreator().getWebView().canGoBack();
    }

    public String b(String str) {
        try {
            String strDecode = URLDecoder.decode(str, "UTF-8");
            Uri uri = Uri.parse(strDecode);
            if (uri.isHierarchical() && strDecode.startsWith(ProxyConfig.MATCH_HTTP)) {
                if (uri.getBooleanQueryParameter("vishaappinner", true)) {
                    return null;
                }
                strDecode = strDecode.contains("&vishaappinner") ? strDecode.replaceAll("(&vishaappinner=[^&]*)", "") : strDecode.replaceAll("(vishaappinner=[^&]*)", "");
                LogUtils.j(f, "get out url: " + strDecode);
            }
            return strDecode;
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return null;
        }
    }

    public IAgentWebSettings c() {
        return new C0235a();
    }

    public String d() {
        Bundle bundle = g;
        String string = bundle != null ? bundle.getString("url_key") : null;
        return TextUtils.isEmpty(string) ? "https://www.google.com" : string;
    }

    public WebView e() {
        return g() ? this.d : this.a.getWebCreator().getWebView();
    }

    public void f() {
        if (g()) {
            this.d.goBack();
        } else {
            this.a.getWebCreator().getWebView().goBack();
        }
    }

    public final boolean g() {
        AgentWeb agentWeb = this.a;
        boolean z = agentWeb == null || agentWeb.getWebCreator().getWebView() == null;
        if (z && this.d == null) {
            Context contextF = this.c;
            if (contextF == null) {
                contextF = MainApp.f();
            }
            this.d = new BridgeWebView(contextF);
        }
        return z;
    }

    public void h() {
        AgentWeb agentWeb = this.a;
        if (agentWeb != null) {
            agentWeb.destroy();
        }
    }

    public void i() {
        AgentWeb agentWeb = this.a;
        if (agentWeb != null) {
            agentWeb.onPause();
        }
    }

    public void j() {
        AgentWeb agentWeb = this.a;
        if (agentWeb != null) {
            agentWeb.onResume();
        }
    }

    public void k(IWebLoadStatusCallback iWebLoadStatusCallback) {
        this.b = iWebLoadStatusCallback;
    }
}
