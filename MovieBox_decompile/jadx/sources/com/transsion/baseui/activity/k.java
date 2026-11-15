package com.transsion.baseui.activity;

import android.app.Activity;
import androidx.fragment.app.Fragment;
import kotlin.jvm.internal.Intrinsics;

public abstract class k {
    public static final void a(String tag) {
        Intrinsics.h(tag, "tag");
        wf.a.f74274a.p(tag, new String[]{"Application onCreate"}, true);
    }

    public static void b(String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "CommonInfo";
        }
        a(str);
    }

    public static final void c(String tag, Activity activity) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(activity, "activity");
        wf.a.f74274a.p(tag, new String[]{activity.getLocalClassName() + " onCreate"}, true);
    }

    public static void d(String str, Activity activity, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "CommonInfo";
        }
        c(str, activity);
    }

    public static final void e(String tag, Activity activity) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(activity, "activity");
        wf.a.f74274a.p(tag, new String[]{activity.getLocalClassName() + " onDestroy"}, true);
    }

    public static void f(String str, Activity activity, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "CommonInfo";
        }
        e(str, activity);
    }

    public static final void g(String tag, Fragment fragment, boolean z10, String other) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(fragment, "fragment");
        Intrinsics.h(other, "other");
        wf.a.f74274a.p(tag, new String[]{fragment.getClass().getSimpleName() + " hidden=" + z10 + " " + other}, true);
    }

    public static void h(String str, Fragment fragment, boolean z10, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "CommonInfo";
        }
        if ((i10 & 8) != 0) {
            str2 = "";
        }
        g(str, fragment, z10, str2);
    }

    public static final void i(String tag, Activity activity) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(activity, "activity");
        wf.a.f74274a.p(tag, new String[]{activity.getLocalClassName() + " onPause"}, true);
    }

    public static final void j(String tag, Fragment fragment, String other) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(fragment, "fragment");
        Intrinsics.h(other, "other");
        wf.a.f74274a.p(tag, new String[]{fragment.getClass().getSimpleName() + " onPause " + other}, true);
    }

    public static void k(String str, Activity activity, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "CommonInfo";
        }
        i(str, activity);
    }

    public static void l(String str, Fragment fragment, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "CommonInfo";
        }
        if ((i10 & 4) != 0) {
            str2 = "";
        }
        j(str, fragment, str2);
    }

    public static final void m(String tag, Activity activity) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(activity, "activity");
        wf.a.f74274a.p(tag, new String[]{activity.getLocalClassName() + " onResume"}, true);
    }

    public static final void n(String tag, Fragment fragment, String other) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(fragment, "fragment");
        Intrinsics.h(other, "other");
        wf.a.f74274a.p(tag, new String[]{fragment.getClass().getSimpleName() + " onResume " + other}, true);
    }

    public static void o(String str, Activity activity, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "CommonInfo";
        }
        m(str, activity);
    }

    public static void p(String str, Fragment fragment, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "CommonInfo";
        }
        if ((i10 & 4) != 0) {
            str2 = "";
        }
        n(str, fragment, str2);
    }
}
