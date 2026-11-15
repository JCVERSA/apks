package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzad;
import com.google.android.gms.ads.internal.util.zzg;
import com.google.android.gms.ads.internal.zzv;
import java.util.Map;

public final class gpf implements oof {
    public final Context a;
    public final zzg b = zzv.zzp().j();

    public gpf(Context context) {
        this.a = context;
    }

    @Override
    public final void a(Map map) {
        String str;
        if (map.isEmpty() || (str = (String) map.get("gad_idless")) == null) {
            return;
        }
        zzg zzgVar = this.b;
        boolean z = Boolean.parseBoolean(str);
        zzgVar.zzD(z);
        if (z) {
            zzad.zzc(this.a);
        }
    }
}
