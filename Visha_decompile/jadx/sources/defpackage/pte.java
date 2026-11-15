package defpackage;

import com.google.android.gms.internal.ads.e0;
import com.google.android.gms.internal.ads.f0;

public final class pte extends tte {
    public final f0 i;
    public long j;

    public pte(e0 e0Var, String str, String str2, ooe ooeVar, int i, int i2, f0 f0Var) {
        super(e0Var, "qIGT98ofDONSt/ESILoFz6FgHDBS/gwI/iVoXkVW/e+gYU6fjAWtMRBwwAhwGXlz", "ndx9dZsZ7ieWidA9GZ0gFhILFKdyE8GGkCplaI9mVx4=", ooeVar, i, 53);
        this.i = f0Var;
        if (f0Var != null) {
            this.j = f0Var.a();
        }
    }

    @Override
    public final void a() {
        if (this.i != null) {
            this.e.J(((Long) this.f.invoke(null, Long.valueOf(this.j))).longValue());
        }
    }
}
