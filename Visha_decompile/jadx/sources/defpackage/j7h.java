package defpackage;

import android.os.Bundle;
import android.text.TextUtils;

public final class j7h implements deh {
    public final String a;
    public final int b;

    public j7h(String str, int i) {
        this.a = str;
        this.b = i;
    }

    @Override
    public final void zza(Object obj) {
    }

    @Override
    public final void zzb(Object obj) {
        int i;
        Bundle bundle = ((kyf) obj).a;
        String str = this.a;
        if (TextUtils.isEmpty(str) || (i = this.b) == -1) {
            return;
        }
        Bundle bundleA = unh.a(bundle, "pii");
        bundle.putBundle("pii", bundleA);
        bundleA.putString("pvid", str);
        bundleA.putInt("pvid_s", i);
    }
}
