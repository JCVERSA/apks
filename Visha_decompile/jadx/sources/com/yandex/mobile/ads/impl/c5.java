package com.yandex.mobile.ads.impl;

import android.os.Bundle;
import defpackage.y45;
import java.lang.ref.WeakReference;

public final class c5 implements q3 {
    private final t8 a;
    private final WeakReference<p51> b;

    public c5(p51 p51Var) {
        this(p51Var, new t8(), new WeakReference(p51Var));
    }

    public final t8 a() {
        return this.a;
    }

    @Override
    public final void a(int i, Bundle bundle) {
        p51 p51Var = this.b.get();
        if (p51Var != null) {
            if (i == 19) {
                p51Var.g();
            }
            if (i == 20) {
                p51Var.f();
                return;
            }
            switch (i) {
                case 6:
                    p51Var.e();
                    break;
                case 7:
                    p51Var.d();
                    break;
                case 8:
                    p51Var.c();
                    break;
                case 9:
                    p51Var.b();
                    break;
            }
        }
    }

    public c5(p51 p51Var, t8 t8Var, WeakReference<p51> weakReference) {
        y45.j(p51Var, "nativeAdEventController");
        y45.j(t8Var, "adResultReceiver");
        y45.j(weakReference, "eventControllerReference");
        this.a = t8Var;
        this.b = weakReference;
        t8Var.a(this);
    }
}
