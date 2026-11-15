package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.client.zzr;

public final class vmf implements fkh {
    public final zlf a;
    public Context b;
    public String c;
    public zzr d;

    public vmf(zlf zlfVar, dnf dnfVar) {
        this.a = zlfVar;
    }

    @Override
    public final fkh a(zzr zzrVar) {
        zzrVar.getClass();
        this.d = zzrVar;
        return this;
    }

    @Override
    public final fkh b(Context context) {
        context.getClass();
        this.b = context;
        return this;
    }

    @Override
    public final fkh zzb(String str) {
        str.getClass();
        this.c = str;
        return this;
    }

    @Override
    public final kkh zzd() {
        pyi.c(this.b, Context.class);
        pyi.c(this.c, String.class);
        pyi.c(this.d, zzr.class);
        return new wmf(this.a, this.b, this.c, this.d);
    }
}
