package defpackage;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;

public final class lre extends ConnectivityManager.NetworkCallback {
    public final mre a;

    public lre(mre mreVar) {
        this.a = mreVar;
    }

    @Override
    public final void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
        synchronized (mre.class) {
            this.a.a = networkCapabilities;
        }
    }

    @Override
    public final void onLost(Network network) {
        synchronized (mre.class) {
            this.a.a = null;
        }
    }
}
