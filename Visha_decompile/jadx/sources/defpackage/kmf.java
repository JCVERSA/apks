package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.client.zzr;

public final class kmf implements rih {
    public final zlf a;
    public Context b;
    public String c;
    public zzr d;

    public kmf(zlf zlfVar, dnf dnfVar) {
        this.a = zlfVar;
    }

    @Override
    public final rih a(zzr zzrVar) {
        zzrVar.getClass();
        this.d = zzrVar;
        return this;
    }

    @Override
    public final rih b(Context context) {
        context.getClass();
        this.b = context;
        return this;
    }

    @Override
    public final rih zzb(String str) {
        str.getClass();
        this.c = str;
        return this;
    }

    @Override
    public final sih zzd() {
        pyi.c(this.b, Context.class);
        pyi.c(this.c, String.class);
        pyi.c(this.d, zzr.class);
        return new lmf(this.a, this.b, this.c, this.d);
    }
}
