package com.transsion.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import androidx.p004lifecycle.Lifecycle;
import androidx.p004lifecycle.LifecycleEventObserver;
import androidx.p004lifecycle.LifecycleOwner;
import defpackage.pz6;
import defpackage.se;
import defpackage.vz6;
import java.util.concurrent.ConcurrentHashMap;

public class NetworkObserver implements LifecycleEventObserver {
    public Context b;
    public pz6 d;
    public ConcurrentHashMap c = new ConcurrentHashMap();
    public vz6 e = new a();

    public class a implements vz6 {
        public a() {
        }

        @Override
        public void onConnect(int i) {
            for (vz6 vz6Var : NetworkObserver.this.c.values()) {
                if (vz6Var != null) {
                    vz6Var.onConnect(i);
                }
            }
        }

        @Override
        public void onDisconnect() {
            for (vz6 vz6Var : NetworkObserver.this.c.values()) {
                if (vz6Var != null) {
                    vz6Var.onDisconnect();
                }
            }
        }

        @Override
        public void onMobile() {
            for (vz6 vz6Var : NetworkObserver.this.c.values()) {
                if (vz6Var != null) {
                    vz6Var.onMobile();
                }
            }
        }

        @Override
        public void onWifi() {
            for (vz6 vz6Var : NetworkObserver.this.c.values()) {
                if (vz6Var != null) {
                    vz6Var.onWifi();
                }
            }
        }
    }

    public static class b {
        public static final int[] a;

        static {
            int[] iArr = new int[Lifecycle.Event.values().length];
            a = iArr;
            try {
                iArr[Lifecycle.Event.ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[Lifecycle.Event.ON_DESTROY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public NetworkObserver(Context context) {
        this.b = context;
        this.d = new pz6(context, this.e);
    }

    public void b(String str, vz6 vz6Var) {
        this.c.put(str, vz6Var);
    }

    public void c() {
        if (this.b == null) {
            return;
        }
        ((ConnectivityManager) se.a().getSystemService("connectivity")).registerDefaultNetworkCallback(this.d);
    }

    public void d() {
        if (this.b == null) {
            return;
        }
        ((ConnectivityManager) se.a().getSystemService("connectivity")).unregisterNetworkCallback(this.d);
    }

    @Override
    public void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        int i = b.a[event.ordinal()];
        if (i == 1) {
            c();
        } else {
            if (i != 2) {
                return;
            }
            d();
        }
    }
}
