package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.lzy.okgo.model.Progress;
import defpackage.y45;

public final class pe1 {
    private final Context a;
    private final re1 b;
    private final gq1 c;
    private final pw1 d;

    public pe1(Context context) {
        y45.j(context, "context");
        this.a = context.getApplicationContext();
        this.b = se1.a(context);
        int i = gq1.c;
        this.c = gq1.a.a();
        int i2 = pw1.l;
        this.d = pw1.a.a();
    }

    public final class a implements xq1.b<String>, xq1.a {
        private final String a;
        private final cb2 b;
        final pe1 c;

        public a(pe1 pe1Var, String str, cb2 cb2Var) {
            y45.j(str, "omSdkControllerUrl");
            y45.j(cb2Var, "listener");
            this.c = pe1Var;
            this.a = str;
            this.b = cb2Var;
        }

        @Override
        public final void a(si2 si2Var) {
            y45.j(si2Var, "error");
            this.b.a();
        }

        @Override
        public final void a(Object obj) {
            String str = (String) obj;
            y45.j(str, "response");
            this.c.b.a(str);
            this.c.b.b(this.a);
            this.b.a();
        }
    }

    public final void a() {
        gq1 gq1Var = this.c;
        Context context = this.a;
        y45.i(context, "appContext");
        gq1Var.getClass();
        gq1.a(context, "om_sdk_js_request_tag");
    }

    public final void a(cb2 cb2Var) {
        y45.j(cb2Var, "listener");
        pw1 pw1Var = this.d;
        Context context = this.a;
        y45.i(context, "appContext");
        ju1 ju1VarA = pw1Var.a(context);
        String strF = ju1VarA != null ? ju1VarA.F() : null;
        String strB = this.b.b();
        if (strF != null && strF.length() > 0 && !y45.e(strF, strB)) {
            a aVar = new a(this, strF, cb2Var);
            e32 e32Var = new e32(strF, aVar, aVar);
            e32Var.b((Object) "om_sdk_js_request_tag");
            gq1 gq1Var = this.c;
            Context context2 = this.a;
            y45.i(context2, "appContext");
            synchronized (gq1Var) {
                y45.j(context2, "context");
                y45.j(e32Var, Progress.REQUEST);
                hd1.a(context2).a(e32Var);
            }
            return;
        }
        qe1.a(qe1.this);
    }
}
