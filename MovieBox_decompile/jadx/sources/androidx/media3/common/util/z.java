package androidx.media3.common.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyCallback;
import android.telephony.TelephonyDisplayInfo;
import android.telephony.TelephonyManager;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;

public final class z {

    private static z f10164f;

    private final Executor f10165a;

    private final CopyOnWriteArrayList f10166b;

    private final Object f10167c;

    private int f10168d;

    private boolean f10169e;

    private static final class b {

        private static final class a extends TelephonyCallback implements TelephonyCallback.DisplayInfoListener {

            private final z f10170a;

            public a(z zVar) {
                this.f10170a = zVar;
            }

            public void onDisplayInfoChanged(TelephonyDisplayInfo telephonyDisplayInfo) {
                int overrideNetworkType = telephonyDisplayInfo.getOverrideNetworkType();
                this.f10170a.n(overrideNetworkType == 3 || overrideNetworkType == 4 || overrideNetworkType == 5 ? 10 : 5);
            }
        }

        public static void a(Context context, z zVar) {
            try {
                TelephonyManager telephonyManager = (TelephonyManager) androidx.media3.common.util.a.e((TelephonyManager) context.getSystemService("phone"));
                a aVar = new a(zVar);
                telephonyManager.registerTelephonyCallback(zVar.f10165a, aVar);
                telephonyManager.unregisterTelephonyCallback(aVar);
            } catch (RuntimeException unused) {
                zVar.n(5);
            }
        }
    }

    public interface c {
        void a(int i10);
    }

    final class d {

        private final WeakReference f10171a;

        private final Executor f10172b;

        public d(c cVar, Executor executor) {
            this.f10171a = new WeakReference(cVar);
            this.f10172b = executor;
        }

        public void d() {
            c cVar = (c) this.f10171a.get();
            if (cVar != null) {
                cVar.a(z.this.g());
            }
        }

        public void b() {
            this.f10172b.execute(new Runnable() {
                @Override
                public final void run() {
                    this.f10062a.d();
                }
            });
        }

        public boolean c() {
            return this.f10171a.get() == null;
        }
    }

    final class e extends BroadcastReceiver {
        private e() {
        }

        public void b(Context context) {
            z.this.i(context);
        }

        @Override
        public void onReceive(final Context context, Intent intent) {
            z.this.f10165a.execute(new Runnable() {
                @Override
                public final void run() {
                    this.f10065a.b(context);
                }
            });
        }
    }

    private z(final Context context) {
        Executor executorA = androidx.media3.common.util.c.a();
        this.f10165a = executorA;
        this.f10166b = new CopyOnWriteArrayList();
        this.f10167c = new Object();
        this.f10168d = 0;
        executorA.execute(new Runnable() {
            @Override
            public final void run() {
                this.f10161a.k(context);
            }
        });
    }

    public static synchronized z e(Context context) {
        try {
            if (f10164f == null) {
                f10164f = new z(context);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f10164f;
    }

    private static int f(NetworkInfo networkInfo) {
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
                return a1.f10038a >= 29 ? 9 : 0;
        }
    }

    private static int h(Context context) {
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
                return f(activeNetworkInfo);
            }
        } catch (SecurityException unused) {
        }
        return i10;
    }

    public void i(Context context) {
        int iH = h(context);
        if (a1.f10038a < 31 || iH != 5) {
            n(iH);
        } else {
            b.a(context, this);
        }
    }

    public void k(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        context.registerReceiver(new e(), intentFilter);
    }

    private void m() {
        for (d dVar : this.f10166b) {
            if (dVar.c()) {
                this.f10166b.remove(dVar);
            }
        }
    }

    public void n(int i10) {
        m();
        synchronized (this.f10167c) {
            try {
                if (this.f10169e && this.f10168d == i10) {
                    return;
                }
                this.f10169e = true;
                this.f10168d = i10;
                Iterator it = this.f10166b.iterator();
                while (it.hasNext()) {
                    ((d) it.next()).b();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public int g() {
        int i10;
        synchronized (this.f10167c) {
            i10 = this.f10168d;
        }
        return i10;
    }

    public void l(c cVar, Executor executor) {
        boolean z10;
        m();
        d dVar = new d(cVar, executor);
        synchronized (this.f10167c) {
            this.f10166b.add(dVar);
            z10 = this.f10169e;
        }
        if (z10) {
            dVar.b();
        }
    }
}
