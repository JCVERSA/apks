package com.yandex.mobile.ads.impl;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.Looper;
import android.telephony.TelephonyCallback;
import android.telephony.TelephonyDisplayInfo;
import android.telephony.TelephonyManager;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.lang.ref.WeakReference;
import java.util.concurrent.CopyOnWriteArrayList;

public final class ed1 {

    @Nullable
    private static ed1 e;
    private final Handler a = new Handler(Looper.getMainLooper());
    private final CopyOnWriteArrayList<WeakReference<b>> b = new CopyOnWriteArrayList<>();
    private final Object c = new Object();

    @GuardedBy("networkTypeLock")
    private int d = 0;

    @RequiresApi(31)
    public static final class a {

        public static final class C0312a extends TelephonyCallback implements TelephonyCallback.DisplayInfoListener {
            private final ed1 a;

            public C0312a(ed1 ed1Var) {
                this.a = ed1Var;
            }

            public final void onDisplayInfoChanged(TelephonyDisplayInfo telephonyDisplayInfo) {
                int overrideNetworkType = telephonyDisplayInfo.getOverrideNetworkType();
                this.a.a(overrideNetworkType == 3 || overrideNetworkType == 4 || overrideNetworkType == 5 ? 10 : 5);
            }
        }

        public static void a(Context context, ed1 ed1Var) {
            try {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                telephonyManager.getClass();
                C0312a c0312a = new C0312a(ed1Var);
                telephonyManager.registerTelephonyCallback(context.getMainExecutor(), c0312a);
                telephonyManager.unregisterTelephonyCallback(c0312a);
            } catch (RuntimeException unused) {
                ed1Var.a(5);
            }
        }
    }

    public interface b {
        void a(int i);
    }

    public final class c extends BroadcastReceiver {
        @Override
        public final void onReceive(Context context, Intent intent) {
            int iB = ed1.b(context);
            if (f92.a < 31 || iB != 5) {
                ed1.this.a(iB);
            } else {
                a.a(context, ed1.this);
            }
        }

        private c() {
        }
    }

    private ed1(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        context.registerReceiver(new c(), intentFilter);
    }

    public static int b(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null) {
            return 0;
        }
        try {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                return 1;
            }
            int type = activeNetworkInfo.getType();
            if (type != 0) {
                if (type == 1) {
                    return 2;
                }
                if (type == 9) {
                    return 7;
                }
                if (type != 4 && type != 5) {
                    return type != 6 ? 8 : 5;
                }
            }
            switch (activeNetworkInfo.getSubtype()) {
                case 1:
                case 2:
                    return 3;
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                case 11:
                case 12:
                case 14:
                case 15:
                case 17:
                    return 4;
                case 13:
                    return 5;
                case 16:
                case 19:
                default:
                    return 6;
                case 18:
                    return 2;
                case 20:
                    return f92.a >= 29 ? 9 : 0;
            }
        } catch (SecurityException unused) {
            return 0;
        }
    }

    public final int a() {
        int i;
        synchronized (this.c) {
            i = this.d;
        }
        return i;
    }

    public void a(b bVar) {
        bVar.a(a());
    }

    public void a(int i) {
        synchronized (this.c) {
            try {
                if (this.d == i) {
                    return;
                }
                this.d = i;
                for (WeakReference<b> weakReference : this.b) {
                    b bVar = weakReference.get();
                    if (bVar != null) {
                        bVar.a(i);
                    } else {
                        this.b.remove(weakReference);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(final b bVar) {
        for (WeakReference<b> weakReference : this.b) {
            if (weakReference.get() == null) {
                this.b.remove(weakReference);
            }
        }
        this.b.add(new WeakReference<>(bVar));
        this.a.post(new Runnable() {
            @Override
            public final void run() {
                this.b.a(bVar);
            }
        });
    }

    public static synchronized ed1 a(Context context) {
        try {
            if (e == null) {
                e = new ed1(context);
            }
        } catch (Throwable th) {
            throw th;
        }
        return e;
    }
}
