package com.blankj.utilcode.util;

import android.app.Activity;
import android.app.Application;
import android.app.Notification;
import android.content.Intent;
import android.graphics.Bitmap;
import android.view.View;
import java.io.File;
import java.util.List;

abstract class e0 {
    static boolean A(Intent intent) {
        return p.c(intent);
    }

    static boolean B() {
        return g0.a();
    }

    static boolean C() {
        return v.j();
    }

    static boolean D(String str) {
        return b0.f(str);
    }

    static boolean E(View view, long j10) {
        return j.b(view, j10);
    }

    static View F(int i10) {
        return g0.b(i10);
    }

    static void G() {
        H(AdaptScreenUtils.f());
    }

    private static void H(Runnable... runnableArr) {
        for (Runnable runnable : runnableArr) {
            ThreadUtils.d().execute(runnable);
        }
    }

    static void I(Utils.a aVar) {
        UtilsActivityLifecycleImpl.f19457g.u(aVar);
    }

    static void J(Runnable runnable) {
        ThreadUtils.j(runnable);
    }

    static void K(Runnable runnable, long j10) {
        ThreadUtils.k(runnable, j10);
    }

    static void L(Application application) {
        UtilsActivityLifecycleImpl.f19457g.y(application);
    }

    static Bitmap M(View view) {
        return ImageUtils.h(view);
    }

    static void a(Utils.a aVar) {
        UtilsActivityLifecycleImpl.f19457g.e(aVar);
    }

    static String b(byte[] bArr) {
        return i.c(bArr);
    }

    static boolean c(File file) {
        return n.c(file);
    }

    static int d(float f10) {
        return a0.a(f10);
    }

    static boolean e(CharSequence charSequence, CharSequence charSequence2) {
        return b0.a(charSequence, charSequence2);
    }

    static void f(Activity activity) {
        KeyboardUtils.a(activity);
    }

    static String g(String str, Object... objArr) {
        return b0.c(str, objArr);
    }

    static List h() {
        return UtilsActivityLifecycleImpl.f19457g.j();
    }

    static int i() {
        return y.b();
    }

    static Application j() {
        return UtilsActivityLifecycleImpl.f19457g.n();
    }

    static String k() {
        return t.a();
    }

    static File l(String str) {
        return n.f(str);
    }

    static long m(String str) {
        return n.j(str);
    }

    static long n(String str) {
        return n.k(str);
    }

    static Intent o(String str, boolean z10) {
        return p.b(str, z10);
    }

    static int p() {
        return d.a();
    }

    static Notification q(s.a aVar, Utils.b bVar) {
        return s.a(aVar, bVar);
    }

    static x r() {
        return x.a("Utils");
    }

    static int s() {
        return d.c();
    }

    static String t(int i10) {
        return b0.d(i10);
    }

    static Activity u() {
        return UtilsActivityLifecycleImpl.f19457g.o();
    }

    static void v(Application application) {
        UtilsActivityLifecycleImpl.f19457g.p(application);
    }

    static boolean w(Activity activity) {
        return a.c(activity);
    }

    static boolean x() {
        return UtilsActivityLifecycleImpl.f19457g.q();
    }

    static boolean y(File file) {
        return n.m(file);
    }

    static boolean z() {
        return PermissionUtils.t();
    }
}
