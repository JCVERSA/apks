package defpackage;

import android.net.Uri;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import java.util.List;
import java.util.Map;

public final class gjf implements v7i {
    public final List a;
    public final String b;
    public final Uri c;
    public final ijf d;

    public gjf(ijf ijfVar, List list, String str, Uri uri) {
        this.a = list;
        this.b = str;
        this.c = uri;
        this.d = ijfVar;
    }

    @Override
    public final void zza(Throwable th) {
        String strValueOf = String.valueOf(this.c);
        int i = zze.zza;
        zzo.zzj("Failed to parse gmsg params for: ".concat(strValueOf));
    }

    @Override
    public final void zzb(Object obj) {
        List list = this.a;
        String str = this.b;
        this.d.u((Map) obj, list, str);
    }
}
