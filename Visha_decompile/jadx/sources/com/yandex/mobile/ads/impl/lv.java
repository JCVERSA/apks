package com.yandex.mobile.ads.impl;

import android.os.Handler;
import com.yandex.mobile.ads.impl.lv;
import defpackage.y45;
import java.util.HashMap;

public final class lv implements f42 {
    private final du a;
    private final t8 b;
    private final Handler c;

    public final class a implements eu {
        public a() {
        }

        @Override
        public final void onLeftApplication() {
            lv.this.b.a(19, null);
        }

        @Override
        public final void onReturnedToApplication() {
            lv.this.b.a(20, null);
        }
    }

    public lv(du duVar, t8 t8Var, Handler handler) {
        y45.j(duVar, "customClickHandler");
        y45.j(t8Var, "resultReceiver");
        y45.j(handler, "handler");
        this.a = duVar;
        this.b = t8Var;
        this.c = handler;
    }

    @Override
    public final void a(tp1 tp1Var, final String str) {
        y45.j(tp1Var, "reporter");
        y45.j(str, "targetUrl");
        HashMap map = new HashMap();
        map.put("click_type", "custom");
        v82.a.getClass();
        map.put("click_url", v82.a(str));
        op1.b bVar = op1.b.c;
        tp1Var.a(map);
        this.c.post(new Runnable() {
            @Override
            public final void run() {
                lv.a(this.b, str);
            }
        });
    }

    public static final void a(lv lvVar, String str) {
        y45.j(lvVar, "this$0");
        y45.j(str, "$targetUrl");
        lvVar.a.a(str, lvVar.new a());
    }
}
