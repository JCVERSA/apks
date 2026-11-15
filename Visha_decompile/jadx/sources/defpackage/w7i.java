package defpackage;

import com.google.android.gms.internal.ads.h8;
import com.google.android.gms.internal.ads.zzfww;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

public final class w7i {
    public final boolean a;
    public final zzfww b;

    public w7i(boolean z, zzfww zzfwwVar, x7i x7iVar) {
        this.a = z;
        this.b = zzfwwVar;
    }

    public final im5 a(Callable callable, Executor executor) {
        return new h8(this.b, this.a, executor, callable);
    }
}
