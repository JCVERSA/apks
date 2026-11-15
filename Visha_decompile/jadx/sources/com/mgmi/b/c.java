package com.mgmi.b;

import android.content.Context;

public class c {
    private static c b;
    private a a;

    private c() {
    }

    public static c a() {
        if (b == null) {
            synchronized (c.class) {
                try {
                    if (b == null) {
                        b = new c();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return b;
    }

    public void a(Context context, String str) {
        try {
            this.a = a.a(context, str);
        } catch (Exception unused) {
        }
    }

    public void a(String str, String str2) throws Throwable {
        a aVar = this.a;
        if (aVar == null || str == null) {
            return;
        }
        aVar.a(str, str2);
    }

    public String a(String str) {
        a aVar = this.a;
        if (aVar != null && str != null) {
            return aVar.a(str);
        }
        return "";
    }
}
