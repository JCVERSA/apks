package com.transsion.postdetail.util;

import android.app.Activity;
import android.view.OrientationEventListener;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public final class n extends OrientationEventListener {

    private final Activity f48083a;

    private final Function1 f48084b;

    private int f48085c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n(Activity activity, Function1 callback) {
        super(activity);
        Intrinsics.h(activity, "activity");
        Intrinsics.h(callback, "callback");
        this.f48083a = activity;
        this.f48084b = callback;
    }

    public final int a() {
        return this.f48085c;
    }

    public final int b(Activity activity) {
        Intrinsics.h(activity, "activity");
        return activity.getWindowManager().getDefaultDisplay().getRotation();
    }

    public final void c(int i10) {
        if (this.f48085c == i10) {
            return;
        }
        this.f48085c = i10;
        this.f48084b.invoke(Integer.valueOf(i10));
    }

    @Override
    public void onOrientationChanged(int i10) {
        if (71 <= i10 && i10 < 110) {
            if (this.f48085c != 3 && b(this.f48083a) == 3) {
                c(3);
                return;
            }
            return;
        }
        if (251 > i10 || i10 >= 290 || this.f48085c == 1 || b(this.f48083a) != 1) {
            return;
        }
        c(1);
    }
}
