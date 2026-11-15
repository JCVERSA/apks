package com.yandex.mobile.ads.impl;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.VisibleForTesting;
import defpackage.y45;
import java.lang.ref.WeakReference;
import java.util.Objects;
import java.util.UUID;

public final class l0 {
    private final Context a;
    private final o0 b;
    private final g0 c;
    private final j32 d;
    private final a e;

    public l0(Context context, o3 o3Var, n0 n0Var, Context context2, o0 o0Var, g0 g0Var, j32 j32Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(n0Var, "interactionEventListener");
        y45.j(context2, "applicationContext");
        y45.j(o0Var, "activityInteractionTracker");
        y45.j(g0Var, "activityBackgroundListener");
        y45.j(j32Var, "strongReferenceKeepingManager");
        this.a = context2;
        this.b = o0Var;
        this.c = g0Var;
        this.d = j32Var;
        this.e = new a(this);
    }

    public final void a() {
        this.c.b(this.a, (r0) this.e);
        this.c.b(this.a, this.e);
    }

    public final void b() {
        this.b.a(o0.a.e);
    }

    public final void c() {
        this.b.b(o0.a.e);
    }

    public final void d() {
        this.b.a(o0.a.c);
        this.c.a(this.a, (r0) this.e);
        this.c.a(this.a, this.e);
        this.d.a(xq0.d, this);
    }

    public final void e() {
        this.d.b(xq0.d, this);
        this.c.b(this.a, (r0) this.e);
        this.c.b(this.a, this.e);
        this.b.b(o0.a.c);
    }

    public final void f() {
        this.b.a(o0.a.d);
    }

    public final void g() {
        this.b.b(o0.a.d);
    }

    public final void a(x71 x71Var) {
        y45.j(x71Var, "reportParameterManager");
        this.b.a(x71Var);
    }

    @VisibleForTesting
    public static final class a implements r0, lr1 {
        private final l0 a;
        private WeakReference<Activity> b;
        private String c;

        public a(l0 l0Var) {
            y45.j(l0Var, "activityInteractionController");
            this.a = l0Var;
        }

        @Override
        public final void a(Activity activity, Bundle bundle) {
            String string;
            y45.j(activity, "activity");
            Objects.toString(activity);
            sp0.a(new Object[0]);
            if (bundle == null || (string = bundle.getString("monetization_ads_activity_id")) == null || !y45.e(string, this.c)) {
                return;
            }
            this.a.d();
        }

        @Override
        public final void b(Activity activity) {
            y45.j(activity, "activity");
            Objects.toString(activity);
            boolean z = false;
            sp0.a(new Object[0]);
            int i = pw1.l;
            ju1 ju1VarA = pw1.a.a().a(activity);
            boolean z2 = ju1VarA != null && ju1VarA.r0();
            Intent intent = activity.getIntent();
            if (intent != null && intent.getBooleanExtra("monetization_ads_activity_click", false)) {
                z = true;
            }
            WeakReference<Activity> weakReference = this.b;
            if ((weakReference == null || !y45.e(activity, weakReference.get()) || z2) && (!z2 || z)) {
                return;
            }
            this.a.d();
        }

        @Override
        public final void a(Activity activity) {
            y45.j(activity, "activity");
            Objects.toString(activity);
            sp0.a(new Object[0]);
            if (this.b == null) {
                this.b = new WeakReference<>(activity);
            }
        }

        @Override
        public final void b(Activity activity, Bundle bundle) {
            WeakReference<Activity> weakReference;
            y45.j(activity, "activity");
            Objects.toString(activity);
            sp0.a(new Object[0]);
            if (bundle == null || (weakReference = this.b) == null || !y45.e(activity, weakReference.get())) {
                return;
            }
            String string = UUID.randomUUID().toString();
            this.c = string;
            bundle.putString("monetization_ads_activity_id", string);
        }
    }

    public l0(Context context, o3 o3Var, o8 o8Var, n0 n0Var, m80 m80Var) {
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        o0 o0Var = new o0(context, o3Var, o8Var, n0Var, m80Var);
        i0 i0VarA = h0.a();
        int i = j32.d;
        this(context, o3Var, n0Var, applicationContext, o0Var, i0VarA, j32.a.a());
    }
}
