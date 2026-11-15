package defpackage;

import android.util.Log;

public final class m0j extends q1j {
    public m0j(y0j y0jVar, String str, Long l, boolean z) {
        super(y0jVar, str, l, true, null);
    }

    @Override
    public final Object a(Object obj) {
        try {
            return Long.valueOf(Long.parseLong((String) obj));
        } catch (NumberFormatException unused) {
            Log.e("PhenotypeFlag", "Invalid long value for " + super.c() + ": " + ((String) obj));
            return null;
        }
    }
}
