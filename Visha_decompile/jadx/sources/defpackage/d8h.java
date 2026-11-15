package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.BatteryManager;
import android.os.Build;
import com.google.android.gms.ads.internal.client.zzbd;
import com.hunantv.media.player.subtitle.MediaFormat;
import java.util.concurrent.Callable;

public final class d8h implements eeh {
    public final g8i a;
    public final Context b;

    public d8h(g8i g8iVar, Context context) {
        this.a = g8iVar;
        this.b = context;
    }

    public static e8h a(d8h d8hVar) {
        double intExtra;
        boolean zIsCharging;
        if (((Boolean) zzbd.zzc().b(cye.ec)).booleanValue()) {
            BatteryManager batteryManager = (BatteryManager) d8hVar.b.getSystemService("batterymanager");
            intExtra = batteryManager != null ? ((double) batteryManager.getIntProperty(4)) / 100.0d : -1.0d;
            zIsCharging = batteryManager != null ? batteryManager.isCharging() : c(d8hVar.b());
        } else {
            Intent intentB = d8hVar.b();
            boolean zC = c(intentB);
            intExtra = intentB != null ? ((double) intentB.getIntExtra(MediaFormat.KEY_LEVEL, -1)) / ((double) intentB.getIntExtra("scale", -1)) : -1.0d;
            zIsCharging = zC;
        }
        return new e8h(intExtra, zIsCharging);
    }

    public static final boolean c(Intent intent) {
        if (intent == null) {
            return false;
        }
        int intExtra = intent.getIntExtra("status", -1);
        return intExtra == 2 || intExtra == 5;
    }

    public final Intent b() {
        IntentFilter intentFilter = new IntentFilter("android.intent.action.BATTERY_CHANGED");
        return (!((Boolean) zzbd.zzc().b(cye.eb)).booleanValue() || Build.VERSION.SDK_INT < 33) ? this.b.registerReceiver(null, intentFilter) : this.b.registerReceiver(null, intentFilter, 4);
    }

    @Override
    public final int zza() {
        return 14;
    }

    @Override
    public final im5 zzb() {
        return this.a.m(new Callable() {
            @Override
            public final Object call() {
                return d8h.a(this.b);
            }
        });
    }
}
