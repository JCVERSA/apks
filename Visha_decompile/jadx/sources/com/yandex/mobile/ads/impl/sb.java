package com.yandex.mobile.ads.impl;

import android.app.Dialog;
import defpackage.y45;

public final class sb {
    private final Dialog a;
    private final vb b;

    public final class a implements xb {
        public a() {
        }

        @Override
        public final void a() {
            n10.a(sb.this.a);
        }
    }

    public sb(Dialog dialog, vb vbVar) {
        y45.j(dialog, "dialog");
        y45.j(vbVar, "adtuneOptOutWebView");
        this.a = dialog;
        this.b = vbVar;
    }

    public final void a(String str) {
        y45.j(str, "url");
        this.b.setAdtuneWebViewListener(new a());
        this.b.loadUrl(str);
        this.a.show();
    }
}
