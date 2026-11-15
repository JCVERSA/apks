package defpackage;

import android.os.Bundle;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;

public final class sch implements deh {
    public final String a;
    public final Integer b;
    public final String c;
    public final String d;
    public final String e;
    public final String f;

    public sch(String str, Integer num, String str2, String str3, String str4, String str5) {
        this.a = str;
        this.b = num;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = str5;
    }

    @Override
    public final void zza(Object obj) {
        Bundle bundle = ((kyf) obj).b;
        unh.c(bundle, "pn", this.a);
        unh.c(bundle, CmcdConfiguration.KEY_DEADLINE, this.d);
    }

    @Override
    public final void zzb(Object obj) {
        Bundle bundle = ((kyf) obj).a;
        unh.c(bundle, "pn", this.a);
        Integer num = this.b;
        if (num != null) {
            bundle.putInt("vc", num.intValue());
        }
        unh.c(bundle, "vnm", this.c);
        unh.c(bundle, CmcdConfiguration.KEY_DEADLINE, this.d);
        unh.c(bundle, "ins_pn", this.e);
        unh.c(bundle, "ini_pn", this.f);
    }
}
