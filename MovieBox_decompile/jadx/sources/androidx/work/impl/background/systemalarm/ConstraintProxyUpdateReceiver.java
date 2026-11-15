package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import androidx.work.impl.d0;
import androidx.work.impl.utils.n;
import androidx.work.j;

public class ConstraintProxyUpdateReceiver extends BroadcastReceiver {

    static final String f15193a = j.i("ConstrntProxyUpdtRecvr");

    public static Intent a(Context context, boolean z10, boolean z11, boolean z12, boolean z13) {
        Intent intent = new Intent("androidx.work.impl.background.systemalarm.UpdateProxies");
        intent.setComponent(new ComponentName(context, (Class<?>) ConstraintProxyUpdateReceiver.class));
        intent.putExtra("KEY_BATTERY_NOT_LOW_PROXY_ENABLED", z10).putExtra("KEY_BATTERY_CHARGING_PROXY_ENABLED", z11).putExtra("KEY_STORAGE_NOT_LOW_PROXY_ENABLED", z12).putExtra("KEY_NETWORK_STATE_PROXY_ENABLED", z13);
        return intent;
    }

    @Override
    public void onReceive(final Context context, final Intent intent) {
        String action = intent != null ? intent.getAction() : null;
        if ("androidx.work.impl.background.systemalarm.UpdateProxies".equals(action)) {
            final BroadcastReceiver.PendingResult pendingResultGoAsync = goAsync();
            d0.o(context).u().c(new Runnable() {
                @Override
                public void run() {
                    try {
                        boolean booleanExtra = intent.getBooleanExtra("KEY_BATTERY_NOT_LOW_PROXY_ENABLED", false);
                        boolean booleanExtra2 = intent.getBooleanExtra("KEY_BATTERY_CHARGING_PROXY_ENABLED", false);
                        boolean booleanExtra3 = intent.getBooleanExtra("KEY_STORAGE_NOT_LOW_PROXY_ENABLED", false);
                        boolean booleanExtra4 = intent.getBooleanExtra("KEY_NETWORK_STATE_PROXY_ENABLED", false);
                        j.e().a(ConstraintProxyUpdateReceiver.f15193a, "Updating proxies: (BatteryNotLowProxy (" + booleanExtra + "), BatteryChargingProxy (" + booleanExtra2 + "), StorageNotLowProxy (" + booleanExtra3 + "), NetworkStateProxy (" + booleanExtra4 + "), ");
                        n.a(context, ConstraintProxy.BatteryNotLowProxy.class, booleanExtra);
                        n.a(context, ConstraintProxy.BatteryChargingProxy.class, booleanExtra2);
                        n.a(context, ConstraintProxy.StorageNotLowProxy.class, booleanExtra3);
                        n.a(context, ConstraintProxy.NetworkStateProxy.class, booleanExtra4);
                    } finally {
                        pendingResultGoAsync.finish();
                    }
                }
            });
            return;
        }
        j.e().a(f15193a, "Ignoring unknown action " + action);
    }
}
