package defpackage;

import android.os.Bundle;

public final class sah implements deh {
    public final String a;
    public final String b;
    public final Bundle c;

    public sah(String str, String str2, Bundle bundle, tah tahVar) {
        this.a = str;
        this.b = str2;
        this.c = bundle;
    }

    @Override
    public final void zza(Object obj) {
    }

    @Override
    public final void zzb(Object obj) {
        Bundle bundle = ((kyf) obj).a;
        bundle.putString("consent_string", this.a);
        bundle.putString("fc_consent", this.b);
        Bundle bundle2 = this.c;
        if (bundle2 != null) {
            bundle.putBundle("iab_consent_info", bundle2);
        }
    }
}
