package defpackage;

import androidx.collection.SimpleArrayMap;
import com.google.android.gms.internal.ads.zzbgr;
import com.google.android.gms.internal.ads.zzbgu;
import com.google.android.gms.internal.ads.zzbgx;
import com.google.android.gms.internal.ads.zzbha;
import com.google.android.gms.internal.ads.zzbhe;
import com.google.android.gms.internal.ads.zzbhh;
import com.google.android.gms.internal.ads.zzbmc;

public final class mdg {
    public zzbgu a;
    public zzbgr b;
    public zzbhh c;
    public zzbhe d;
    public zzbmc e;
    public final SimpleArrayMap f = new SimpleArrayMap();
    public final SimpleArrayMap g = new SimpleArrayMap();

    public final mdg a(zzbgr zzbgrVar) {
        this.b = zzbgrVar;
        return this;
    }

    public final mdg b(zzbgu zzbguVar) {
        this.a = zzbguVar;
        return this;
    }

    public final mdg c(String str, zzbha zzbhaVar, zzbgx zzbgxVar) {
        this.f.put(str, zzbhaVar);
        if (zzbgxVar != null) {
            this.g.put(str, zzbgxVar);
        }
        return this;
    }

    public final mdg d(zzbmc zzbmcVar) {
        this.e = zzbmcVar;
        return this;
    }

    public final mdg e(zzbhe zzbheVar) {
        this.d = zzbheVar;
        return this;
    }

    public final mdg f(zzbhh zzbhhVar) {
        this.c = zzbhhVar;
        return this;
    }

    public final sdg g() {
        return new sdg(this);
    }
}
