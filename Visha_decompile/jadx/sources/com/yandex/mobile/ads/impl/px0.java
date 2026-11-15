package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.monetization.ads.nativeads.CustomizableMediaView;
import com.yandex.mobile.ads.impl.px0;
import defpackage.y45;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONException;

public final class px0 {
    private final o3 a;
    private final qh2 b;
    private final ph2 c;
    private final Executor d;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public px0(Context context, o3 o3Var) {
        this(o3Var, new qh2(context), new ph2(context, o3Var));
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
    }

    public final void a(CustomizableMediaView customizableMediaView, String str) {
        y45.j(customizableMediaView, "mediaView");
        y45.j(str, "mediaType");
        String strC = this.a.c();
        if (strC != null) {
            int iO = this.a.o();
            y45.j(customizableMediaView, "view");
            y45.j(str, "mediaType");
            final nh2 nh2VarA = rh2.a(customizableMediaView, str);
            final sh2 sh2Var = new sh2(iO, strC);
            this.d.execute(new Runnable() {
                @Override
                public final void run() throws JSONException {
                    px0.a(this.b, sh2Var, nh2VarA);
                }
            });
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public px0(o3 o3Var, qh2 qh2Var, ph2 ph2Var) {
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
        y45.i(executorServiceNewSingleThreadExecutor, "newSingleThreadExecutor(...)");
        this(o3Var, qh2Var, ph2Var, executorServiceNewSingleThreadExecutor);
    }

    public px0(o3 o3Var, qh2 qh2Var, ph2 ph2Var, Executor executor) {
        y45.j(o3Var, "adConfiguration");
        y45.j(qh2Var, "viewSizeInfoStorage");
        y45.j(ph2Var, "viewSizeInfoReporter");
        y45.j(executor, "executor");
        this.a = o3Var;
        this.b = qh2Var;
        this.c = ph2Var;
        this.d = executor;
    }

    public static final void a(px0 px0Var, sh2 sh2Var, nh2 nh2Var) throws JSONException {
        y45.j(px0Var, "this$0");
        y45.j(sh2Var, "$viewSizeKey");
        y45.j(nh2Var, "$viewSizeInfo");
        px0Var.b.a(sh2Var, nh2Var);
        px0Var.c.a(nh2Var, px0Var.a);
    }
}
