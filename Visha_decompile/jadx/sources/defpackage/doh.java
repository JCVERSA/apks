package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.util.client.zzf;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;

public abstract class doh {
    public static void a(Context context, boolean z) {
        if (z) {
            int i = zze.zza;
            zzo.zzi("This request is sent from a test device.");
            return;
        }
        zzbb.zzb();
        String str = "Use RequestConfiguration.Builder().setTestDeviceIds(Arrays.asList(\"" + zzf.zzz(context) + "\")) to get test ads on this device.";
        int i2 = zze.zza;
        zzo.zzi(str);
    }

    public static void b(int i, Throwable th, String str) {
        int i2 = zze.zza;
        zzo.zzi("Ad failed to load : " + i);
        zze.zzb(str, th);
        if (i == 3) {
            return;
        }
        zzv.zzp().w(th, str);
    }
}
