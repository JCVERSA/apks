package androidx.media3.exoplayer.mediacodec;

import android.content.Context;
import androidx.media3.common.util.a1;

public final class k implements t.b {

    private final Context f11919b;

    private final com.google.common.base.q f11920c;

    private final com.google.common.base.q f11921d;

    private int f11922e;

    private boolean f11923f;

    @Deprecated
    public k() {
        this.f11922e = 0;
        this.f11923f = false;
        this.f11919b = null;
        this.f11920c = null;
        this.f11921d = null;
    }

    private boolean c() {
        int i10 = a1.f10038a;
        if (i10 >= 31) {
            return true;
        }
        Context context = this.f11919b;
        return context != null && i10 >= 28 && context.getPackageManager().hasSystemFeature("com.amazon.hardware.tv_screen");
    }

    @Override
    public t a(t.a aVar) {
        int i10;
        com.google.common.base.q qVar;
        if (a1.f10038a < 23 || !((i10 = this.f11922e) == 1 || (i10 == 0 && c()))) {
            return new r0.b().a(aVar);
        }
        int iK = androidx.media3.common.y.k(aVar.f11938c.f9849o);
        androidx.media3.common.util.u.f("DMCodecAdapterFactory", "Creating an asynchronous MediaCodec adapter for track type " + a1.t0(iK));
        com.google.common.base.q qVar2 = this.f11920c;
        c.b bVar = (qVar2 == null || (qVar = this.f11921d) == null) ? new c.b(iK) : new c.b(qVar2, qVar);
        bVar.e(this.f11923f);
        return bVar.a(aVar);
    }

    public k b() {
        this.f11922e = 1;
        return this;
    }

    public k(Context context) {
        this(context, null, null);
    }

    public k(Context context, com.google.common.base.q qVar, com.google.common.base.q qVar2) {
        this.f11919b = context;
        this.f11922e = 0;
        this.f11923f = false;
        this.f11920c = qVar;
        this.f11921d = qVar2;
    }
}
