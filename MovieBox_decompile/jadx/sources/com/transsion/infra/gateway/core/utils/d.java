package com.transsion.infra.gateway.core.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;

public class d {

    private static d f44671c;

    private SharedPreferences f44672a;

    private Context f44673b;

    private d(Context context) {
        this.f44673b = context.getApplicationContext();
    }

    public static synchronized d a(Context context) {
        try {
            if (f44671c == null) {
                f44671c = new d(context);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f44671c;
    }

    private SharedPreferences c(Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            try {
                SharedPreferences sharedPreferences = context.getSharedPreferences("gateway_core", 0);
                this.f44672a = sharedPreferences;
                return sharedPreferences;
            } catch (Exception unused) {
                return null;
            }
        }
        SharedPreferences sharedPreferences2 = this.f44672a;
        if (sharedPreferences2 != null) {
            return sharedPreferences2;
        }
        if (context == null) {
            return null;
        }
        try {
            this.f44672a = context.getSharedPreferences("gateway_core", 0);
        } catch (Exception unused2) {
        }
        return this.f44672a;
    }

    public long b(String str) {
        Context context = this.f44673b;
        if (context == null) {
            return -1L;
        }
        if (this.f44672a == null) {
            this.f44672a = c(context);
        }
        SharedPreferences sharedPreferences = this.f44672a;
        if (sharedPreferences == null) {
            return -1L;
        }
        try {
            return sharedPreferences.getLong(str, 0L);
        } catch (Exception unused) {
            return -1L;
        }
    }

    public void d(String str, long j10) {
        Context context = this.f44673b;
        if (context == null) {
            return;
        }
        if (this.f44672a == null) {
            this.f44672a = c(context);
        }
        SharedPreferences sharedPreferences = this.f44672a;
        if (sharedPreferences == null) {
            return;
        }
        try {
            sharedPreferences.edit().putLong(str, j10).apply();
        } catch (Exception unused) {
        }
    }
}
