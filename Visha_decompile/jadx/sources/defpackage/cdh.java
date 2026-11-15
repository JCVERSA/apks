package defpackage;

import android.os.Bundle;

public final class cdh implements deh {
    public final String a;
    public final int b;

    public cdh(String str, int i) {
        this.a = str;
        this.b = i;
    }

    @Override
    public final void zza(Object obj) {
        ((kyf) obj).b.putString("request_id", this.a);
    }

    @Override
    public final void zzb(Object obj) {
        Bundle bundle = ((kyf) obj).a;
        bundle.putString("request_id", this.a);
        if (this.b == 2) {
            bundle.putInt("sod", 1);
        }
    }
}
