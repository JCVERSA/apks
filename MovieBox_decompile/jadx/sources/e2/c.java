package e2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Handler;
import androidx.media3.common.util.a1;
import androidx.media3.exoplayer.scheduler.Requirements;

public final class c {

    private final Context f59243a;

    private final InterfaceC0716c f59244b;

    private final Requirements f59245c;

    private final Handler f59246d = a1.C();

    private b f59247e;

    private int f59248f;

    private d f59249g;

    private class b extends BroadcastReceiver {
        private b() {
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            if (isInitialStickyBroadcast()) {
                return;
            }
            c.this.e();
        }
    }

    public interface InterfaceC0716c {
        void a(c cVar, int i10);
    }

    final class d extends ConnectivityManager.NetworkCallback {

        private boolean f59251a;

        private boolean f59252b;

        private d() {
        }

        public void c() {
            if (c.this.f59249g != null) {
                c.this.e();
            }
        }

        public void d() {
            if (c.this.f59249g != null) {
                c.this.g();
            }
        }

        private void e() {
            c.this.f59246d.post(new Runnable() {
                @Override
                public final void run() {
                    this.f59254a.c();
                }
            });
        }

        private void f() {
            c.this.f59246d.post(new Runnable() {
                @Override
                public final void run() {
                    this.f59255a.d();
                }
            });
        }

        @Override
        public void onAvailable(Network network) {
            e();
        }

        @Override
        public void onBlockedStatusChanged(Network network, boolean z10) {
            if (z10) {
                return;
            }
            f();
        }

        @Override
        public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
            boolean zHasCapability = networkCapabilities.hasCapability(16);
            if (this.f59251a && this.f59252b == zHasCapability) {
                if (zHasCapability) {
                    f();
                }
            } else {
                this.f59251a = true;
                this.f59252b = zHasCapability;
                e();
            }
        }

        @Override
        public void onLost(Network network) {
            e();
        }
    }

    public c(Context context, InterfaceC0716c interfaceC0716c, Requirements requirements) {
        this.f59243a = context.getApplicationContext();
        this.f59244b = interfaceC0716c;
        this.f59245c = requirements;
    }

    public void e() {
        int notMetRequirements = this.f59245c.getNotMetRequirements(this.f59243a);
        if (this.f59248f != notMetRequirements) {
            this.f59248f = notMetRequirements;
            this.f59244b.a(this, notMetRequirements);
        }
    }

    public void g() {
        if ((this.f59248f & 3) == 0) {
            return;
        }
        e();
    }

    private void h() {
        ConnectivityManager connectivityManager = (ConnectivityManager) androidx.media3.common.util.a.e((ConnectivityManager) this.f59243a.getSystemService("connectivity"));
        d dVar = new d();
        this.f59249g = dVar;
        connectivityManager.registerDefaultNetworkCallback(dVar);
    }

    private void k() {
        ((ConnectivityManager) androidx.media3.common.util.a.e((ConnectivityManager) this.f59243a.getSystemService("connectivity"))).unregisterNetworkCallback((ConnectivityManager.NetworkCallback) androidx.media3.common.util.a.e(this.f59249g));
        this.f59249g = null;
    }

    public Requirements f() {
        return this.f59245c;
    }

    public int i() {
        this.f59248f = this.f59245c.getNotMetRequirements(this.f59243a);
        IntentFilter intentFilter = new IntentFilter();
        if (this.f59245c.isNetworkRequired()) {
            if (a1.f10038a >= 24) {
                h();
            } else {
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            }
        }
        if (this.f59245c.isChargingRequired()) {
            intentFilter.addAction("android.intent.action.ACTION_POWER_CONNECTED");
            intentFilter.addAction("android.intent.action.ACTION_POWER_DISCONNECTED");
        }
        if (this.f59245c.isIdleRequired()) {
            if (a1.f10038a >= 23) {
                intentFilter.addAction("android.os.action.DEVICE_IDLE_MODE_CHANGED");
            } else {
                intentFilter.addAction("android.intent.action.SCREEN_ON");
                intentFilter.addAction("android.intent.action.SCREEN_OFF");
            }
        }
        if (this.f59245c.isStorageNotLowRequired()) {
            intentFilter.addAction("android.intent.action.DEVICE_STORAGE_LOW");
            intentFilter.addAction("android.intent.action.DEVICE_STORAGE_OK");
        }
        b bVar = new b();
        this.f59247e = bVar;
        this.f59243a.registerReceiver(bVar, intentFilter, null, this.f59246d);
        return this.f59248f;
    }

    public void j() {
        this.f59243a.unregisterReceiver((BroadcastReceiver) androidx.media3.common.util.a.e(this.f59247e));
        this.f59247e = null;
        if (a1.f10038a < 24 || this.f59249g == null) {
            return;
        }
        k();
    }
}
