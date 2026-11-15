package com.google.firebase.crashlytics.internal.common;

import android.content.Context;

class i0 {

    private String f30363a;

    i0() {
    }

    private static String b(Context context) {
        String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
        return installerPackageName == null ? "" : installerPackageName;
    }

    synchronized String a(Context context) {
        try {
            if (this.f30363a == null) {
                this.f30363a = b(context);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return "".equals(this.f30363a) ? null : this.f30363a;
    }
}
