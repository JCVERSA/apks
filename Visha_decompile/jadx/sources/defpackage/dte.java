package defpackage;

import com.google.android.gms.internal.ads.e0;

public final class dte extends tte {
    public final mre i;
    public final long j;
    public final long k;

    public dte(e0 e0Var, String str, String str2, ooe ooeVar, int i, int i2, mre mreVar, long j, long j2) {
        super(e0Var, "WMtAvLUkeJPp5Xeb/kz/NfyzhUYTjmhsar/mdaqDTMDV2KhiERSKZGYNWUWCDAMN", "ZTQGRqHvDNY9rQHlORv5dNEX7nDBWGl9u8ebCYk6vGo=", ooeVar, i, 11);
        this.i = mreVar;
        this.j = j;
        this.k = j2;
    }

    @Override
    public final void a() {
        mre mreVar = this.i;
        if (mreVar != null) {
            kre kreVar = new kre((String) this.f.invoke(null, mreVar.b(), Long.valueOf(this.j), Long.valueOf(this.k)));
            ooe ooeVar = this.e;
            synchronized (ooeVar) {
                try {
                    ooeVar.x0(kreVar.b.longValue());
                    if (kreVar.c.longValue() >= 0) {
                        ooeVar.K(kreVar.c.longValue());
                    }
                    if (kreVar.d.longValue() >= 0) {
                        ooeVar.f0(kreVar.d.longValue());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
