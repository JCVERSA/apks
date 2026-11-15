package com.mgtv.data.aphone.core.f;

import com.mgtv.data.aphone.core.d.c;

public class a implements c {
    private static volatile a a;
    private c b;

    public static a c() {
        if (a == null) {
            a = new a();
        }
        return a;
    }

    public void a(c cVar) {
        this.b = cVar;
    }

    @Override
    public String b() {
        c cVar = this.b;
        return (cVar == null || cVar.b() == null) ? "" : this.b.b();
    }

    @Override
    public String a() {
        c cVar = this.b;
        return (cVar == null || cVar.a() == null) ? "" : this.b.a();
    }
}
