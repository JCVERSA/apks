package com.google.firebase.perf.util;

import android.os.Bundle;

public final class d {

    private static final uc.a f31542b = uc.a.e();

    private final Bundle f31543a;

    public d() {
        this(new Bundle());
    }

    private e d(String str) {
        if (!a(str)) {
            return e.a();
        }
        try {
            return e.b((Integer) this.f31543a.get(str));
        } catch (ClassCastException e10) {
            f31542b.b("Metadata key %s contains type other than int: %s", str, e10.getMessage());
            return e.a();
        }
    }

    public boolean a(String str) {
        return str != null && this.f31543a.containsKey(str);
    }

    public e b(String str) {
        if (!a(str)) {
            return e.a();
        }
        try {
            return e.b((Boolean) this.f31543a.get(str));
        } catch (ClassCastException e10) {
            f31542b.b("Metadata key %s contains type other than boolean: %s", str, e10.getMessage());
            return e.a();
        }
    }

    public e c(String str) {
        if (!a(str)) {
            return e.a();
        }
        Object obj = this.f31543a.get(str);
        if (obj == null) {
            return e.a();
        }
        if (obj instanceof Float) {
            return e.e(Double.valueOf(((Float) obj).doubleValue()));
        }
        if (obj instanceof Double) {
            return e.e((Double) obj);
        }
        f31542b.b("Metadata key %s contains type other than double: %s", str);
        return e.a();
    }

    public e e(String str) {
        e eVarD = d(str);
        return eVarD.d() ? e.e(Long.valueOf(((Integer) eVarD.c()).intValue())) : e.a();
    }

    public d(Bundle bundle) {
        this.f31543a = (Bundle) bundle.clone();
    }
}
