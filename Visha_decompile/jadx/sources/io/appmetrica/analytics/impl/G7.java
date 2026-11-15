package io.appmetrica.analytics.impl;

import defpackage.y45;

public final class G7 {
    public final Pa a;
    public String b = "";

    public G7(Pa pa) {
        this.a = pa;
    }

    public final void a(String str, boolean z) {
        if (str != null) {
            if ((str.length() > 0 ? str : null) == null || y45.e(this.b, str)) {
                return;
            }
            this.b = str;
            this.a.a(str, z);
        }
    }
}
