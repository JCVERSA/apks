package defpackage;

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

public final class yz6 {
    public static yz6 e;
    public final Handler a = new Handler(Looper.getMainLooper());
    public final CopyOnWriteArrayList b = new CopyOnWriteArrayList();
    public final Object c = new Object();
    public int d = 0;

    public static final class b {

        public static final class a extends TelephonyCallback implements TelephonyCallback.DisplayInfoListener {
            public final yz6 a;

            public a(yz6 yz6Var) {
                this.a = yz6Var;
            }

            public void onDisplayInfoChanged(TelephonyDisplayInfo telephonyDisplayInfo) {
                int overrideNetworkType = telephonyDisplayInfo.getOverrideNetworkType();
                this.a.k(overrideNetworkType == 3 || overrideNetworkType == 4 || overrideNetworkType == 5 ? 10 : 5);
            }
        }

        public static void a(Context context, yz6 yz6Var) {
            try {
                TelephonyManager telephonyManager = (TelephonyManager) zi.e((TelephonyManager) context.getSystemService("phone"));
                a aVar = new a(yz6Var);
                telephonyManager.registerTelephonyCallback(context.getMainExecutor(), aVar);
                telephonyManager.unregisterTelephonyCallback(aVar);
            } catch (RuntimeException unused) {
                yz6Var.k(5);
            }
        }
    }

    public interface c {
        void onNetworkTypeChanged(int i);
    }

    public final class d extends BroadcastReceiver {
        public d() {
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            int iG = yz6.g(context);
            if (blb.a < 31 || iG != 5) {
                yz6.this.k(iG);
            } else {
                b.a(context, yz6.this);
            }
        }
    }

    public yz6(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        context.registerReceiver(new d(), intentFilter);
    }

    public static synchronized yz6 d(Context context) {
        try {
            if (e == null) {
                e = new yz6(context);
            }
        } catch (Throwable th) {
            throw th;
        }
        return e;
    }

    public static int e(NetworkInfo networkInfo) {
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
                return blb.a >= 29 ? 9 : 0;
        }
    }

    public static int g(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        int i = 0;
        if (connectivityManager == null) {
            return 0;
        }
        try {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            i = 1;
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
        return i;
    }

    public int f() {
        int i;
        synchronized (this.c) {
            i = this.d;
        }
        return i;
    }

    public final void h(c cVar) {
        cVar.onNetworkTypeChanged(f());
    }

    public void i(final c cVar) {
        j();
        this.b.add(new WeakReference(cVar));
        this.a.post(new Runnable() {
            @Override
            public final void run() {
                this.b.h(cVar);
            }
        });
    }

    public final void j() {
        for (WeakReference weakReference : this.b) {
            if (weakReference.get() == null) {
                this.b.remove(weakReference);
            }
        }
    }

    public final void k(int i) {
        synchronized (this.c) {
            try {
                if (this.d == i) {
                    return;
                }
                this.d = i;
                for (WeakReference weakReference : this.b) {
                    c cVar = (c) weakReference.get();
                    if (cVar != null) {
                        cVar.onNetworkTypeChanged(i);
                    } else {
                        this.b.remove(weakReference);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
