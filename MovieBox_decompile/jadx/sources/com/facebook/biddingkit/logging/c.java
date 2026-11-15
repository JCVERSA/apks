package com.facebook.biddingkit.logging;

import android.os.Process;
import android.text.TextUtils;

class c implements Thread.UncaughtExceptionHandler {

    private final Thread.UncaughtExceptionHandler f23457a;

    public c(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.f23457a = uncaughtExceptionHandler;
    }

    private void a(Thread thread, Throwable th2) {
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f23457a;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(thread, th2);
        } else {
            c();
        }
    }

    static void b() {
        Thread.setDefaultUncaughtExceptionHandler(new c(Thread.getDefaultUncaughtExceptionHandler()));
    }

    private static void c() {
        try {
            Process.killProcess(Process.myPid());
        } catch (Throwable unused) {
        }
        try {
            System.exit(10);
        } catch (Throwable unused2) {
        }
    }

    @Override
    public void uncaughtException(Thread thread, Throwable th2) {
        try {
            String strA = g.a(th2);
            if (!TextUtils.isEmpty(strA) && strA.contains("com.facebook.biddingkit")) {
                b.c("CrashReportHandler", strA);
            }
        } catch (Exception unused) {
        }
        a(thread, th2);
    }
}
