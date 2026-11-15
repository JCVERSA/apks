package com.yandex.mobile.ads.impl;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Handler;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

public final class sq1 {
    private final Context a;
    private final b b;
    private final rq1 c;
    private final Handler d;
    private int e;

    @Nullable
    private c f;

    public class a extends BroadcastReceiver {
        @Override
        public final void onReceive(Context context, Intent intent) {
            if (isInitialStickyBroadcast()) {
                return;
            }
            sq1 sq1Var = sq1.this;
            int iA = sq1Var.c.a(sq1Var.a);
            if (sq1Var.e != iA) {
                sq1Var.e = iA;
                sq1Var.b.a(sq1Var, iA);
            }
        }

        private a() {
        }
    }

    public interface b {
        void a(sq1 sq1Var, int i);
    }

    @RequiresApi(24)
    public final class c extends ConnectivityManager.NetworkCallback {
        private boolean a;
        private boolean b;

        private void c() {
            sq1.this.d.post(new Runnable() {
                @Override
                public final void run() {
                    this.b.a();
                }
            });
        }

        private void d() {
            sq1.this.d.post(new Runnable() {
                @Override
                public final void run() {
                    this.b.b();
                }
            });
        }

        @Override
        public final void onAvailable(Network network) {
            c();
        }

        @Override
        public final void onBlockedStatusChanged(Network network, boolean z) {
            if (z) {
                return;
            }
            d();
        }

        @Override
        public final void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
            boolean zHasCapability = networkCapabilities.hasCapability(16);
            if (this.a && this.b == zHasCapability) {
                if (zHasCapability) {
                    d();
                }
            } else {
                this.a = true;
                this.b = zHasCapability;
                c();
            }
        }

        @Override
        public final void onLost(Network network) {
            c();
        }

        private c() {
        }

        public void a() {
            int iA;
            sq1 sq1Var = sq1.this;
            if (sq1Var.f == null || sq1Var.e == (iA = sq1Var.c.a(sq1Var.a))) {
                return;
            }
            sq1Var.e = iA;
            sq1Var.b.a(sq1Var, iA);
        }

        public void b() {
            int iA;
            sq1 sq1Var = sq1.this;
            if (sq1Var.f == null || (sq1Var.e & 3) == 0 || sq1Var.e == (iA = sq1Var.c.a(sq1Var.a))) {
                return;
            }
            sq1Var.e = iA;
            sq1Var.b.a(sq1Var, iA);
        }
    }

    public sq1(Context context, b bVar) {
        rq1 rq1Var = y30.h;
        this.a = context.getApplicationContext();
        this.b = bVar;
        this.c = rq1Var;
        this.d = f92.b();
    }

    public final int a() {
        this.e = this.c.a(this.a);
        IntentFilter intentFilter = new IntentFilter();
        if (this.c.e()) {
            if (f92.a >= 24) {
                ConnectivityManager connectivityManager = (ConnectivityManager) this.a.getSystemService("connectivity");
                connectivityManager.getClass();
                c cVar = new c();
                this.f = cVar;
                connectivityManager.registerDefaultNetworkCallback(cVar);
            } else {
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            }
        }
        if (this.c.c()) {
            intentFilter.addAction("android.intent.action.ACTION_POWER_CONNECTED");
            intentFilter.addAction("android.intent.action.ACTION_POWER_DISCONNECTED");
        }
        if (this.c.d()) {
            if (f92.a >= 23) {
                intentFilter.addAction("android.os.action.DEVICE_IDLE_MODE_CHANGED");
            } else {
                intentFilter.addAction("android.intent.action.SCREEN_ON");
                intentFilter.addAction("android.intent.action.SCREEN_OFF");
            }
        }
        if (this.c.f()) {
            intentFilter.addAction("android.intent.action.DEVICE_STORAGE_LOW");
            intentFilter.addAction("android.intent.action.DEVICE_STORAGE_OK");
        }
        this.a.registerReceiver(new a(), intentFilter, null, this.d);
        return this.e;
    }
}
