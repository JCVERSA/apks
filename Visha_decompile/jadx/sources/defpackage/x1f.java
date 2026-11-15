package defpackage;

import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zzbo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.internal.ads.zzaps;

public final class x1f implements ime {
    public final String a;
    public final k4f b;

    public x1f(zzbo zzboVar, String str, k4f k4fVar) {
        this.a = str;
        this.b = k4fVar;
    }

    @Override
    public final void a(zzaps zzapsVar) {
        String str = "Failed to load URL: " + this.a + "\n" + zzapsVar.toString();
        int i = zze.zza;
        zzo.zzj(str);
        this.b.zza(null);
    }
}
