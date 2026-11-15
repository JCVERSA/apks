package defpackage;

import com.google.android.gms.internal.ads.e0;

public final class qte extends tte {
    public static volatile Long i;
    public static final Object j = new Object();

    public qte(e0 e0Var, String str, String str2, ooe ooeVar, int i2, int i3) {
        super(e0Var, "y9sVnCEW90f5Vx2HqIuVcdDKh+hI2qRq1sCpyHGv3MKSudlm5MGW5X5BN8/9lVwY", "EIfBdErCKLHua1LnSPtD4OKhBX6Yh9pp3IQrjV6gKSc=", ooeVar, i2, 33);
    }

    @Override
    public final void a() {
        if (i == null) {
            synchronized (j) {
                try {
                    if (i == null) {
                        i = (Long) this.f.invoke(null, null);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        ooe ooeVar = this.e;
        synchronized (ooeVar) {
            ooeVar.P(i.longValue());
        }
    }
}
