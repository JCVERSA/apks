package androidx.p009lifecycle;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class g0 implements u {

    public static final b f9280i = new b(null);

    private static final g0 f9281j = new g0();

    private int f9282a;

    private int f9283b;

    private Handler f9286e;

    private boolean f9284c = true;

    private boolean f9285d = true;

    private final w f9287f = new w(this);

    private final Runnable f9288g = new Runnable() {
        @Override
        public final void run() {
            g0.i(this.f9276a);
        }
    };

    private final i0.a f9289h = new d();

    public static final class a {

        public static final a f9290a = new a();

        private a() {
        }

        @JvmStatic
        public static final void a(Activity activity, Application.ActivityLifecycleCallbacks callback) {
            Intrinsics.h(activity, "activity");
            Intrinsics.h(callback, "callback");
            activity.registerActivityLifecycleCallbacks(callback);
        }
    }

    public static final class b {
        public b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final u a() {
            return g0.f9281j;
        }

        public final void b(Context context) {
            Intrinsics.h(context, "context");
            g0.f9281j.h(context);
        }

        private b() {
        }
    }

    public static final class c extends j {

        public static final class a extends j {
            final g0 this$0;

            a(g0 g0Var) {
                this.this$0 = g0Var;
            }

            @Override
            public void onActivityPostResumed(Activity activity) {
                Intrinsics.h(activity, "activity");
                this.this$0.e();
            }

            @Override
            public void onActivityPostStarted(Activity activity) {
                Intrinsics.h(activity, "activity");
                this.this$0.f();
            }
        }

        c() {
        }

        @Override
        public void onActivityCreated(Activity activity, Bundle bundle) {
            Intrinsics.h(activity, "activity");
            if (Build.VERSION.SDK_INT < 29) {
                i0.INSTANCE.b(activity).e(g0.this.f9289h);
            }
        }

        @Override
        public void onActivityPaused(Activity activity) {
            Intrinsics.h(activity, "activity");
            g0.this.d();
        }

        @Override
        public void onActivityPreCreated(Activity activity, Bundle bundle) {
            Intrinsics.h(activity, "activity");
            a.a(activity, new a(g0.this));
        }

        @Override
        public void onActivityStopped(Activity activity) {
            Intrinsics.h(activity, "activity");
            g0.this.g();
        }
    }

    private g0() {
    }

    public static final void i(g0 this$0) {
        Intrinsics.h(this$0, "this$0");
        this$0.j();
        this$0.k();
    }

    public static final u l() {
        return f9280i.a();
    }

    public final void d() {
        int i10 = this.f9283b - 1;
        this.f9283b = i10;
        if (i10 == 0) {
            Handler handler = this.f9286e;
            Intrinsics.e(handler);
            handler.postDelayed(this.f9288g, 700L);
        }
    }

    public final void e() {
        int i10 = this.f9283b + 1;
        this.f9283b = i10;
        if (i10 == 1) {
            if (this.f9284c) {
                this.f9287f.i(Lifecycle.Event.ON_RESUME);
                this.f9284c = false;
            } else {
                Handler handler = this.f9286e;
                Intrinsics.e(handler);
                handler.removeCallbacks(this.f9288g);
            }
        }
    }

    public final void f() {
        int i10 = this.f9282a + 1;
        this.f9282a = i10;
        if (i10 == 1 && this.f9285d) {
            this.f9287f.i(Lifecycle.Event.ON_START);
            this.f9285d = false;
        }
    }

    public final void g() {
        this.f9282a--;
        k();
    }

    @Override
    public Lifecycle getLifecycle() {
        return this.f9287f;
    }

    public final void h(Context context) {
        Intrinsics.h(context, "context");
        this.f9286e = new Handler();
        this.f9287f.i(Lifecycle.Event.ON_CREATE);
        Context applicationContext = context.getApplicationContext();
        Intrinsics.f(applicationContext, "null cannot be cast to non-null type android.app.Application");
        ((Application) applicationContext).registerActivityLifecycleCallbacks(new c());
    }

    public final void j() {
        if (this.f9283b == 0) {
            this.f9284c = true;
            this.f9287f.i(Lifecycle.Event.ON_PAUSE);
        }
    }

    public final void k() {
        if (this.f9282a == 0 && this.f9284c) {
            this.f9287f.i(Lifecycle.Event.ON_STOP);
            this.f9285d = true;
        }
    }

    public static final class d implements i0.a {
        d() {
        }

        @Override
        public void onResume() {
            g0.this.e();
        }

        @Override
        public void onStart() {
            g0.this.f();
        }

        @Override
        public void onCreate() {
        }
    }
}
