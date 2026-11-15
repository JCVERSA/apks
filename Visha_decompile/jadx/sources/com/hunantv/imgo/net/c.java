package com.hunantv.imgo.net;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import com.hunantv.imgo.BaseApplication;
import java.lang.ref.WeakReference;

public class c {
    private a a;
    private b b;
    private WeakReference<Context> c;
    private int f;
    private int d = 1;
    private Handler e = new Handler();
    private Runnable g = new Runnable() {
        @Override
        public void run() {
            if (c.this.b != null) {
                c.this.b.a(c.this.f);
            }
        }
    };

    public class a extends BroadcastReceiver {
        private a() {
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            if (intent.getBooleanExtra("noConnectivity", false)) {
                c.this.f = 2;
                if (c.this.d != c.this.f) {
                    c cVar = c.this;
                    cVar.d = cVar.f;
                    c.this.e();
                    return;
                }
                return;
            }
            c.this.f = c.c();
            if (c.this.d != c.this.f) {
                c cVar2 = c.this;
                cVar2.d = cVar2.f;
                c.this.e();
            }
        }
    }

    public interface b {
        void a(int i);
    }

    public c(Context context) {
        this.c = new WeakReference<>(context);
    }

    public void e() {
        this.e.removeCallbacks(this.g);
        this.e.postDelayed(this.g, 1000L);
    }

    public static int c() {
        if (BaseApplication.getContext() == null) {
            return 2;
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) BaseApplication.getContext().getSystemService("connectivity");
            NetworkInfo activeNetworkInfo = connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
            if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                if (activeNetworkInfo.getType() == 1) {
                    return 1;
                }
                if (activeNetworkInfo.getType() == 0) {
                    return 0;
                }
            }
        } catch (Throwable unused) {
        }
        return 2;
    }

    public static String d() {
        return a(c());
    }

    public void a(b bVar) {
        this.b = bVar;
    }

    public void b() {
        Context context = this.c.get();
        if (context == null) {
            return;
        }
        a aVar = this.a;
        if (aVar != null) {
            context.unregisterReceiver(aVar);
            this.a = null;
        }
        this.d = 1;
    }

    public void a() {
        Context context = this.c.get();
        if (context == null) {
            return;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        intentFilter.setPriority(1000);
        this.a = new a();
        this.d = c();
        context.registerReceiver(this.a, intentFilter);
    }

    public static String a(int i) {
        if (i == 0) {
            return "Mobile";
        }
        if (i == 1) {
            return "Wifi";
        }
        if (i != 2) {
            return "Unknown";
        }
        return "No Network";
    }
}
