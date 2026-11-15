package defpackage;

import android.content.SharedPreferences;
import android.util.Pair;

public final class nmh {
    public final String a;
    public final String b;
    public final String c;
    public final long d;
    public final roh e;

    public nmh(roh rohVar, String str, long j, qlh qlhVar) {
        this.e = rohVar;
        wd8.f("health_monitor");
        wd8.a(j > 0);
        this.a = "health_monitor:start";
        this.b = "health_monitor:count";
        this.c = "health_monitor:value";
        this.d = j;
    }

    public final Pair a() {
        long jAbs;
        this.e.g();
        this.e.g();
        long jC = c();
        if (jC == 0) {
            d();
            jAbs = 0;
        } else {
            jAbs = Math.abs(jC - this.e.a.c().currentTimeMillis());
        }
        long j = this.d;
        if (jAbs < j) {
            return null;
        }
        if (jAbs > j + j) {
            d();
            return null;
        }
        String string = this.e.n().getString(this.c, null);
        long j2 = this.e.n().getLong(this.b, 0L);
        d();
        return (string == null || j2 <= 0) ? roh.x : new Pair(string, Long.valueOf(j2));
    }

    public final void b(String str, long j) {
        this.e.g();
        if (c() == 0) {
            d();
        }
        if (str == null) {
            str = "";
        }
        long j2 = this.e.n().getLong(this.b, 0L);
        if (j2 <= 0) {
            SharedPreferences.Editor editorEdit = this.e.n().edit();
            editorEdit.putString(this.c, str);
            editorEdit.putLong(this.b, 1L);
            editorEdit.apply();
            return;
        }
        long jNextLong = this.e.a.N().t().nextLong();
        long j3 = j2 + 1;
        long j4 = Long.MAX_VALUE / j3;
        SharedPreferences.Editor editorEdit2 = this.e.n().edit();
        if ((Long.MAX_VALUE & jNextLong) < j4) {
            editorEdit2.putString(this.c, str);
        }
        editorEdit2.putLong(this.b, j3);
        editorEdit2.apply();
    }

    public final long c() {
        return this.e.n().getLong(this.a, 0L);
    }

    public final void d() {
        this.e.g();
        long jCurrentTimeMillis = this.e.a.c().currentTimeMillis();
        SharedPreferences.Editor editorEdit = this.e.n().edit();
        editorEdit.remove(this.b);
        editorEdit.remove(this.c);
        editorEdit.putLong(this.a, jCurrentTimeMillis);
        editorEdit.apply();
    }
}
