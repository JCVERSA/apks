package defpackage;

import android.os.Looper;
import com.google.android.gms.common.api.b;

public final class f0e extends qzd {
    public final b c;

    public f0e(b bVar) {
        super("Method is not supported by connectionless client. APIs supporting connectionless client must not call this method.");
        this.c = bVar;
    }

    @Override
    public final com.google.android.gms.common.api.internal.b a(com.google.android.gms.common.api.internal.b bVar) {
        return this.c.l(bVar);
    }

    @Override
    public final Looper c() {
        return this.c.p();
    }

    @Override
    public final void f(e1e e1eVar) {
    }
}
