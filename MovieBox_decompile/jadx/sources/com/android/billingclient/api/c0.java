package com.android.billingclient.api;

import com.google.android.gms.internal.play_billing.zzaf;
import java.util.concurrent.Callable;

final class c0 implements Callable {

    final String f18427a;

    final u f18428b;

    final i f18429c;

    c0(i iVar, String str, u uVar) {
        this.f18429c = iVar;
        this.f18427a = str;
        this.f18428b = uVar;
    }

    @Override
    public final Object call() {
        e1 e1VarE = i.E(this.f18429c, this.f18427a, 9);
        if (e1VarE.b() != null) {
            this.f18428b.a(e1VarE.a(), e1VarE.b());
            return null;
        }
        this.f18428b.a(e1VarE.a(), zzaf.zzk());
        return null;
    }
}
