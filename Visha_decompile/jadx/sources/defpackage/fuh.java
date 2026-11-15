package defpackage;

import android.net.ConnectivityManager;
import android.net.Network;

public final class fuh extends ConnectivityManager.NetworkCallback {
    public final guh a;

    public fuh(guh guhVar) {
        this.a = guhVar;
    }

    @Override
    public final void onAvailable(Network network) {
        this.a.r(true);
    }

    @Override
    public final void onLost(Network network) {
        this.a.r(false);
    }
}
