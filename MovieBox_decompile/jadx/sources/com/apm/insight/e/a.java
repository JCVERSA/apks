package com.apm.insight.e;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.apm.insight.e;

public class a {

    private static volatile a f18858a;

    private com.apm.insight.e.a.b f18859b;

    private SQLiteDatabase f18860c;

    private a() {
    }

    public static a a() {
        if (f18858a == null) {
            synchronized (a.class) {
                try {
                    if (f18858a == null) {
                        f18858a = new a();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f18858a;
    }

    private void b() {
        if (this.f18859b == null) {
            a(e.g());
        }
    }

    public final synchronized void a(Context context) {
        try {
            this.f18860c = new b(context).getWritableDatabase();
        } catch (Throwable th2) {
            com.apm.insight.a.b(th2);
        }
        this.f18859b = new com.apm.insight.e.a.b();
    }

    public final synchronized void a(com.apm.insight.d.a aVar) {
        b();
        com.apm.insight.e.a.b bVar = this.f18859b;
        if (bVar != null) {
            bVar.a(this.f18860c, aVar);
        }
    }

    public final synchronized boolean a(String str) {
        b();
        com.apm.insight.e.a.b bVar = this.f18859b;
        if (bVar == null) {
            return false;
        }
        return bVar.a(this.f18860c, str);
    }
}
