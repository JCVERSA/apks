package defpackage;

import android.content.Context;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import defpackage.y0h;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;

public final class v2h {
    public static v2h f;
    public final Executor a;
    public final CopyOnWriteArrayList b;
    public final Object c;
    public int d;
    public boolean e;

    public v2h(final Context context) {
        Executor executorA = q8g.a();
        this.a = executorA;
        this.b = new CopyOnWriteArrayList();
        this.c = new Object();
        this.d = 0;
        executorA.execute(new Runnable() {
            @Override
            public final void run() {
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
                context.registerReceiver(new y0h(this.zza, null), intentFilter);
            }
        });
    }

    public static synchronized v2h b(Context context) {
        try {
            if (f == null) {
                f = new v2h(context);
            }
        } catch (Throwable th) {
            throw th;
        }
        return f;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0036  */
    /* JADX WARN: Code duplicated, block: B:21:0x0038  */
    /* JADX WARN: Code duplicated, block: B:22:0x003a  */
    /* JADX WARN: Code duplicated, block: B:24:0x0041  */
    /* JADX WARN: Code duplicated, block: B:25:0x0043  */
    /* JADX WARN: Code duplicated, block: B:27:0x0049  */
    /* JADX WARN: Code duplicated, block: B:28:0x004b  */
    /* JADX WARN: Code duplicated, block: B:29:0x004d  */
    public static void d(v2h v2hVar, Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        int i = 0;
        if (connectivityManager != null) {
            try {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                    i = 1;
                } else {
                    int type = activeNetworkInfo.getType();
                    if (type == 0) {
                        switch (activeNetworkInfo.getSubtype()) {
                            case 1:
                            case 2:
                                i = 3;
                                break;
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
                                i = 4;
                                break;
                            case 13:
                                i = 5;
                                break;
                            case 16:
                            case 19:
                            default:
                                i = 6;
                                break;
                            case 18:
                                i = 2;
                                break;
                            case 20:
                                if (kfh.a >= 29) {
                                    i = 9;
                                }
                                break;
                        }
                    } else if (type == 1) {
                        i = 2;
                    } else if (type == 4 || type == 5) {
                        switch (activeNetworkInfo.getSubtype()) {
                            case 1:
                            case 2:
                                i = 3;
                                break;
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
                                i = 4;
                                break;
                            case 13:
                                i = 5;
                                break;
                            case 16:
                            case 19:
                            default:
                                i = 6;
                                break;
                            case 18:
                                i = 2;
                                break;
                            case 20:
                                if (kfh.a >= 29) {
                                    i = 9;
                                }
                                break;
                        }
                    } else if (type != 6) {
                        i = type != 9 ? 8 : 7;
                    } else {
                        i = 5;
                    }
                }
            } catch (SecurityException unused) {
            }
        }
        if (kfh.a < 31 || i != 5) {
            v2hVar.h(i);
            return;
        }
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager == null) {
                throw null;
            }
            exg exgVar = new exg(v2hVar);
            telephonyManager.registerTelephonyCallback(v2hVar.a, exgVar);
            telephonyManager.unregisterTelephonyCallback(exgVar);
        } catch (RuntimeException unused2) {
            v2hVar.h(5);
        }
    }

    public final int a() {
        int i;
        synchronized (this.c) {
            i = this.d;
        }
        return i;
    }

    public final void f(orj orjVar, Executor executor) {
        boolean z;
        g();
        xyg xygVar = new xyg(this, orjVar, executor);
        synchronized (this.c) {
            this.b.add(xygVar);
            z = this.e;
        }
        if (z) {
            xygVar.b();
        }
    }

    public final void g() {
        CopyOnWriteArrayList<xyg> copyOnWriteArrayList = this.b;
        for (xyg xygVar : copyOnWriteArrayList) {
            if (xygVar.c()) {
                copyOnWriteArrayList.remove(xygVar);
            }
        }
    }

    public final void h(int i) {
        g();
        synchronized (this.c) {
            try {
                if (this.e && this.d == i) {
                    return;
                }
                this.e = true;
                this.d = i;
                Iterator it = this.b.iterator();
                while (it.hasNext()) {
                    ((xyg) it.next()).b();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
