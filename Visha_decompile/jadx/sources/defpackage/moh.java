package defpackage;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.internal.client.zze;
import java.util.HashSet;

public final class moh implements nzf {
    public final HashSet b = new HashSet();
    public final Context c;
    public final tef d;

    public moh(Context context, tef tefVar) {
        this.c = context;
        this.d = tefVar;
    }

    @Override
    public final synchronized void A(zze zzeVar) {
        if (zzeVar.zza != 3) {
            this.d.k(this.b);
        }
    }

    public final Bundle a() {
        return this.d.m(this.c, this);
    }

    public final synchronized void b(HashSet hashSet) {
        HashSet hashSet2 = this.b;
        hashSet2.clear();
        hashSet2.addAll(hashSet);
    }
}
