package sg;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.util.Stack;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class b implements Application.ActivityLifecycleCallbacks {

    public static final a f72060b = new a(null);

    private static final Lazy f72061c = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0() {
        @Override
        public final Object invoke() {
            return b.d();
        }
    });

    private Stack f72062a = new Stack();

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final b a() {
            return (b) b.f72061c.getValue();
        }

        private a() {
        }
    }

    public static final b d() {
        return new b();
    }

    public final String c() {
        Stack stack = this.f72062a;
        return (stack == null || stack.size() <= 1) ? "" : stack.get(stack.size() - 2).getClass().getSimpleName();
    }

    public final void e(Application app) {
        Intrinsics.h(app, "app");
        app.registerActivityLifecycleCallbacks(this);
    }

    @Override
    public void onActivityCreated(Activity activity, Bundle bundle) {
        Intrinsics.h(activity, "activity");
        Stack stack = this.f72062a;
        if (stack != null) {
            stack.add(activity);
        }
    }

    @Override
    public void onActivityDestroyed(Activity activity) {
        Intrinsics.h(activity, "activity");
        Stack stack = this.f72062a;
        if (stack != null) {
            stack.remove(activity);
        }
    }

    @Override
    public void onActivityPaused(Activity activity) {
        Intrinsics.h(activity, "activity");
    }

    @Override
    public void onActivityResumed(Activity activity) {
        Intrinsics.h(activity, "activity");
    }

    @Override
    public void onActivitySaveInstanceState(Activity activity, Bundle outState) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(outState, "outState");
    }

    @Override
    public void onActivityStarted(Activity activity) {
        Intrinsics.h(activity, "activity");
    }

    @Override
    public void onActivityStopped(Activity activity) {
        Intrinsics.h(activity, "activity");
    }
}
