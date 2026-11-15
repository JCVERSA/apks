package defpackage;

import android.os.Bundle;

public final class pbh implements deh {
    public final Boolean a;

    public pbh(Boolean bool) {
        this.a = bool;
    }

    @Override
    public final void zza(Object obj) {
    }

    @Override
    public final void zzb(Object obj) {
        Bundle bundle = ((kyf) obj).a;
        Boolean bool = this.a;
        if (bool == null) {
            bundle.putInt("lft", -1);
        } else if (bool.booleanValue()) {
            bundle.putInt("lft", 1);
        } else {
            bundle.putInt("lft", 0);
        }
    }
}
