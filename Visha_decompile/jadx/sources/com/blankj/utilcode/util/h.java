package com.blankj.utilcode.util;

import android.app.Activity;
import android.app.Application;
import android.app.Notification;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import com.google.gson.Gson;
import defpackage.bg5;
import defpackage.dh8;
import defpackage.e80;
import defpackage.ek4;
import defpackage.f39;
import defpackage.jdc;
import defpackage.ki1;
import defpackage.kq3;
import defpackage.kt1;
import defpackage.mc5;
import defpackage.px8;
import defpackage.r0a;
import defpackage.sia;
import defpackage.z35;
import defpackage.zu3;
import java.io.File;
import java.io.InputStream;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public abstract class h {

    public static final class a {
        public final String a;
        public final LinkedHashMap b = new LinkedHashMap();
        public final LinkedHashMap c = new LinkedHashMap();

        public a(String str) {
            this.a = str;
        }

        public void a(String str, String str2) {
            b(this.b, str, str2);
        }

        public final void b(Map map, String str, String str2) {
            if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                return;
            }
            int length = 19 - str.length();
            if (length > 0) {
                str = str + "                   ".substring(0, length);
            }
            map.put(str, str2);
        }

        public String c() {
            StringBuilder sb = new StringBuilder();
            for (Map.Entry entry : this.c.entrySet()) {
                sb.append((String) entry.getKey());
                sb.append(": ");
                sb.append((String) entry.getValue());
                sb.append("\n");
            }
            return sb.toString();
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            String str = "************* " + this.a + " Head ****************\n";
            sb.append(str);
            for (Map.Entry entry : this.b.entrySet()) {
                sb.append((String) entry.getKey());
                sb.append(": ");
                sb.append((String) entry.getValue());
                sb.append("\n");
            }
            sb.append("Rom Info           : ");
            sb.append(e.c());
            sb.append("\n");
            sb.append("Device Manufacturer: ");
            sb.append(Build.MANUFACTURER);
            sb.append("\n");
            sb.append("Device Model       : ");
            sb.append(Build.MODEL);
            sb.append("\n");
            sb.append("Android Version    : ");
            sb.append(Build.VERSION.RELEASE);
            sb.append("\n");
            sb.append("Android SDK        : ");
            sb.append(Build.VERSION.SDK_INT);
            sb.append("\n");
            sb.append("App VersionName    : ");
            sb.append(b.d());
            sb.append("\n");
            sb.append("App VersionCode    : ");
            sb.append(b.b());
            sb.append("\n");
            sb.append(c());
            sb.append(str);
            sb.append("\n");
            return sb.toString();
        }
    }

    public static boolean A() {
        return jdc.a();
    }

    public static boolean B() {
        return px8.b();
    }

    public static boolean C() {
        return e.h();
    }

    public static boolean D(String str) {
        return r0a.h(str);
    }

    public static boolean E(View view, long j) {
        return kt1.b(view, j);
    }

    public static View F(int i) {
        return jdc.b(i);
    }

    public static void G() {
        H(AdaptScreenUtils.f());
    }

    public static void H(Runnable... runnableArr) {
        for (Runnable runnable : runnableArr) {
            ThreadUtils.l().execute(runnable);
        }
    }

    public static void I(Activity activity) {
        UtilsActivityLifecycleImpl.h.t(activity);
    }

    public static void J(Utils.a aVar) {
        UtilsActivityLifecycleImpl.h.v(aVar);
    }

    public static void K(Runnable runnable) {
        ThreadUtils.s(runnable);
    }

    public static void L(Runnable runnable, long j) {
        ThreadUtils.t(runnable, j);
    }

    public static void M(Application application) {
        UtilsActivityLifecycleImpl.h.y(application);
    }

    public static Bitmap N(View view) {
        return ImageUtils.a(view);
    }

    public static boolean O(String str, InputStream inputStream) {
        return kq3.f(str, inputStream);
    }

    public static boolean P(String str, String str2, boolean z) {
        return kq3.h(str, str2, z);
    }

    public static void a(Utils.a aVar) {
        UtilsActivityLifecycleImpl.h.e(aVar);
    }

    public static void addOnAppStatusChangedListener(Utils.c cVar) {
        UtilsActivityLifecycleImpl.h.addOnAppStatusChangedListener(cVar);
    }

    public static String b(byte[] bArr) {
        return ki1.a(bArr);
    }

    public static boolean c(File file) {
        return zu3.c(file);
    }

    public static boolean d(File file) {
        return zu3.e(file);
    }

    public static int e(float f) {
        return g.a(f);
    }

    public static boolean f(CharSequence charSequence, CharSequence charSequence2) {
        return r0a.a(charSequence, charSequence2);
    }

    public static void g(Activity activity) {
        bg5.a(activity);
    }

    public static String h(String str) {
        return mc5.a(str);
    }

    public static List i() {
        return UtilsActivityLifecycleImpl.h.j();
    }

    public static int j() {
        return f39.a();
    }

    public static Application k() {
        return UtilsActivityLifecycleImpl.h.n();
    }

    public static String l() {
        return dh8.a();
    }

    public static File m(String str) {
        return zu3.m(str);
    }

    public static String n(Throwable th) {
        return sia.a(th);
    }

    public static Gson o() {
        return ek4.g();
    }

    public static Intent p(String str, boolean z) {
        return z35.b(str, z);
    }

    public static int q() {
        return e80.c();
    }

    public static Notification r(d.a aVar, Utils.b bVar) {
        return d.a(aVar, bVar);
    }

    public static void removeOnAppStatusChangedListener(Utils.c cVar) {
        UtilsActivityLifecycleImpl.h.removeOnAppStatusChangedListener(cVar);
    }

    public static int s() {
        return e80.e();
    }

    public static Activity t() {
        return UtilsActivityLifecycleImpl.h.o();
    }

    public static void u(Application application) {
        UtilsActivityLifecycleImpl.h.p(application);
    }

    public static boolean v(Activity activity) {
        return com.blankj.utilcode.util.a.f(activity);
    }

    public static boolean w() {
        return UtilsActivityLifecycleImpl.h.q();
    }

    public static boolean x(File file) {
        return zu3.x(file);
    }

    public static boolean y() {
        return PermissionUtils.h();
    }

    public static boolean z(Intent intent) {
        return z35.c(intent);
    }
}
