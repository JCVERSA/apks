package defpackage;

import com.google.android.gms.internal.ads.e0;

public final class use extends tte {
    public use(e0 e0Var, String str, String str2, ooe ooeVar, int i, int i2) {
        super(e0Var, "S1m7Rc+PrS7sduww0PRRSvJew44X/2pGt6He+X2dcCnhhquTF81e7XXfvkMEzIjw", "AD44oxHubsTxzFMfIPPxyupyLzSfbBYQaKI/MuDqsMs=", ooeVar, i, 5);
    }

    @Override
    public final void a() {
        ooe ooeVar = this.e;
        ooeVar.m0(-1L);
        ooeVar.l0(-1L);
        int[] iArr = (int[]) this.f.invoke(null, this.b.b());
        synchronized (ooeVar) {
            try {
                ooeVar.m0(iArr[0]);
                ooeVar.l0(iArr[1]);
                int i = iArr[2];
                if (i != Integer.MIN_VALUE) {
                    ooeVar.k0(i);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
