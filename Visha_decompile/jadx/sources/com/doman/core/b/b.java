package com.doman.core.b;

import android.content.Context;
import android.text.TextUtils;

public final class b {
    private static b b;
    public Context a;

    private b(Context context) {
        this.a = context;
    }

    public static b a(Context context) {
        if (b == null) {
            b = new b(context);
        }
        return b;
    }

    public final void a(com.doman.core.a.e eVar, String str, String str2) {
        com.doman.core.b.a.b bVar;
        if (com.doman.core.d.f.a()) {
            c cVarA = c.a(this.a);
            try {
                if (TextUtils.isEmpty(eVar.c)) {
                    bVar = new com.doman.core.b.a.b(com.doman.core.b.a.b.l, TextUtils.isEmpty(eVar.e) ? "" : eVar.e, str, str2, eVar);
                } else if ("POST".equals(eVar.c)) {
                    bVar = new com.doman.core.b.a.b(com.doman.core.b.a.b.m, TextUtils.isEmpty(eVar.e) ? "" : eVar.e, str, str2, eVar);
                } else {
                    bVar = new com.doman.core.b.a.b(com.doman.core.b.a.b.l, TextUtils.isEmpty(eVar.e) ? "" : eVar.e, str, str2, eVar);
                }
                cVarA.a.a(bVar);
            } catch (Throwable unused) {
            }
        }
    }

    public final void a(String str, String str2, String str3) {
        if (com.doman.core.d.f.a()) {
            c cVarA = c.a(this.a);
            try {
                cVarA.a.a(new com.doman.core.b.a.a.a(str, str2, str3));
            } catch (Exception unused) {
            }
        }
    }

    public final void a(String str, String str2, String str3, String str4, String str5) {
        if (com.doman.core.d.f.a()) {
            com.doman.core.manager.a.a();
            if (com.doman.core.manager.a.d() == 2) {
                return;
            }
            c.a(this.a).a(str, str2, str3, str4, str5);
        }
    }
}
