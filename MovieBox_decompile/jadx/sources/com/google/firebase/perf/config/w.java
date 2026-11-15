package com.google.firebase.perf.config;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class w {

    private static final uc.a f31428c = uc.a.e();

    private static w f31429d;

    private volatile SharedPreferences f31430a;

    private final ExecutorService f31431b;

    public w(ExecutorService executorService) {
        this.f31431b = executorService;
    }

    private Context d() {
        try {
            com.google.firebase.f.l();
            return com.google.firebase.f.l().k();
        } catch (IllegalStateException unused) {
            return null;
        }
    }

    public static synchronized w e() {
        try {
            if (f31429d == null) {
                f31429d = new w(Executors.newSingleThreadExecutor());
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f31429d;
    }

    public void h(Context context) {
        if (this.f31430a != null || context == null) {
            return;
        }
        this.f31430a = context.getSharedPreferences("FirebasePerfSharedPrefs", 0);
    }

    public com.google.firebase.perf.util.e b(String str) {
        if (str == null) {
            f31428c.a("Key is null when getting boolean value on device cache.");
            return com.google.firebase.perf.util.e.a();
        }
        if (this.f31430a == null) {
            i(d());
            if (this.f31430a == null) {
                return com.google.firebase.perf.util.e.a();
            }
        }
        if (!this.f31430a.contains(str)) {
            return com.google.firebase.perf.util.e.a();
        }
        try {
            return com.google.firebase.perf.util.e.e(Boolean.valueOf(this.f31430a.getBoolean(str, false)));
        } catch (ClassCastException e10) {
            f31428c.b("Key %s from sharedPreferences has type other than long: %s", str, e10.getMessage());
            return com.google.firebase.perf.util.e.a();
        }
    }

    public com.google.firebase.perf.util.e c(String str) {
        if (str == null) {
            f31428c.a("Key is null when getting double value on device cache.");
            return com.google.firebase.perf.util.e.a();
        }
        if (this.f31430a == null) {
            i(d());
            if (this.f31430a == null) {
                return com.google.firebase.perf.util.e.a();
            }
        }
        if (!this.f31430a.contains(str)) {
            return com.google.firebase.perf.util.e.a();
        }
        try {
            try {
                return com.google.firebase.perf.util.e.e(Double.valueOf(Double.longBitsToDouble(this.f31430a.getLong(str, 0L))));
            } catch (ClassCastException unused) {
                return com.google.firebase.perf.util.e.e(Double.valueOf(Float.valueOf(this.f31430a.getFloat(str, 0.0f)).doubleValue()));
            }
        } catch (ClassCastException e10) {
            f31428c.b("Key %s from sharedPreferences has type other than double: %s", str, e10.getMessage());
            return com.google.firebase.perf.util.e.a();
        }
    }

    public com.google.firebase.perf.util.e f(String str) {
        if (str == null) {
            f31428c.a("Key is null when getting long value on device cache.");
            return com.google.firebase.perf.util.e.a();
        }
        if (this.f31430a == null) {
            i(d());
            if (this.f31430a == null) {
                return com.google.firebase.perf.util.e.a();
            }
        }
        if (!this.f31430a.contains(str)) {
            return com.google.firebase.perf.util.e.a();
        }
        try {
            return com.google.firebase.perf.util.e.e(Long.valueOf(this.f31430a.getLong(str, 0L)));
        } catch (ClassCastException e10) {
            f31428c.b("Key %s from sharedPreferences has type other than long: %s", str, e10.getMessage());
            return com.google.firebase.perf.util.e.a();
        }
    }

    public com.google.firebase.perf.util.e g(String str) {
        if (str == null) {
            f31428c.a("Key is null when getting String value on device cache.");
            return com.google.firebase.perf.util.e.a();
        }
        if (this.f31430a == null) {
            i(d());
            if (this.f31430a == null) {
                return com.google.firebase.perf.util.e.a();
            }
        }
        if (!this.f31430a.contains(str)) {
            return com.google.firebase.perf.util.e.a();
        }
        try {
            return com.google.firebase.perf.util.e.e(this.f31430a.getString(str, ""));
        } catch (ClassCastException e10) {
            f31428c.b("Key %s from sharedPreferences has type other than String: %s", str, e10.getMessage());
            return com.google.firebase.perf.util.e.a();
        }
    }

    public synchronized void i(final Context context) {
        if (this.f31430a == null && context != null) {
            this.f31431b.execute(new Runnable() {
                @Override
                public final void run() {
                    this.f31426a.h(context);
                }
            });
        }
    }

    public boolean j(String str, double d10) {
        if (str == null) {
            f31428c.a("Key is null when setting double value on device cache.");
            return false;
        }
        if (this.f31430a == null) {
            i(d());
            if (this.f31430a == null) {
                return false;
            }
        }
        this.f31430a.edit().putLong(str, Double.doubleToRawLongBits(d10)).apply();
        return true;
    }

    public boolean k(String str, long j10) {
        if (str == null) {
            f31428c.a("Key is null when setting long value on device cache.");
            return false;
        }
        if (this.f31430a == null) {
            i(d());
            if (this.f31430a == null) {
                return false;
            }
        }
        this.f31430a.edit().putLong(str, j10).apply();
        return true;
    }

    public boolean l(String str, String str2) {
        if (str == null) {
            f31428c.a("Key is null when setting String value on device cache.");
            return false;
        }
        if (this.f31430a == null) {
            i(d());
            if (this.f31430a == null) {
                return false;
            }
        }
        if (str2 == null) {
            this.f31430a.edit().remove(str).apply();
            return true;
        }
        this.f31430a.edit().putString(str, str2).apply();
        return true;
    }

    public boolean m(String str, boolean z10) {
        if (str == null) {
            f31428c.a("Key is null when setting boolean value on device cache.");
            return false;
        }
        if (this.f31430a == null) {
            i(d());
            if (this.f31430a == null) {
                return false;
            }
        }
        this.f31430a.edit().putBoolean(str, z10).apply();
        return true;
    }
}
