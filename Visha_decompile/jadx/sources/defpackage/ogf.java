package defpackage;

import android.content.SharedPreferences;
import com.google.android.gms.ads.internal.util.zzbz;
import com.google.android.gms.ads.internal.util.zzcb;
import com.google.android.gms.ads.internal.zzv;
import java.util.Map;
import java.util.Set;

public final class ogf implements SharedPreferences.OnSharedPreferenceChangeListener {
    public final String a;
    public final zzcb b;

    public ogf(zzcb zzcbVar, String str) {
        this.b = zzcbVar;
        this.a = str;
    }

    @Override
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        zzcb zzcbVar = this.b;
        synchronized (zzcbVar) {
            try {
                for (zzbz zzbzVar : zzcbVar.b) {
                    String str2 = this.a;
                    Map map = zzbzVar.zza;
                    if (map.containsKey(str2) && ((Set) map.get(str2)).contains(str)) {
                        zzv.zzp().j().zzE(false);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
