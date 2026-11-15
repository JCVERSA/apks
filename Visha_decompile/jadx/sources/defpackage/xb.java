package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.util.Log;

public abstract class xb {
    public static boolean a() {
        return Build.VERSION.SDK_INT >= 34;
    }

    public static Intent b(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, boolean z) {
        if (context == null || intentFilter == null || broadcastReceiver == null) {
            Log.e("AndroidTargetCompat", "registerReceiver failed");
            return null;
        }
        if (a()) {
            return z ? context.registerReceiver(broadcastReceiver, intentFilter, 2) : context.registerReceiver(broadcastReceiver, intentFilter, 4);
        }
        return context.registerReceiver(broadcastReceiver, intentFilter);
    }
}
