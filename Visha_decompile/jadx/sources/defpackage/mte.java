package defpackage;

import com.google.android.gms.internal.ads.e0;

public final class mte extends tte {
    public final boolean i;

    public mte(e0 e0Var, String str, String str2, ooe ooeVar, int i, int i2) {
        super(e0Var, "l73pWBOU/qyDPWyApDuwt3A6opU9E+7PquXzxCByw4gixPmt031v7ukW//Ddd+VY", "VAZB0ZL6jYmE0jUHUJ0Om2CbCtDd1BstFFxYH2/l7vw=", ooeVar, i, 61);
        this.i = e0Var.q();
    }

    @Override
    public final void a() {
        long jLongValue = ((Long) this.f.invoke(null, this.b.b(), Boolean.valueOf(this.i))).longValue();
        ooe ooeVar = this.e;
        synchronized (ooeVar) {
            ooeVar.x(jLongValue);
        }
    }
}
