package defpackage;

import com.google.android.gms.internal.ads.e0;
import java.lang.reflect.Method;

public final class yse extends tte {
    public final hse i;

    public yse(e0 e0Var, String str, String str2, ooe ooeVar, int i, int i2, hse hseVar) {
        super(e0Var, "4sDibVZK9eKuFlqXgTpdhhKs2Orw9dH1PELY4zPrs10iomnIsvpd54Iu4NVAy+DZ", "7HL5eN/Pvda4VOei0IPDYI1tAwkOrIcQx+u+McMv8ws=", ooeVar, i, 85);
        this.i = hseVar;
    }

    @Override
    public final void a() {
        Method method = this.f;
        hse hseVar = this.i;
        long[] jArr = (long[]) method.invoke(null, Long.valueOf(hseVar.d()), Long.valueOf(hseVar.h()), Long.valueOf(hseVar.b()), Long.valueOf(hseVar.f()));
        ooe ooeVar = this.e;
        synchronized (ooeVar) {
            ooeVar.t0(jArr[0]);
            ooeVar.s0(jArr[1]);
        }
    }
}
