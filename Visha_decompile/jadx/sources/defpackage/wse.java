package defpackage;

import com.google.android.gms.internal.ads.e0;

public final class wse extends tte {
    public final long i;

    public wse(e0 e0Var, String str, String str2, ooe ooeVar, long j, int i, int i2) {
        super(e0Var, "L8i06sDgb6sVaB+ScHUGdHTAN8wr04xodnQKCwVbFMYOgH4Omnc18MPDEonWn/wv", "HhF1qQiI84tIg0/eB8BMUmrCPWLiUf2p20tCo/SaLzI=", ooeVar, i, 25);
        this.i = j;
    }

    @Override
    public final void a() {
        long jLongValue = ((Long) this.f.invoke(null, null)).longValue();
        ooe ooeVar = this.e;
        synchronized (ooeVar) {
            try {
                ooeVar.r0(jLongValue);
                long j = this.i;
                if (j != 0) {
                    ooeVar.N(jLongValue - j);
                    ooeVar.O(j);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
