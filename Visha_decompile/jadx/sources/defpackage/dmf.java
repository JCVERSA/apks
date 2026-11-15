package defpackage;

import android.content.Context;

public final class dmf implements hhh {
    public final zlf a;
    public Context b;
    public String c;

    public dmf(zlf zlfVar, dnf dnfVar) {
        this.a = zlfVar;
    }

    @Override
    public final hhh a(Context context) {
        context.getClass();
        this.b = context;
        return this;
    }

    @Override
    public final hhh zza(String str) {
        str.getClass();
        this.c = str;
        return this;
    }

    @Override
    public final ihh zzc() {
        pyi.c(this.b, Context.class);
        pyi.c(this.c, String.class);
        return new gmf(this.a, this.b, this.c);
    }
}
