package defpackage;

import com.google.android.gms.internal.ads.e0;

public final class nte extends tte {
    public final StackTraceElement[] i;

    public nte(e0 e0Var, String str, String str2, ooe ooeVar, int i, int i2, StackTraceElement[] stackTraceElementArr) {
        super(e0Var, "9wvnViXgITvEao5ly+BRRyQrzFTt3bYFFawK/4VAi8rGNT0AvgE+boySJAbIF/vH", "ZZ4V/Y3/WcXV1iobSsNLXr6TJ7vZy9r1U0ttG6Pb6Z4=", ooeVar, i, 45);
        this.i = stackTraceElementArr;
    }

    @Override
    public final void a() {
        StackTraceElement[] stackTraceElementArr = this.i;
        if (stackTraceElementArr != null) {
            yre yreVar = new yre((String) this.f.invoke(null, stackTraceElementArr));
            ooe ooeVar = this.e;
            synchronized (ooeVar) {
                try {
                    ooeVar.y(yreVar.b.longValue());
                    if (yreVar.c.booleanValue()) {
                        ooeVar.V(true != yreVar.d.booleanValue() ? 2 : 1);
                    } else {
                        ooeVar.V(3);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
