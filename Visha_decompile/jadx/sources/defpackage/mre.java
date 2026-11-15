package defpackage;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;

public final class mre {
    public NetworkCapabilities a;

    public mre(ConnectivityManager connectivityManager) {
        if (connectivityManager != null) {
            try {
                connectivityManager.registerDefaultNetworkCallback(new lre(this));
            } catch (RuntimeException unused) {
                synchronized (mre.class) {
                    this.a = null;
                }
            }
        }
    }

    public static mre c(Context context) {
        if (context != null) {
            return new mre((ConnectivityManager) context.getSystemService("connectivity"));
        }
        return null;
    }

    public final long a() {
        synchronized (mre.class) {
            try {
                NetworkCapabilities networkCapabilities = this.a;
                if (networkCapabilities != null) {
                    if (networkCapabilities.hasTransport(4)) {
                        return 2L;
                    }
                    if (this.a.hasTransport(1)) {
                        return 1L;
                    }
                    if (this.a.hasTransport(0)) {
                        return 0L;
                    }
                }
                return -1L;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final NetworkCapabilities b() {
        return this.a;
    }
}
