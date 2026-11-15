package i4;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import kotlin.jvm.internal.Intrinsics;

public final class i extends g {

    private final ConnectivityManager f61841f;

    private final a f61842g;

    public static final class a extends ConnectivityManager.NetworkCallback {
        a() {
        }

        @Override
        public void onCapabilitiesChanged(Network network, NetworkCapabilities capabilities) {
            Intrinsics.h(network, "network");
            Intrinsics.h(capabilities, "capabilities");
            androidx.work.j.e().a(j.f61844a, "Network capabilities changed: " + capabilities);
            i iVar = i.this;
            iVar.g(j.c(iVar.f61841f));
        }

        @Override
        public void onLost(Network network) {
            Intrinsics.h(network, "network");
            androidx.work.j.e().a(j.f61844a, "Network connection lost");
            i iVar = i.this;
            iVar.g(j.c(iVar.f61841f));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(Context context, k4.c taskExecutor) {
        super(context, taskExecutor);
        Intrinsics.h(context, "context");
        Intrinsics.h(taskExecutor, "taskExecutor");
        Object systemService = d().getSystemService("connectivity");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        this.f61841f = (ConnectivityManager) systemService;
        this.f61842g = new a();
    }

    @Override
    public void h() {
        try {
            androidx.work.j.e().a(j.f61844a, "Registering network callback");
            androidx.work.impl.utils.m.a(this.f61841f, this.f61842g);
        } catch (IllegalArgumentException e10) {
            androidx.work.j.e().d(j.f61844a, "Received exception while registering network callback", e10);
        } catch (SecurityException e11) {
            androidx.work.j.e().d(j.f61844a, "Received exception while registering network callback", e11);
        }
    }

    @Override
    public void i() {
        try {
            androidx.work.j.e().a(j.f61844a, "Unregistering network callback");
            androidx.work.impl.utils.k.c(this.f61841f, this.f61842g);
        } catch (IllegalArgumentException e10) {
            androidx.work.j.e().d(j.f61844a, "Received exception while unregistering network callback", e10);
        } catch (SecurityException e11) {
            androidx.work.j.e().d(j.f61844a, "Received exception while unregistering network callback", e11);
        }
    }

    @Override
    public g4.b e() {
        return j.c(this.f61841f);
    }
}
