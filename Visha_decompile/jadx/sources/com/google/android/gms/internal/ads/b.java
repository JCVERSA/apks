package com.google.android.gms.internal.ads;

import android.os.Handler;
import defpackage.ame;
import defpackage.kme;
import java.util.concurrent.Executor;

public final class b {
    public final Executor a;

    public b(Handler handler) {
        this.a = new ame(this, handler);
    }

    public final void a(c cVar, zzaps zzapsVar) {
        cVar.zzm("post-error");
        ((ame) this.a).b.post(new zzaoz(cVar, kme.a(zzapsVar), null));
    }

    public final void b(c cVar, kme kmeVar, Runnable runnable) {
        cVar.zzq();
        cVar.zzm("post-response");
        ((ame) this.a).b.post(new zzaoz(cVar, kmeVar, runnable));
    }
}
