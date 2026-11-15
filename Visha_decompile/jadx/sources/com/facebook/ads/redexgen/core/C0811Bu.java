package com.facebook.ads.redexgen.core;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;

public final class C0811Bu extends ConnectivityManager.NetworkCallback {
    public boolean A00;
    public boolean A01;
    public final C0812Bv A02;

    public C0811Bu(C0812Bv c0812Bv) {
        this.A02 = c0812Bv;
    }

    private void A00() {
        this.A02.A04.post(new Runnable() {
            @Override
            public final void run() {
                this.A00.A02();
            }
        });
    }

    private void A01() {
        this.A02.A04.post(new Runnable() {
            @Override
            public final void run() {
                this.A00.A03();
            }
        });
    }

    public final void A02() {
        if (this.A02.A02 == null) {
            return;
        }
        this.A02.A03();
    }

    public final void A03() {
        if (this.A02.A02 == null) {
            return;
        }
        this.A02.A04();
    }

    @Override
    public final void onAvailable(Network network) {
        A00();
    }

    @Override
    public final void onBlockedStatusChanged(Network network, boolean z) {
        if (!z) {
            A01();
        }
    }

    @Override
    public final void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
        boolean zHasCapability = networkCapabilities.hasCapability(16);
        boolean networkValidated = this.A01;
        if (networkValidated) {
            boolean networkValidated2 = this.A00;
            if (networkValidated2 == zHasCapability) {
                if (!zHasCapability) {
                    return;
                }
                A01();
                return;
            }
        }
        this.A01 = true;
        this.A00 = zHasCapability;
        A00();
    }

    @Override
    public final void onLost(Network network) {
        A00();
    }
}
