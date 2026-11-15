package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.PowerManager;
import androidx.annotation.Nullable;

public final class rq1 implements Parcelable {
    public static final Parcelable.Creator<rq1> CREATOR = new a();
    private final int b;

    public class a implements Parcelable.Creator<rq1> {
        @Override
        public final rq1 createFromParcel(Parcel parcel) {
            return new rq1(parcel.readInt());
        }

        @Override
        public final rq1[] newArray(int i) {
            return new rq1[i];
        }
    }

    public rq1(int i) {
        this.b = (i & 2) != 0 ? i | 1 : i;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0048  */
    public final int a(Context context) {
        int i;
        Intent intentRegisterReceiver;
        int intExtra;
        if (e()) {
            Object systemService = context.getSystemService("connectivity");
            systemService.getClass();
            ConnectivityManager connectivityManager = (ConnectivityManager) systemService;
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                i = this.b & 3;
            } else {
                if (f92.a >= 24) {
                    Network activeNetwork = connectivityManager.getActiveNetwork();
                    if (activeNetwork != null) {
                        try {
                            NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork);
                            if (networkCapabilities == null || !networkCapabilities.hasCapability(16)) {
                            }
                        } catch (SecurityException unused) {
                        }
                    }
                    i = this.b & 3;
                }
                if ((this.b & 2) == 0 || !connectivityManager.isActiveNetworkMetered()) {
                    i = 0;
                } else {
                    i = 2;
                }
            }
        } else {
            i = 0;
        }
        if (c() && ((intentRegisterReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"))) == null || ((intExtra = intentRegisterReceiver.getIntExtra("status", -1)) != 2 && intExtra != 5))) {
            i |= 8;
        }
        if (d()) {
            Object systemService2 = context.getSystemService("power");
            systemService2.getClass();
            PowerManager powerManager = (PowerManager) systemService2;
            int i2 = f92.a;
            if (i2 < 23 ? i2 < 20 ? powerManager.isScreenOn() : powerManager.isInteractive() : !powerManager.isDeviceIdleMode()) {
                i |= 4;
            }
        }
        return (!f() || context.registerReceiver(null, new IntentFilter("android.intent.action.DEVICE_STORAGE_LOW")) == null) ? i : i | 16;
    }

    public final boolean c() {
        return (this.b & 8) != 0;
    }

    public final boolean d() {
        return (this.b & 4) != 0;
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public final boolean e() {
        return (this.b & 1) != 0;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && rq1.class == obj.getClass() && this.b == ((rq1) obj).b;
    }

    public final boolean f() {
        return (this.b & 16) != 0;
    }

    public final int hashCode() {
        return this.b;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.b);
    }
}
