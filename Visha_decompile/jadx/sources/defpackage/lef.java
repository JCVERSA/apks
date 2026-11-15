package defpackage;

import android.net.ConnectivityManager;
import android.net.Network;

public final class lef extends ConnectivityManager.NetworkCallback {
    public final qef a;

    public lef(qef qefVar) {
        this.a = qefVar;
    }

    @Override
    public final void onAvailable(Network network) {
        this.a.o.set(true);
    }

    @Override
    public final void onLost(Network network) {
        this.a.o.set(false);
    }
}
