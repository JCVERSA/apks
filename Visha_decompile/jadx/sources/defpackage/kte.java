package defpackage;

import com.google.android.gms.internal.ads.e0;
import java.lang.reflect.InvocationTargetException;

public final class kte extends tte {
    public kte(e0 e0Var, String str, String str2, ooe ooeVar, int i, int i2) {
        super(e0Var, "4FdiBUPFa1CQITk8QYb/KC5CZQJZFUk4AUePTkKoIhV1OCu9c96sc0zaEo3W45kz", "CTOO7vS2eGX5K3ZMmh7m+q2y1+wvLadBs0NzJgxSeMo=", ooeVar, i, 73);
    }

    @Override
    public final void a() {
        try {
            boolean zBooleanValue = ((Boolean) this.f.invoke(null, this.b.b())).booleanValue();
            ooe ooeVar = this.e;
            int i = 1;
            if (true == zBooleanValue) {
                i = 2;
            }
            ooeVar.Z(i);
        } catch (InvocationTargetException unused) {
            this.e.Z(3);
        }
    }
}
