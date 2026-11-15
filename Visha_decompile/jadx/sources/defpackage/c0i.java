package defpackage;

import com.google.android.gms.internal.ads.m8;

public abstract class c0i {
    public static im5 a(xda xdaVar, ir0 ir0Var) {
        final b0i b0iVar = new b0i(xdaVar, null);
        xdaVar.c(m8.c(), new pe7() {
            @Override
            public final void onComplete(xda xdaVar2) {
                b0i b0iVar2 = b0iVar;
                if (xdaVar2.o()) {
                    b0iVar2.cancel(false);
                    return;
                }
                if (xdaVar2.q()) {
                    b0iVar2.zzc(xdaVar2.m());
                    return;
                }
                Exception excL = xdaVar2.l();
                if (excL == null) {
                    throw new IllegalStateException();
                }
                b0iVar2.zzd(excL);
            }
        });
        return b0iVar;
    }
}
