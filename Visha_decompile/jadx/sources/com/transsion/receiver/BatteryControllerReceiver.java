package com.transsion.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;
import com.hunantv.media.player.subtitle.MediaFormat;

public class BatteryControllerReceiver extends BroadcastReceiver {
    public a a;
    public int b;
    public boolean c;
    public boolean d;
    public boolean e;

    public interface a {
        void onBatteryLevelChanged(int i, boolean z, boolean z2);
    }

    public void a(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.BATTERY_CHANGED");
        context.registerReceiver(this, intentFilter);
    }

    public void b(a aVar) {
        this.a = aVar;
        if (aVar != null) {
            aVar.onBatteryLevelChanged(this.b, this.c, this.d);
        }
    }

    @Override
    public void onReceive(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        try {
            if ("android.intent.action.BATTERY_CHANGED".equals(intent.getAction())) {
                this.b = (int) ((intent.getIntExtra(MediaFormat.KEY_LEVEL, 0) * 100.0f) / intent.getIntExtra("scale", 100));
                this.c = intent.getIntExtra("plugged", 0) != 0;
                int intExtra = intent.getIntExtra("status", 1);
                boolean z = intExtra == 5;
                this.e = z;
                this.d = z || intExtra == 2;
                Log.e("BatteryControllerReceiver", "onReceive mLevel:" + this.b + ", mPluggedIn:" + this.c + ", mCharging:" + this.d);
                a aVar = this.a;
                if (aVar != null) {
                    aVar.onBatteryLevelChanged(this.b, this.c, this.d);
                }
            }
        } catch (Exception e) {
            Log.e("BatteryControllerReceiver", "onReceive error: " + e.getMessage());
        }
    }
}
