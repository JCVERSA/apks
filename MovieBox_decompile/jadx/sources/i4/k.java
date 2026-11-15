package i4;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import androidx.work.impl.constraints.trackers.BroadcastReceiverConstraintTracker;
import kotlin.jvm.internal.Intrinsics;

public final class k extends BroadcastReceiverConstraintTracker {

    private final ConnectivityManager f61845g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(Context context, k4.c taskExecutor) {
        super(context, taskExecutor);
        Intrinsics.h(context, "context");
        Intrinsics.h(taskExecutor, "taskExecutor");
        Object systemService = d().getSystemService("connectivity");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        this.f61845g = (ConnectivityManager) systemService;
    }

    @Override
    public IntentFilter j() {
        return new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
    }

    @Override
    public void k(Intent intent) {
        Intrinsics.h(intent, "intent");
        if (Intrinsics.c(intent.getAction(), "android.net.conn.CONNECTIVITY_CHANGE")) {
            androidx.work.j.e().a(j.f61844a, "Network broadcast received");
            g(j.c(this.f61845g));
        }
    }

    @Override
    public g4.b e() {
        return j.c(this.f61845g);
    }
}
