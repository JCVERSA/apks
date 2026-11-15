package androidx.work.impl.constraints.trackers;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.work.j;
import i4.e;
import i4.g;
import k4.c;
import kotlin.jvm.internal.Intrinsics;

public abstract class BroadcastReceiverConstraintTracker extends g {

    private final BroadcastReceiver f15249f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BroadcastReceiverConstraintTracker(Context context, c taskExecutor) {
        super(context, taskExecutor);
        Intrinsics.h(context, "context");
        Intrinsics.h(taskExecutor, "taskExecutor");
        this.f15249f = new BroadcastReceiver() {
            @Override
            public void onReceive(Context context2, Intent intent) {
                Intrinsics.h(context2, "context");
                Intrinsics.h(intent, "intent");
                this.f15250a.k(intent);
            }
        };
    }

    @Override
    public void h() {
        j.e().a(e.f61832a, getClass().getSimpleName() + ": registering receiver");
        d().registerReceiver(this.f15249f, j());
    }

    @Override
    public void i() {
        j.e().a(e.f61832a, getClass().getSimpleName() + ": unregistering receiver");
        d().unregisterReceiver(this.f15249f);
    }

    public abstract IntentFilter j();

    public abstract void k(Intent intent);
}
