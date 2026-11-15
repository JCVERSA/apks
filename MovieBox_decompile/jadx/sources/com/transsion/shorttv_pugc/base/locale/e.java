package com.transsion.shorttv_pugc.base.locale;

import android.R;
import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Looper;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewGroupKt;
import java.util.Iterator;
import java.util.Locale;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class e implements Application.ActivityLifecycleCallbacks {

    public static final a f51783d = new a(null);

    private final SparseArray f51784a = new SparseArray(4);

    private int f51785b;

    private Integer f51786c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private static final class b {

        private final Activity f51787a;

        private Locale f51788b;

        private Locale f51789c;

        public b(Activity activity) {
            Intrinsics.h(activity, "activity");
            this.f51787a = activity;
        }

        public final Activity a() {
            return this.f51787a;
        }

        public final Locale b() {
            return this.f51789c;
        }

        public final Locale c() {
            return this.f51788b;
        }

        public final void d(Locale locale) {
            this.f51789c = locale;
        }

        public final void e(Locale locale) {
            this.f51788b = locale;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void a(View view) {
        if (view instanceof js.a) {
            ((js.a) view).changeLocal();
        } else if (view instanceof ViewGroup) {
            Iterator f64466a = ViewGroupKt.getChildren((ViewGroup) view).getF64466a();
            while (f64466a.hasNext()) {
                a((View) f64466a.next());
            }
        }
    }

    private final void b(Activity activity) {
        wf.a.C0922a.f(wf.a.f74274a, "LocaleManagerCB", "notifyActivityChangedLocale()-> activity = " + activity + " , waitChangedCount = " + this.f51785b, false, 4, null);
        if (this.f51785b <= 0) {
            return;
        }
        b bVar = (b) this.f51784a.get(System.identityHashCode(activity));
        if ((bVar != null ? bVar.c() : null) == null) {
            return;
        }
        this.f51785b--;
        boolean z10 = TextUtils.getLayoutDirectionFromLocale(bVar.b()) == TextUtils.getLayoutDirectionFromLocale(bVar.c());
        bVar.d(bVar.c());
        bVar.e(null);
        if (z10) {
            return;
        }
        d(activity);
    }

    private final void c() {
        Integer num = this.f51786c;
        if (num == null) {
            return;
        }
        SparseArray sparseArray = this.f51784a;
        Intrinsics.e(num);
        b bVar = (b) sparseArray.get(num.intValue());
        if (bVar == null) {
            return;
        }
        b(bVar.a());
    }

    private final void d(Activity activity) {
        activity.finish();
        Intent intent = activity.getIntent();
        intent.putExtra("extra_language_activity_restart", true);
        activity.startActivity(intent);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0049  */
    public final void e(Locale locale) {
        int i10;
        if (Thread.currentThread() != Looper.getMainLooper().getThread()) {
            throw new UnsupportedOperationException();
        }
        int size = this.f51784a.size();
        boolean z10 = false;
        if (size <= 0) {
            this.f51785b = 0;
            return;
        }
        int i11 = this.f51785b;
        int i12 = 0;
        while (i12 < size) {
            b bVar = (b) this.f51784a.valueAt(i12);
            wf.a.C0922a c0922a = wf.a.f74274a;
            wf.a.C0922a.f(c0922a, "LocaleManagerCB", "setLocaleChanged()-> localeState = " + bVar, false, 4, null);
            if (bVar == null) {
                i10 = size;
            } else {
                Activity activityA = bVar.a();
                boolean z11 = (activityA.isFinishing() || activityA.isDestroyed()) ? true : z10;
                boolean z12 = z11;
                wf.a.C0922a.f(c0922a, "LocaleManagerCB", "setLocaleChanged()-> activityFinished = " + z11, false, 4, null);
                if (z12) {
                    i10 = size;
                } else {
                    Locale localeB = bVar.b();
                    Intrinsics.e(localeB);
                    String language = localeB.getLanguage();
                    Intrinsics.e(locale);
                    String language2 = locale.getLanguage();
                    Locale localeC = bVar.c();
                    boolean z13 = TextUtils.getLayoutDirectionFromLocale(localeB) != TextUtils.getLayoutDirectionFromLocale(locale) ? z10 : true;
                    i10 = size;
                    wf.a.C0922a.f(c0922a, "LocaleManagerCB", "setLocaleChanged()-> locale = " + locale + " , activityLocale = " + localeB + " , expectLocale = " + localeC + " , isSameDirection = " + z13, false, 4, null);
                    if (Intrinsics.c(language, language2)) {
                        bVar.e(null);
                        if (localeC != null) {
                            i11--;
                            wf.a.C0922a.f(c0922a, "LocaleManagerCB", "setLocaleChanged()-> waitChangedCount--", false, 4, null);
                        }
                    } else {
                        bVar.e(locale);
                        if (localeC == null) {
                            i11++;
                            wf.a.C0922a.f(c0922a, "LocaleManagerCB", "setLocaleChanged()-> waitChangedCount++", false, 4, null);
                        }
                        if (z13) {
                            Configuration configuration = activityA.getResources().getConfiguration();
                            Intrinsics.g(configuration, "getConfiguration(...)");
                            Resources resources = activityA.getResources();
                            Intrinsics.g(resources, "getResources(...)");
                            DisplayMetrics displayMetrics = resources.getDisplayMetrics();
                            Intrinsics.g(displayMetrics, "getDisplayMetrics(...)");
                            bVar.d(locale);
                            bVar.e(null);
                            configuration.setLocale(locale);
                            resources.updateConfiguration(configuration, displayMetrics);
                            View viewFindViewById = activityA.getWindow().getDecorView().findViewById(R.id.content);
                            if (viewFindViewById != null) {
                                a(viewFindViewById);
                            }
                        }
                    }
                }
            }
            i12++;
            size = i10;
            z10 = false;
        }
        this.f51785b = i11;
        c();
    }

    @Override
    public void onActivityCreated(Activity activity, Bundle bundle) {
        Intrinsics.h(activity, "activity");
        int iIdentityHashCode = System.identityHashCode(activity);
        b bVar = new b(activity);
        bVar.d(d.f51772f.d(activity));
        wf.a.C0922a.f(wf.a.f74274a, "LocaleManagerCB", "onActivityCreated()-> " + activity + " , curLocale = " + bVar.b(), false, 4, null);
        this.f51784a.put(iIdentityHashCode, bVar);
    }

    @Override
    public void onActivityDestroyed(Activity activity) {
        Intrinsics.h(activity, "activity");
        int iIdentityHashCode = System.identityHashCode(activity);
        b bVar = (b) this.f51784a.get(iIdentityHashCode);
        if ((bVar != null ? bVar.c() : null) != null) {
            bVar.e(null);
            this.f51785b--;
        }
        this.f51784a.remove(iIdentityHashCode);
    }

    @Override
    public void onActivityPaused(Activity activity) {
        Intrinsics.h(activity, "activity");
        int iIdentityHashCode = System.identityHashCode(activity);
        Integer num = this.f51786c;
        if (num == null || num == null || iIdentityHashCode != num.intValue()) {
            return;
        }
        this.f51786c = null;
    }

    @Override
    public void onActivityResumed(Activity activity) {
        Intrinsics.h(activity, "activity");
        wf.a.C0922a.f(wf.a.f74274a, "LocaleManagerCB", "onActivityResumed()-> " + activity, false, 4, null);
        this.f51786c = Integer.valueOf(System.identityHashCode(activity));
        b(activity);
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
