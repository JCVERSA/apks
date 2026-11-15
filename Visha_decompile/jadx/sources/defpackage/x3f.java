package defpackage;

import com.google.android.gms.ads.internal.client.zza;
import com.google.android.gms.ads.internal.overlay.zzaa;
import java.util.Map;

public final class x3f implements zzaa {
    public boolean a = false;
    public final boolean b;
    public final zza c;
    public final Map d;
    public final Map e;

    public x3f(z3f z3fVar, boolean z, zza zzaVar, Map map, Map map2) {
        this.b = z;
        this.c = zzaVar;
        this.d = map;
        this.e = map2;
    }

    @Override
    public final void zza(boolean z) {
        if (this.a) {
            return;
        }
        if (z && this.b) {
            ((t8g) this.c).zzdd();
        }
        this.a = true;
        Map map = this.d;
        map.put((String) this.e.get("event_id"), Boolean.valueOf(z));
        ((p5f) this.c).zzd("openIntentAsync", map);
    }

    @Override
    public final void zzb(int i) {
    }
}
