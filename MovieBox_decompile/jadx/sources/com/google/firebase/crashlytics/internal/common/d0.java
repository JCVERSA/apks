package com.google.firebase.crashlytics.internal.common;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;

public class d0 {

    private final SharedPreferences f30333a;

    private final com.google.firebase.f f30334b;

    private final Object f30335c;

    TaskCompletionSource f30336d;

    boolean f30337e;

    private boolean f30338f;

    private Boolean f30339g;

    private final TaskCompletionSource f30340h;

    public d0(com.google.firebase.f fVar) {
        Object obj = new Object();
        this.f30335c = obj;
        this.f30336d = new TaskCompletionSource();
        this.f30337e = false;
        this.f30338f = false;
        this.f30340h = new TaskCompletionSource();
        Context contextK = fVar.k();
        this.f30334b = fVar;
        this.f30333a = CommonUtils.q(contextK);
        Boolean boolB = b();
        this.f30339g = boolB == null ? a(contextK) : boolB;
        synchronized (obj) {
            try {
                if (d()) {
                    this.f30336d.trySetResult(null);
                    this.f30337e = true;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private Boolean a(Context context) {
        Boolean boolG = g(context);
        if (boolG == null) {
            this.f30338f = false;
            return null;
        }
        this.f30338f = true;
        return Boolean.valueOf(Boolean.TRUE.equals(boolG));
    }

    private Boolean b() {
        if (!this.f30333a.contains("firebase_crashlytics_collection_enabled")) {
            return null;
        }
        this.f30338f = false;
        return Boolean.valueOf(this.f30333a.getBoolean("firebase_crashlytics_collection_enabled", true));
    }

    private boolean e() {
        try {
            return this.f30334b.t();
        } catch (IllegalStateException unused) {
            return false;
        }
    }

    private void f(boolean z10) {
        String str;
        String str2 = z10 ? "ENABLED" : "DISABLED";
        if (this.f30339g == null) {
            str = "global Firebase setting";
        } else {
            str = this.f30338f ? "firebase_crashlytics_collection_enabled manifest flag" : "API";
        }
        qb.g.f().b(String.format("Crashlytics automatic data collection %s by %s.", str2, str));
    }

    private static Boolean g(Context context) {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 128)) == null || (bundle = applicationInfo.metaData) == null || !bundle.containsKey("firebase_crashlytics_collection_enabled")) {
                return null;
            }
            return Boolean.valueOf(applicationInfo.metaData.getBoolean("firebase_crashlytics_collection_enabled"));
        } catch (PackageManager.NameNotFoundException e10) {
            qb.g.f().e("Could not read data collection permission from manifest", e10);
            return null;
        }
    }

    private static void i(SharedPreferences sharedPreferences, Boolean bool) {
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        if (bool != null) {
            editorEdit.putBoolean("firebase_crashlytics_collection_enabled", bool.booleanValue());
        } else {
            editorEdit.remove("firebase_crashlytics_collection_enabled");
        }
        editorEdit.apply();
    }

    public void c(boolean z10) {
        if (!z10) {
            throw new IllegalStateException("An invalid data collection token was used.");
        }
        this.f30340h.trySetResult(null);
    }

    public synchronized boolean d() {
        boolean zBooleanValue;
        try {
            Boolean bool = this.f30339g;
            zBooleanValue = bool != null ? bool.booleanValue() : e();
            f(zBooleanValue);
        } catch (Throwable th2) {
            throw th2;
        }
        return zBooleanValue;
    }

    public synchronized void h(Boolean bool) {
        if (bool != null) {
            try {
                this.f30338f = false;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        this.f30339g = bool != null ? bool : a(this.f30334b.k());
        i(this.f30333a, bool);
        synchronized (this.f30335c) {
            try {
                if (d()) {
                    if (!this.f30337e) {
                        this.f30336d.trySetResult(null);
                        this.f30337e = true;
                    }
                } else if (this.f30337e) {
                    this.f30336d = new TaskCompletionSource();
                    this.f30337e = false;
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    public Task j() {
        Task task;
        synchronized (this.f30335c) {
            task = this.f30336d.getTask();
        }
        return task;
    }

    public Task k() {
        return com.google.firebase.crashlytics.internal.concurrency.b.c(this.f30340h.getTask(), j());
    }
}
