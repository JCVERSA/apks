package defpackage;

import android.os.Bundle;

public final class yah implements deh {
    public final String a;
    public final boolean b;

    public yah(String str, boolean z) {
        this.a = str;
        this.b = z;
    }

    @Override
    public final void zza(Object obj) {
        ((kyf) obj).b.putString("gct", this.a);
    }

    @Override
    public final void zzb(Object obj) {
        Bundle bundle = ((kyf) obj).a;
        bundle.putString("gct", this.a);
        if (this.b) {
            bundle.putString("de", "1");
        }
    }
}
