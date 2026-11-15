package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import java.util.Map;

public final class t3f implements n3f {
    public final Context a;
    public final Map b;

    public t3f(Context context, Map map) {
        this.a = context;
        this.b = map;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0051  */
    @Override
    public final void a(Object obj, Map map) {
        byte b;
        rdf rdfVarZzo = zzv.zzo();
        Context context = this.a;
        if (rdfVarZzo.p(context)) {
            String str = (String) map.get("eventName");
            String str2 = (String) map.get("eventId");
            int iHashCode = str.hashCode();
            if (iHashCode != 94399) {
                if (iHashCode != 94401) {
                    if (iHashCode == 94407 && str.equals("_ai")) {
                        b = 1;
                    } else {
                        b = -1;
                    }
                } else if (str.equals("_ac")) {
                    b = 0;
                } else {
                    b = -1;
                }
            } else if (str.equals("_aa")) {
                b = 2;
            } else {
                b = -1;
            }
            if (b == 0) {
                zzv.zzo().j(context, str2, (Map) this.b.get("_ac"));
            } else if (b == 1) {
                zzv.zzo().k(context, str2, (Map) this.b.get("_ai"));
            } else if (b == 2) {
                zzv.zzo().h(context, str2);
            } else {
                int i = zze.zza;
                zzo.zzg("logScionEvent gmsg contained unsupported eventName");
            }
        }
    }
}
