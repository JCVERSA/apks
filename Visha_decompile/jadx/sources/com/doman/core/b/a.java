package com.doman.core.b;

import android.text.TextUtils;

public final class a {
    static a a;

    public static String a() {
        try {
            com.doman.core.d.b.a();
            com.doman.core.a.f fVar = (com.doman.core.a.f) com.doman.core.d.b.a("INIT_CONFIG_BEAN");
            if (fVar == null) {
                return null;
            }
            String str = fVar.i;
            String str2 = fVar.j;
            String str3 = str + "://" + str2;
            if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                return null;
            }
            return str3;
        } catch (Exception unused) {
            return null;
        }
    }
}
