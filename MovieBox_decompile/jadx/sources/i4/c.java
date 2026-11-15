package i4;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.core.app.NotificationCompat;
import androidx.work.impl.constraints.trackers.BroadcastReceiverConstraintTracker;
import com.cloud.tmc.integration.permission.PermissionConstant;
import kotlin.jvm.internal.Intrinsics;

public final class c extends BroadcastReceiverConstraintTracker {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(Context context, k4.c taskExecutor) {
        super(context, taskExecutor);
        Intrinsics.h(context, "context");
        Intrinsics.h(taskExecutor, "taskExecutor");
    }

    @Override
    public IntentFilter j() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.BATTERY_OKAY");
        intentFilter.addAction("android.intent.action.BATTERY_LOW");
        return intentFilter;
    }

    @Override
    public void k(Intent intent) {
        Intrinsics.h(intent, "intent");
        if (intent.getAction() == null) {
            return;
        }
        androidx.work.j.e().a(d.f61831a, "Received " + intent.getAction());
        String action = intent.getAction();
        if (action != null) {
            int iHashCode = action.hashCode();
            if (iHashCode == -1980154005) {
                if (action.equals("android.intent.action.BATTERY_OKAY")) {
                    g(Boolean.TRUE);
                }
            } else if (iHashCode == 490310653 && action.equals("android.intent.action.BATTERY_LOW")) {
                g(Boolean.FALSE);
            }
        }
    }

    @Override
    public Boolean e() {
        Intent intentRegisterReceiver = d().registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (intentRegisterReceiver == null) {
            androidx.work.j.e().c(d.f61831a, "getInitialState - null intent received");
            return Boolean.FALSE;
        }
        int intExtra = intentRegisterReceiver.getIntExtra(NotificationCompat.CATEGORY_STATUS, -1);
        float intExtra2 = intentRegisterReceiver.getIntExtra(PermissionConstant.level, -1) / intentRegisterReceiver.getIntExtra("scale", -1);
        boolean z10 = true;
        if (intExtra != 1 && intExtra2 <= 0.15f) {
            z10 = false;
        }
        return Boolean.valueOf(z10);
    }
}
