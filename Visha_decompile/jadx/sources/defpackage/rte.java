package defpackage;

import com.google.android.gms.internal.ads.e0;

public final class rte extends tte {
    public rte(e0 e0Var, String str, String str2, ooe ooeVar, int i, int i2) {
        super(e0Var, "gm8IDIIiydkpD1O9/mPMu0ljuW+errJvs62TCchq7IbS1rnNzByjrFjKITopHNdf", "LFMrBRhUND+2ac6pPuv9NGIiF7t3Oz4z8DOZlKEBgm8=", ooeVar, i, 48);
    }

    @Override
    public final void a() {
        ooe ooeVar = this.e;
        ooeVar.a0(3);
        boolean zBooleanValue = ((Boolean) this.f.invoke(null, this.b.b())).booleanValue();
        synchronized (ooeVar) {
            try {
                if (zBooleanValue) {
                    ooeVar.a0(2);
                } else {
                    ooeVar.a0(1);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
