package defpackage;

import android.content.SharedPreferences;

public final class ikh {
    public final String a;
    public final long b;
    public boolean c;
    public long d;
    public final roh e;

    public ikh(roh rohVar, String str, long j) {
        this.e = rohVar;
        wd8.f(str);
        this.a = str;
        this.b = j;
    }

    public final long a() {
        if (!this.c) {
            this.c = true;
            this.d = this.e.n().getLong(this.a, this.b);
        }
        return this.d;
    }

    public final void b(long j) {
        SharedPreferences.Editor editorEdit = this.e.n().edit();
        editorEdit.putLong(this.a, j);
        editorEdit.apply();
        this.d = j;
    }
}
