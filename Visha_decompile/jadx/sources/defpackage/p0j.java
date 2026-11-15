package defpackage;

import android.util.Log;

public final class p0j extends q1j {
    public p0j(y0j y0jVar, String str, Boolean bool, boolean z) {
        super(y0jVar, str, bool, true, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final Object a(Object obj) {
        if (iti.c.matcher(obj).matches()) {
            return Boolean.TRUE;
        }
        if (iti.d.matcher(obj).matches()) {
            return Boolean.FALSE;
        }
        Log.e("PhenotypeFlag", "Invalid boolean value for " + super.c() + ": " + ((String) obj));
        return null;
    }
}
