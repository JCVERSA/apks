package com.transsion.sniffer_load;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import androidx.p004lifecycle.Lifecycle;
import androidx.p004lifecycle.LifecycleObserver;
import androidx.p004lifecycle.OnLifecycleEvent;

public class NetWorkStatusObserver extends ConnectivityManager.NetworkCallback implements LifecycleObserver {
    public Context b;

    public final void a() {
        ((ConnectivityManager) this.b.getSystemService("connectivity")).registerDefaultNetworkCallback(this);
    }

    public final void b() {
        ((ConnectivityManager) this.b.getSystemService("connectivity")).unregisterNetworkCallback(this);
    }

    @Override
    public void onBlockedStatusChanged(Network network, boolean z) {
        super.onBlockedStatusChanged(network, z);
    }

    @Override
    public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
        super.onCapabilitiesChanged(network, networkCapabilities);
        if (!networkCapabilities.hasCapability(16) || networkCapabilities.hasTransport(1) || networkCapabilities.hasTransport(5) || networkCapabilities.hasTransport(0)) {
            return;
        }
        networkCapabilities.hasTransport(3);
    }

    @Override
    public void onLost(Network network) {
        super.onLost(network);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_CREATE)
    public void register() {
        a();
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    public void unregister() {
        b();
    }
}
