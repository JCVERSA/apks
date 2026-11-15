package com.cloud.hisavana.sdk;

import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import androidx.webkit.ProxyConfig;
import com.cloud.hisavana.sdk.c0;
import com.cloud.sdk.commonutil.util.Preconditions;
import defpackage.g1a;
import defpackage.ikd;
import defpackage.y45;

public final class c0 {
    public final C0521r.a a;
    public final String b;

    public c0(C0521r.a aVar) {
        y45.j(aVar, "admListener");
        this.a = aVar;
        this.b = "AdmActionBridge";
    }

    public static final void b(String str, c0 c0Var) {
        y45.j(str, "$path");
        y45.j(c0Var, "this$0");
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (g1a.R(str, ProxyConfig.MATCH_HTTP, false, 2, null) || g1a.R(str, ProxyConfig.MATCH_HTTPS, false, 2, null) || g1a.R(str, "file", false, 2, null)) {
            c0Var.a.a(str, 3007);
        }
    }

    @JavascriptInterface
    public final void loadMaterialError(final String str) {
        y45.j(str, "path");
        ikd.b().w(this.b, "loadMaterialError " + str);
        Preconditions.d(new Preconditions.a() {
            @Override
            public final void onRun() {
                c0.b(str, this);
            }
        });
    }
}
