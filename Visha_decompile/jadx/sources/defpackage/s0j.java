package defpackage;

import android.util.Log;

public final class s0j extends q1j {
    public s0j(y0j y0jVar, String str, Double d, boolean z) {
        super(y0jVar, "measurement.test.double_flag", d, true, null);
    }

    @Override
    public final Object a(Object obj) {
        try {
            return Double.valueOf(Double.parseDouble((String) obj));
        } catch (NumberFormatException unused) {
            Log.e("PhenotypeFlag", "Invalid double value for " + super.c() + ": " + ((String) obj));
            return null;
        }
    }
}
