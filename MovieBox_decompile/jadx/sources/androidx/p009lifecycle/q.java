package androidx.p009lifecycle;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;

public final class q {

    public static final q f9327a = new q();

    private static final AtomicBoolean f9328b = new AtomicBoolean(false);

    public static final class a extends j {
        @Override
        public void onActivityCreated(Activity activity, Bundle bundle) {
            Intrinsics.h(activity, "activity");
            i0.INSTANCE.c(activity);
        }
    }

    private q() {
    }

    public static final void a(Context context) {
        Intrinsics.h(context, "context");
        if (f9328b.getAndSet(true)) {
            return;
        }
        Context applicationContext = context.getApplicationContext();
        Intrinsics.f(applicationContext, "null cannot be cast to non-null type android.app.Application");
        ((Application) applicationContext).registerActivityLifecycleCallbacks(new a());
    }
}
