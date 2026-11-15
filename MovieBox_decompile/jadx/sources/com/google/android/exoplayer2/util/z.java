package com.google.android.exoplayer2.util;

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
import java.lang.ref.WeakReference;
import java.util.concurrent.CopyOnWriteArrayList;

public final class z {

    private static z f26925e;

    private final Handler f26926a = new Handler(Looper.getMainLooper());

    private final CopyOnWriteArrayList f26927b = new CopyOnWriteArrayList();

    private final Object f26928c = new Object();

    private int f26929d = 0;

    private static final class b {

        private static final class a extends TelephonyCallback implements TelephonyCallback.DisplayInfoListener {

            private final z f26930a;

            public a(z zVar) {
                this.f26930a = zVar;
            }

            public void onDisplayInfoChanged(TelephonyDisplayInfo telephonyDisplayInfo) {
                int overrideNetworkType = telephonyDisplayInfo.getOverrideNetworkType();
                this.f26930a.k(overrideNetworkType == 3 || overrideNetworkType == 4 || overrideNetworkType == 5 ? 10 : 5);
            }
        }

        public static void a(Context context, z zVar) {
            try {
                TelephonyManager telephonyManager = (TelephonyManager) com.google.android.exoplayer2.util.a.e((TelephonyManager) context.getSystemService("phone"));
                a aVar = new a(zVar);
                telephonyManager.registerTelephonyCallback(context.getMainExecutor(), aVar);
                telephonyManager.unregisterTelephonyCallback(aVar);
            } catch (RuntimeException unused) {
                zVar.k(5);
            }
        }
    }

    public interface c {
        void a(int i10);
    }

    private final class d extends BroadcastReceiver {
        private d() {
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            int iG = z.g(context);
            if (p0.f26854a < 31 || iG != 5) {
                z.this.k(iG);
            } else {
                b.a(context, z.this);
            }
        }
    }

    private z(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        context.registerReceiver(new d(), intentFilter);
    }

    public static synchronized z d(Context context) {
        try {
            if (f26925e == null) {
                f26925e = new z(context);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f26925e;
    }

    private static int e(NetworkInfo networkInfo) {
        switch (networkInfo.getSubtype()) {
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
                return p0.f26854a >= 29 ? 9 : 0;
        }
    }

    public static int g(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        int i10 = 0;
        if (connectivityManager == null) {
            return 0;
        }
        try {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            i10 = 1;
            if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                int type = activeNetworkInfo.getType();
                if (type != 0) {
                    if (type == 1) {
                        return 2;
                    }
                    if (type != 4 && type != 5) {
                        if (type != 6) {
                            return type != 9 ? 8 : 7;
                        }
                        return 5;
                    }
                }
                return e(activeNetworkInfo);
            }
        } catch (SecurityException unused) {
        }
        return i10;
    }

    public void h(c cVar) {
        cVar.a(f());
    }

    private void j() {
        for (WeakReference weakReference : this.f26927b) {
            if (weakReference.get() == null) {
                this.f26927b.remove(weakReference);
            }
        }
    }

    public void k(int i10) {
        synchronized (this.f26928c) {
            try {
                if (this.f26929d == i10) {
                    return;
                }
                this.f26929d = i10;
                for (WeakReference weakReference : this.f26927b) {
                    c cVar = (c) weakReference.get();
                    if (cVar != null) {
                        cVar.a(i10);
                    } else {
                        this.f26927b.remove(weakReference);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public int f() {
        int i10;
        synchronized (this.f26928c) {
            i10 = this.f26929d;
        }
        return i10;
    }

    public void i(final c cVar) {
        j();
        this.f26927b.add(new WeakReference(cVar));
        this.f26926a.post(new Runnable() {
            @Override
            public final void run() {
                this.f26923a.h(cVar);
            }
        });
    }
}
