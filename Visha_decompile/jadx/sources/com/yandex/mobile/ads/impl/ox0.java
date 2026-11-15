package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.ViewTreeObserver;
import com.monetization.ads.nativeads.CustomizableMediaView;
import defpackage.y45;

public final class ox0 {
    private final o3 a;
    private final px0 b;
    private boolean c;

    public static final class a implements ViewTreeObserver.OnPreDrawListener {
        final CustomizableMediaView b;
        final hx0.a c;

        public a(CustomizableMediaView customizableMediaView, hx0.a aVar) {
            this.b = customizableMediaView;
            this.c = aVar;
        }

        @Override
        public final boolean onPreDraw() {
            ox0.this.b.a(this.b, this.c.a());
            return false;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ox0(Context context, o3 o3Var) {
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        this(context, o3Var, new px0(applicationContext, o3Var));
    }

    public final void a(CustomizableMediaView customizableMediaView, hx0.a aVar) {
        y45.j(customizableMediaView, "mediaView");
        y45.j(aVar, "type");
        if (this.c) {
            if (this.a.b() == ts.g) {
                wh2.a(customizableMediaView, new a(customizableMediaView, aVar));
            }
            this.c = false;
        }
    }

    public ox0(Context context, o3 o3Var, px0 px0Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(px0Var, "mediaViewSizeInfoController");
        this.a = o3Var;
        this.b = px0Var;
        this.c = true;
    }
}
