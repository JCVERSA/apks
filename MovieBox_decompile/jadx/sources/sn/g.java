package sn;

import android.app.Activity;
import android.view.OrientationEventListener;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public final class g extends OrientationEventListener {

    private final Activity f72357a;

    private final Function1 f72358b;

    private int f72359c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(Activity activity, Function1 callback) {
        super(activity);
        Intrinsics.h(activity, "activity");
        Intrinsics.h(callback, "callback");
        this.f72357a = activity;
        this.f72358b = callback;
    }

    private final int a(Activity activity) {
        return activity.getWindowManager().getDefaultDisplay().getRotation();
    }

    private final void b(int i10) {
        if (this.f72359c == i10) {
            return;
        }
        this.f72359c = i10;
        this.f72358b.invoke(Integer.valueOf(i10));
    }

    @Override
    public void onOrientationChanged(int i10) {
        if (71 <= i10 && i10 < 110) {
            if (this.f72359c != 3 && a(this.f72357a) == 3) {
                b(3);
                return;
            }
            return;
        }
        if (251 > i10 || i10 >= 290 || this.f72359c == 1 || a(this.f72357a) != 1) {
            return;
        }
        b(1);
    }
}
